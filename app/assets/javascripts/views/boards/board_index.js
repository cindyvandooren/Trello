Trello.Views.BoardIndex = Backbone.CompositeView.extend({
  template: JST["boards/index"],

  initialize: function () {
    this.listenTo(this.collection, "sync", this.render);
    this.listenTo(this.collection, "add", this.addBoardSubView);
    this.collection.each(this.addBoardSubView.bind(this));
  },

  render: function () {
    var renderedContent = this.template({boards: this.collection});
    this.$el.html(renderedContent);
    this.attachSubviews();
    return this;
  },

  addBoardSubView: function (board) {
    var subview = new Trello.Views.BoardItem({ model: board });
    this.addSubview('.boards-index', subview);
  }
});
