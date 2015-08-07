window.Trello = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  initialize: function() {
    new Trello.Routers.Router({
      boards: new Trello.Collections.Boards(),
      $rootEl: $("#content")
    });
    Backbone.history.start();
  }
};
