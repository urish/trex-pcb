/**
 * Real Life Lonely T-Rex Game Firmware
 * 
 * Copyright (C) 2017, 2018, 2019 Uri Shaked
 */

MOTOR_DIR = D0;
MOTOR_STEP = D1;
MOTOR_ENA = D2;
HALL_SENSOR_PIN = D23;
DFPLAYER_PIN = D30;

SOUND_JUMP = 1;
SOUND_LEVELUP = 2;
SOUND_GAMEOVER = 3;

DEFAULT_SPEED = 8000;

const assets = require('./assets');
const button = require('./button');
const clock = require('./clock');
const display = require('./display');
const highscore = require('./highscore');
const jump = require('./jump');
const rtcDate = require('./rtcDate');
const sound = require('./sound');

let playing = false;
let startTime = null;
let jumping = false;
let goingDown = false;
let pendingJump = false;
let gameOverTimer = null;
let score = 0;
let gameIndex = 0;
let gameDuration = 0;

let currentSpeed = 0;
function stopMotors() {
  currentSpeed = 0;
  digitalWrite(MOTOR_ENA, 0);
  digitalWrite(MOTOR_STEP, 0);
}

function startMotors() {
  currentSpeed = 2000;
  setSpeed(DEFAULT_SPEED);
  digitalWrite(MOTOR_ENA, 1);
}

let speedTimer = null;
function setSpeed(speed) {
  const delta = 50;
  function removeTimer() {
    try {
      clearInterval(speedTimer);      
    } catch (e) {
    }
    speedTimer = null;
  }
  if (speedTimer) {
    removeTimer();
  }
  speedTimer = setInterval(() => {
    if (currentSpeed > speed) {
      currentSpeed = Math.max(speed, currentSpeed - delta);
    } else {
      currentSpeed = Math.min(speed, currentSpeed + delta);
    }
    analogWrite(MOTOR_STEP, 0.5, { freq: currentSpeed, soft: true });
    if (currentSpeed === speed) {
      removeTimer();
    }
  }, 10);
}

let sensorWatcher = null;
function startSensor() {
  if (sensorWatcher == null) {
    sensorWatcher = setWatch(onCactus, HALL_SENSOR_PIN, { edge: 'rising', repeat: true });
  }
}

function stopSensor() {
  if (sensorWatcher != null) {
    clearWatch(sensorWatcher);
    sensorWatcher = null;
  }
}

function displayString(s, x, y, charWidth, charHeight, spacing, prefix) {
  s.split('').forEach((c, i) =>
    display.writeChar(assets[(prefix || '') + c], charWidth, charHeight, y - i * (charHeight + spacing), x));
}

function displayScore() {
  displayString(score.toString(), 24, 220, 48, 38, 10);
  renderHighScore();
  return display.displayFrame();
}

function renderHighScore() {
  displayString('HI', 88, 240, 24, 21, 9);
  displayString(highscore.get().toString(), 88, 150, 24, 21, 9, 's');
}

function displayGameOver() {
  display.fillMemory(0xff);
  displayString(score.toString(), 24, 220, 48, 38, 10);
  displayString('GAME', 88, 252, 24, 21, 9);
  displayString('OVER', 88, 116, 24, 21, 9);
  return display.displayFrame();
}

function displayGameLogo() {
  display.fillMemory(0xff);
  display.writeChar(assets.trex, 40, 35, 100, 32);
  display.writeChar(assets.trex, 40, 35, 40, 64);
  renderHighScore();
  return display.displayFrame().then(() => {
    setTimeout(() => {
      if (!playing) {
        clock.start();
      }
    }, 4000);
  });
}

function doJump() {
  if (jumping) {
    if (goingDown) {
      pendingJump = true;
    }
    return;
  }
  sound.playSound(SOUND_JUMP, 30);
  jumping = true;
  jump.jump();
  setTimeout(() => {
    goingDown = true;
    jump.goDown().then(() => {
      jumping = false;
      goingDown = false;
      if (pendingJump) {
        setTimeout(doJump, 10);
        pendingJump = false;
      }
    });
  }, 1500);
}

function startGame() {
  clock.stop();
  jump.goDown()
  startMotors();
  if (gameOverTimer) {
    clearInterval(gameOverTimer);
    gameOverTimer = null;
  }
  display.registerUpdate(() => {
    display.clsw().then(() => {
      display.registerUpdate(displayScore);
      startSensor();
    });  
  });
  score = 0;
  playing = true;
  jumping = false;
  goingDown = false;
  pendingJump = false;
  startTime = getTime();
  lastCactusTime = 0;
  gameIndex++;
}

function endGame() {
  playing = false;
  gameDuration = getTime() - startTime;
  stopSensor();
  stopMotors();
  clock.start();
}

function onClick() {
  if (playing) {
    doJump();
  } else {
    startGame();
  }
}

let lastCactusTime = getTime();
function onCactus(e) {
  if (startTime && (e.time - startTime) < 0.1) {
    return;
  }
  if (jumping) {
    if (e.time - lastCactusTime > 0.1) {
      score++;
      if (score % 10 === 0) {
        sound.playSound(SOUND_LEVELUP);
      }
      highscore.update(score);
      display.registerUpdate(displayScore);
      lastCactusTime = e.time;
    }
  } else if (playing) {
    endGame();
    sound.playSound(SOUND_GAMEOVER, 30);
    display.registerUpdate(displayGameOver);
    gameOverTimer = setTimeout(() => {
      jump.jump();
      display.registerUpdate(displayGameLogo);
      gameOverTimer = null;
    }, 3000);
  }
}

function onInit() {
  E.setTimeZone(3);
  gameIndex = 0;

  // Read current time from RTC
  try {
    I2C1.setup({ scl: D24, sda: D25 });
    rtcDate.updateSystemClock(I2C1);
  } catch (e) {
    // We may get here if no RTC module is connected; continue anyway
  }

  // Serial for DFPlayer Mini
  sound.init(DFPLAYER_PIN);
  setTimeout(() => sound.playSound(SOUND_LEVELUP, 16), 2000);

  // Set up motor
  stopMotors();
  setSpeed(DEFAULT_SPEED);
  digitalWrite(MOTOR_DIR, 1);

  // Button
  button.init(onClick);
  jump.init();

  highscore.init();

  // Display
  display.start();
  display.initModule(display.LUT_PARTIAL_UPDATE)
    .then(() => display.clsw())
    .then(displayGameLogo);
}

global.onInit = onInit;
