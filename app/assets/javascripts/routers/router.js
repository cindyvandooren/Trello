Trello.Routers.Router = Backbone.Router.extend({
  initialize: function (options) {
    this.collection = options.boards;
    this.$rootEl = options.$rootEl;
  },

  routes: {
    "" : "index"
  },

  index: function () {
    this.collection.fetch();
    var indexView = new Trello.Views.BoardIndex({collection: this.collection});
    this._swapView(indexView);
  },

  _swapView: function (view) {
    this._currentView && this._currentView.remove();
    this._currentView = view;
    this.$rootEl.html(view.render().$el);
  }
});
