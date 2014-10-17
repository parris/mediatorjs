mediator = require './mediator'

describe 'Mediator', ->

    beforeEach ->
        @mediator = new mediator.Mediator

    it 'sets values globally', ->
        @mediator.set 'name', 'test'
        @mediator.attributes.name.should.be.eql 'test'

    it 'gets data', ->
        @mediator.set 'name', 'test'
        @mediator.get('name').should.be.eql 'test'

    it 'mixes in events', ->
        @mediator.trigger.should.be.ok
        @mediator.listenTo.should.be.ok

