Events = require 'backbone-events-standalone'

class Mediator

    attributes: {}

    constructor: () ->

    set: (key, data) ->
        @attributes[key] = data

    get: (key) ->
        @attributes[key]

Events.mixin Mediator.prototype

mediator = new Mediator
mediator.Mediator = Mediator

module.exports = mediator
