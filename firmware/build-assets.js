const fs = require('fs');
const path = require('path');

function toBitmap(str) {
  const lines = str.split('\n');
  let bitmap = [];
  const firstLine = lines[0].replace(/[\r\n]*$/g, '');
  let width = Math.round(firstLine.length / 8);
  let idx = 0;
  for (let line of lines) {
    for (let i = 0; i < width; i++) {
      let byte = 0;
      for (let bit = 0; bit < 8; bit++) {
        if (line[i * 8 + bit] === ' ') {
          byte |= 1 << (7 - bit);
        }
      }
      bitmap[idx++] = byte;
    }
  }
  return {
    bitmap,
    width: firstLine.length,
    height: lines.length,
  };
}

function pad(bitmap) {
  while (bitmap.length % 4) {
    bitmap = [].concat(bitmap, [0]);
  }
  return bitmap;
}

function encode(bitmap) {
  return new Buffer(new Uint8Array(bitmap)).toString('base64');
}

let outputFile = fs.openSync(path.resolve('dist', 'bitmaps.js'), 'w');
fs.writeSync(outputFile, `
  // This file is auto-generated by built-assets.js, do not edit!

  let flash = require('Flash');
  let addr = flash.getFree()[0].addr;
  const pageSize = flash.getPage(addr).length;
  addr += pageSize;
  flash.erasePage(addr);
`.trim().replace(/\n  /g, '\n') + '\n');

let assetsOutputFile = fs.openSync('src/assets.js', 'w');
fs.writeSync(assetsOutputFile, `
  // This file is auto-generated by built-assets.js, do not edit!
  const base = 389120;

  module.exports = {    
`.trim().replace(/\n  /g, '\n') + '\n')

let flashOffset = 0;
for (let fileName of fs.readdirSync('assets')) {
  if (path.extname(fileName).toLowerCase() === '.txt') {
    const assetName = path.parse(fileName).name;
    const fullPath = path.resolve('assets', fileName);
    const bitmapData = fs.readFileSync(fullPath).toString();
    const image = toBitmap(bitmapData);
    const paddedBitmap = pad(image.bitmap);
    const encoded = encode(paddedBitmap);
    fs.writeSync(outputFile,
      `flash.write(atob('${encoded}'), addr+${flashOffset});\n`);
    fs.writeSync(assetsOutputFile,
      `  ${assetName}: E.memoryArea(base+${flashOffset}, ${image.bitmap.length}), // ${image.width}x${image.height}\n`);
    flashOffset += paddedBitmap.length;
  }
}
fs.writeSync(outputFile, `// end offset: ${flashOffset}\n`);
fs.writeSync(assetsOutputFile, `}\n`);