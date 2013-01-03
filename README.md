## Turn on and off the led on pin 13 on an arduino using a web browser

### Using
- node.js
- Coffescript
- [duino](https://github.com/ecto/duino) note that the latest snapshot might be neccesary, since the version you get with `npm install duino` does not support specifying the regex for finding your arduino. So its probably better to clone the github repo instead.

### Usage
Run `coffee led.coffee` then from your browser, just enter `localhost:1337` in the address field.
- Press the link to turn the led on
- Press it again to turn the led off
