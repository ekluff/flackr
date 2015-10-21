var ready = function() {
  $('#tag-form').submit(function(event) {
    event.preventDefault();
  });


  $(document).ajaxSuccess(function() {
    alert("ayeeeee");
  });

};

$(document).ready(ready);
$(document).on('page:load', ready);
