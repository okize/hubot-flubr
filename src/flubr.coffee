# Description:
#   Hubot script that requests pass/fail images from a Flubr app instance in response to build states
#
# Dependencies:
#   None
#
# Configuration:
#   HUBOT_FLUBR_URL     URL of a Flubr app instance
#
# Commands:
#   None
#
# Notes
#   Flubr app can be installed from https://github.com/okize/flubr
#
# Author:
#   Morgan Wigmanich <okize123@gmail.com> (https://github.com/okize)

getImage = (msg, type) ->
  msg.http("#{process.env.HUBOT_FLUBR_URL}/api/images/random/#{type}")
    .get() (err, res, body) ->
      msg.send body

module.exports = (robot) ->

  robot.hear /Build (PASSED|FAILED)/, (msg) ->

    if msg.match[1] == 'PASSED'
      getImage msg, 'pass'

    if msg.match[1] == 'FAILED'
      getImage msg, 'fail'