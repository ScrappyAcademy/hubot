# Description:
#   Because let's be honest, this was your reaction the first time too
#
# Dependencies:
#   None
#
# Configuration:
#   Needs Redis
#
# Commands:
#   Talk to yourself when in the chat room alone
#
# Author:
#   cupakromer

Util = require "util"

module.exports = (robot) ->
  # BUG: This isn't working as it is not picking up timeout leave messages
  # Still investigating this. For now turning the feature off.
  #robot.brain.data.active = robot.brain.data.active or [ ]
  robot.brain.data.active = [ ]

  userIsAlone = ->
    1 == robot.brain.data.active.length

  # Register users when they arrive
  robot.enter (response) ->
  #robot.brain.data.active.push(response.message.user.id)

  # Remove users when they leave
  robot.leave (response) ->
    robot.brain.data.active = robot.brain.data.active.filter (id) ->
      response.message.user.id != id

  robot.hear /./i, (msg) ->
    if userIsAlone() and 1 == Math.floor(Math.random() * 2)
      msg.play 'crickets'

  robot.respond /show (who('s| is) )?active/i, (msg) ->
    msg.send Util.inspect(robot.brain.data.active, false)
