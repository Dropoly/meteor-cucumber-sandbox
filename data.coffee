@Data = new Meteor.Collection 'data'

if Meteor.isClient

  Template.data.rendered = -> Meteor.subscribe 'data'
  Template.data.helpers theData: -> Data.find()

if Meteor.isServer then Meteor.publish 'data', -> Data.find()
