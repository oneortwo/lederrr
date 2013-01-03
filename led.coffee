http = require 'http'
arduino = require 'duino'
url = require 'url'

board = new arduino.Board({
  debug: true
  device: "USB"
})

led = new arduino.Led({
  board: board,
  pin: 13
})

server = http.createServer (req, res) ->
  query = url.parse(req.url, true).query
  if query.led is 'on'
    led.on()
    res.end '<a href=\"?led=off\">turn off led</a>\n'
  else 
    led.off()
    res.end '<a href=\"?led=on\">turn on led</a>\n'
  res.writeHead 200, {'Content-Type': 'text/plain'}
  
server.listen 1337
