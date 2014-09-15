chai = require 'chai'
sinon = require 'sinon'
chai.use require 'sinon-chai'

expect = chai.expect

describe 'hubot-flubr', ->

  PASS = 'build passed'
  FAIL = 'build failed'

  beforeEach ->
    process.env.HUBOT_FLUBR_URL = 'http://example.com'
    process.env.HUBOT_FLUBR_PASS = PASS
    process.env.HUBOT_FLUBR_FAIL = FAIL
    @robot =
      respond: sinon.spy()
      hear: sinon.spy()
    @msg =
      send: sinon.spy()
      random: sinon.spy()
    @flubr_module = require('../src/flubr')(@robot)

  it 'registers a hear listener', ->
    expect(@robot.hear).to.have.been.calledWith(new RegExp PASS)

  it 'registers a hear listener', ->
    expect(@robot.hear).to.have.been.calledWith(new RegExp FAIL)
