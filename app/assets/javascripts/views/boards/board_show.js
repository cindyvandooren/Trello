Trello.Views.BoardShow = Backbone.CompositeView.extend({
  template: JST["boards/show"],

  render: function () {
    var renderedContent = this.template({board: this.model});
    this.$el.html(renderedContent);
    return this;
  }
});
