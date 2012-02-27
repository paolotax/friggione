jQuery ->
  $(".alert-message").alert()
  $(".tabs").button()
  $(".carousel").carousel()
  $(".collapse").collapse()
  $(".dropdown-toggle").dropdown()
  $(".modal").modal()
  $("a[rel=popover]").popover()
  $(".navbar").scrollspy()
  $(".tab").tab "show"
  $(".tooltip").tooltip()
  $(".typeahead").typeahead()
  $("a[rel=tooltip]").tooltip()

  # window.nestedFormEvents = new NestedFormEvents();
  # $('form a.add_nested_fields').live('click', nestedFormEvents.addFields);
  # $('form a.remove_nested_fields').live('click', nestedFormEvents.removeFields);