chai = require 'chai'
sinon = require 'sinon'
chai.use require 'sinon-chai'

expect = chai.expect

describe 'Flubr:', ->
  flubr_module = require('../src/flubr')

  beforeEach ->
    @robot =
      respond: sinon.spy()
      hear: sinon.spy()
    @msg =
      send: sinon.spy()
      random: sinon.spy()
    @flubr_module = flubr_module(@robot)

  describe 'summon a business cat', ->

    it 'should register a hear listener', ->
      expect(@robot.hear).to.have.been.calledWith(/we should create a strategic partnership/)
