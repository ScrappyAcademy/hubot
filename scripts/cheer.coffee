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
  robot.hear /^(\w+) needs some "?cheer(\w*) .*up/i, (msg) ->
    aww msg, "I hope that makes #{msg.match[1]} feel better"

  robot.hear new RegExp("^(#{robot.name} )?cheer (\\w+) up", "i"), (msg) ->
    switch msg.match[2]
      when "us"
        aww msg, "I hope that makes everyone feel better"
      when "me"
        aww msg
      else aww msg, "I hope that makes #{msg.match[2]} feel better"

  robot.hear /i( am|'m) emo/i, (msg) ->
    msg.reply "Let me cheer you up."
    aww msg

  robot.hear /i( am|'m) lonely/i, (msg) ->
    msg.reply "I'm always here for you!"
    aww msg

aww = (msg, after_msg = null) ->
  msg
    .http('http://imgur.com/r/aww.json')
      .get() (err, res, body) ->
        images = JSON.parse(body)
        images = images.data
        if images.length > 0
          image  = msg.random images
          msg.send "http://i.imgur.com/#{image.hash}#{image.ext}"
          msg.send after_msg if after_msg
        else
          msg.send "I'm sorry, I couldn't find anything to cheer you up."
