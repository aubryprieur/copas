// Application JavaScript
$(document).ready(function(){
  /**
   * Navbar animation object
   */
  var myNavBar = {
    flagAdd: true,
    elements: [],

    init: function (elements) {
      this.elements = elements;
    },

    add: function() {
      if(this.flagAdd) {
        for(var i=0; i < this.elements.length; i++) {
          var elem = document.getElementById(this.elements[i]);
          if(elem) elem.className += " fixed-theme";
        }
        this.flagAdd = false;
      }
    },

    remove: function() {
      for(var i=0; i < this.elements.length; i++) {
        var elem = document.getElementById(this.elements[i]);
        if(elem) {
          elem.className = elem.className.replace(/(?:^|\s)fixed-theme(?!\S)/g, '');
        }
      }
      this.flagAdd = true;
    }
  };

  // Init navbar
  myNavBar.init(["header", "header-container", "brand"]);

  // Scroll management
  function offSetManager(){
    var yOffset = 0;
    var currYOffSet = window.pageYOffset;

    if(yOffset < currYOffSet) {
      myNavBar.add();
    } else if(currYOffSet == yOffset){
      myNavBar.remove();
    }
  }

  window.onscroll = function(e) {
    offSetManager();
  }

  offSetManager();

  // Smooth scrolling
  $("a").on('click', function(event) {
    if (this.hash !== "") {
      event.preventDefault();
      var hash = this.hash;

      $('html, body').animate({
        scrollTop: $(hash).offset().top
      }, 800, function(){
        window.location.hash = hash;
      });
    }
  });

  // Formation accordions
  $('.clk').on('click', function(){
    $(this).find('i').toggleClass('fa-chevron-right fa-chevron-down');
  });
});
