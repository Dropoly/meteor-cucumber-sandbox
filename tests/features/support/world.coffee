module.exports = ->

  @World = class MultiWorld extends Cucumber.World

    constructor: ->
      @zombie = new Cucumber.World.Zombie
      super
