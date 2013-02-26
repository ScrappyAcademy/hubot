# Description:
#   Whenever someone posts a link to the emoji-cheat-sheet website
#   the old 8-bit game secret sound will play.
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   emoji-cheat-sheet.com
#
# Author:
#   cupakromer

module.exports = (robot) ->
  robot.hear /emoji-cheat-sheet\.com/i, (msg) ->
    msg.play 'secret'
