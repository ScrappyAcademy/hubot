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

module.export = (robot) ->
  robot.hear /commit/i, (msg) ->
    msg.send ":shipit:"
