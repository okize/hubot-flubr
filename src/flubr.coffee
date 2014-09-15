# Description:
#   Hubot script that requests pass/fail images from a Flubr app instance in response to build states
#
# Dependencies:
#   None
#
# Configuration:
#   HUBOT_FLUBR_URL     url of a deployed instance of a Flubr app
#   HUBOT_FLUBR_PASS    regexp, defines PASS image trigger phrase
#   HUBOT_FLUBR_FAIL    regexp, defines FAIL image trigger phrase
#
# Commands:
#   None
#
# Notes
#   Flubr app can be installed from https://github.com/okize/flubr
#
# Author:
#   Morgan Wigmanich <okize123@gmail.com> (https://github.com/okize)

PASS = new RegExp(process.env.HUBOT_FLUBR_PASS, 'g')
FAIL = new RegExp(process.env.HUBOT_FLUBR_FAIL, 'g')

getImage = (msg, type) ->
  msg.http("#{process.env.HUBOT_FLUBR_URL}/api/images/random/#{type}")
    .get() (err, res, body) ->
      msg.send body

module.exports = (robot) ->

  robot.logger.warning 'HUBOT_FLUBR_URL not set' unless process.env.HUBOT_FLUBR_URL?
  robot.logger.warning 'HUBOT_FLUBR_PASS not set' unless process.env.HUBOT_FLUBR_PASS?
  robot.logger.warning 'HUBOT_FLUBR_FAIL not set' unless process.env.HUBOT_FLUBR_FAIL?

  robot.hear PASS, (msg) ->
    getImage msg, 'pass'

  robot.hear FAIL, (msg) ->
    getImage msg, 'fail'
