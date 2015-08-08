Trello.Views.ListIndex = Backbone.CompositeView.extend({
  template: JST["lists/index"],

  initialize: function () {
    this.listenTo(this.collection, "add", this.addListSubView);
    this.collection.each(this.addListSubView.bind(this));
  },

  addListSubView: function (list) {
    var subview = new Trello.Views.ListItem({model: list});
    this.addSubview('.list-items', subview);
  },

  render: function () {
    var renderedContent = this.template({lists: this.collection});
    this.$el.html(renderedContent);
    this.attachSubviews();
    return this;
  }
});
