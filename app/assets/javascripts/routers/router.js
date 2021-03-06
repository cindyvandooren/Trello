Trello.Routers.Router = Backbone.Router.extend({
  initialize: function (options) {
    this.collection = options.boards;
    this.$rootEl = options.$rootEl;
  },

  routes: {
    "" : "index",
    "boards/new" : "new",
    "boards/:id" : "show",
  },

  index: function () {
    this.collection.fetch();
    var indexView = new Trello.Views.BoardIndex({collection: this.collection});
    this._swapView(indexView);
  },

  show: function (id) {
    var board = this.collection.getOrFetch(id);
    var showView = new Trello.Views.BoardShow({model: board});
    this._swapView(showView);
  },

  new: function () {
    var board = new Trello.Models.Board();
    var newView = new Trello.Views.BoardForm({model: board, collection: this.collection});
    this._swapView(newView);
  },

  _swapView: function (view) {
    this._currentView && this._currentView.remove();
    this._currentView = view;
    this.$rootEl.html(view.render().$el);
  }
});
