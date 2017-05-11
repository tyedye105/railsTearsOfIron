  jQuery.fn.moveByKeys = function () {
    $(this).parent('form').submit();
  };

  $(function(){
    var gameTarget = document.getElementById("keyboard");
      gameTarget.addEventListener("keydown", function (event) {
    if (event.defaultPrevented) {
      return; // Do nothing if the event was already processed
    }

    switch (event.key) {
      case "w":
        $("#north.edit_character").submit();
        break;
      case "s":
      $("#south.edit_character").submit();
        break;
      case "a":
    $("#west.edit_character").submit();
        break;
      case "d":
    $("#east.edit_character").submit();

        break;
      default:
        return; // Quit when this doesn't handle the key event.
    }

    // Cancel the default action to avoid it being handled twice
    event.preventDefault();
  }, true);

  });
