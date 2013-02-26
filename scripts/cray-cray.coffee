# Description:
#   Don't be ack'n so cray-cray
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   cray or crazy
#
# Author
#   cupakromer

module.exports = (robot) ->
  robot.hear /\bcraz?y\b/i, (msg) ->
    msg.send "http://i.imgur.com/hycIuKc.jpg"

