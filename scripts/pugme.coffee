# Pugme is the most important thing in your life
#
# hubot pug me - Receive a pug
# hubot pug bomb N - get N pugs

module.exports = (robot) ->

  robot.hear /\bpug me\b/i, (msg) ->
    msg.http("http://pugme.herokuapp.com/random")
      .get() (err, res, body) ->
        msg.send JSON.parse(body).pug

  robot.hear /\bpug bomb((!+)| (\d+))?/i, (msg) ->
    count = msg.match[3] || 5
    count += (msg.match[2] && msg.match[2].length) || 0
    msg.http("http://pugme.herokuapp.com/bomb?count=" + count)
      .get() (err, res, body) ->
        msg.send pug for pug in JSON.parse(body).pugs

  robot.respond /how many pugs are there/i, (msg) ->
    msg.http("http://pugme.herokuapp.com/count")
      .get() (err, res, body) ->
        msg.send "There are #{JSON.parse(body).pug_count} pugs."

