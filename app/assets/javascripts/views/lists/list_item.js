Trello.Views.ListItem = Backbone.View.extend({
  template: JST["lists/list_item"],

  render: function () {
    var renderedContent = this.template({list: this.model});
    this.$el.html(renderedContent);
    return this;
  }
});
