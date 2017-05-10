  $(function(){
    var gameTarget = document.getElementById("keyboard");
    console.log(gameTarget)

      gameTarget.addEventListener("keydown", function (event) {
    if (event.defaultPrevented) {
      return; // Do nothing if the event was already processed
    }

    switch (event.key) {
      case "w":
    alert("something")
        break;
      case "s":
      alert("something")
        break;
      case "a":
    alert("something")
        break;
      case "d":
      alert("something")
        break;
      default:
        return; // Quit when this doesn't handle the key event.
    }

    // Cancel the default action to avoid it being handled twice
    event.preventDefault();
  }, true);

  });
