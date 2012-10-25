# Description:
#   Feeling depressed?
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot cheer me up - A little pick me up
#
# Author:
#   carllerche

module.exports = (robot) ->
  robot.respond /cheer me up/i, (msg) ->
    aww msg

  robot.hear /i( am|'m) emo/i, (msg) ->
    msg.send "Let me cheer you up."
    aww msg

aww = (msg) ->
  msg
    .http('http://imgur.com/r/aww.json')
      .get() (err, res, body) ->
        images = JSON.parse(body)
        images = images.data
        if images.length > 0
          image  = msg.random images
          msg.send "http://i.imgur.com/#{image.hash}#{image.ext}"
        else
          msg.send "I'm sorry, I couldn't find anything to cheer you up."
