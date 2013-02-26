# Description:
#   Event system related utilities
#
# Commands:
#   hubot fake event <event> - Triggers the <event> event for debugging reasons
#
# Events:
#   debug - {user: <user object to send message to>}

util = require 'util'

module.exports = (robot) ->

  robot.hear /./, (msg) ->
    robot.logger.debug "HEAR: #{util.inspect msg}"

  robot.catchAll (msg) ->
    robot.logger.debug "CATCH: #{util.inspect msg}"
