# Description:
#   Patching the Robot class to allow for easier playing of sounds in Campfire
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
Adapter = require 'hubot/src/adapter'
Robot = require 'hubot/src/robot'

# For actual patch to source will need to add
#Adapter::play = (user, sound) ->   #no-op
#Campfire::play
#Shell::play

Robot.Response::play = (sound) ->
  @robot.adapter.play @message.user, sound

# To be deleted after hubot source is patched
module.exports = (robot) ->
  robot.logger.debug "In Play Patch"
  robot.logger.debug "Play defined? #{robot.adapter.play?}"
  unless robot.adapter.play?
    robot.logger.debug "Bot defined? #{robot.adapter.bot?}"
    robot.logger.debug "Room defined? #{robot.adapter.bot?.Room?}"
    if robot.adapter.bot?.Room?
      robot.logger.info "Adding 'play' Campfire patch."
      robot.adapter.play = (user, sound) ->
        # Campfire adapter object context
        if sound.length > 0
          @bot.Room(user.room).sound sound, (err, data) =>
            # Campfire adapter object context
            @robot.logger.error "Campfire error: #{err}" if err?
            @send user, "/play #{sound}"
    else
      robot.logger.info "Adding 'play' standard patch"
      robot.adapter.play = (user, sound) ->
        if sound.length > 0
          @send user, "/play #{sound}"
