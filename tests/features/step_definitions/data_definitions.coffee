module.exports = ->

  @Given /^there is some data$/, (callback) ->
    if Data.find().count() is 0
      Data.insert a: 1, b: 2, c: 3
      Data.insert a: 4, b: 5, c: 6
      Data.insert a: 7, b: 8, c: 9
    callback()

  @When /^I visit the site$/, (callback) ->
    @zombie.home callback

  @Then /^it should load the data$/, (callback) ->
    if Data.find().count() is @zombie.browser.evaluate 'Data.find().count()'
      callback()
    else callback.fail 'it didnt load the data'
