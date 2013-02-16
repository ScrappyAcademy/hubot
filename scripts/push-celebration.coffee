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
  robot.hear (new RegExp("#{robot.name} commit")), (msg) ->
    msg.send robot.name
    msg.send ":shipit:"
