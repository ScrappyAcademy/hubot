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

module.exports = (robot) ->
  robot.brain.active = robot.brain.active or [ ]

  userIsAlone = ->
    1 == robot.brain.active.length

  # Register users when they arrive
  robot.enter (response) ->
    robot.brain.active.push(response.message.user.id)

  # Remove users when they leave
  robot.leave (response) ->
    robot.brain.active = robot.brain.active.filter (id) ->
      response.message.user.id != id

  robot.hear /./i, (msg) ->
    if userIsAlone() and 1 == Math.floor(Math.random() * 2)
      msg.play 'crickets'
