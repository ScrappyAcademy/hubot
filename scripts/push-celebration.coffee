# Description:
#   Pushing code is cool. So we need to celebrate that.
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   None
#
# Author:
#   cupakromer

module.exports = (robot) ->
  robot.hear /^\[\w+(\/\w+)?\].*https?:\/\/git\S*commit/i, (msg) ->
    msg.send ":shipit:"
    msg.send "/play pushit"
