
$( document ).ready(function() {
  console.log( "ready!" );


// When user hits the search-btn

$("#search-btn").on("click", function() {
  //event.preventDefault();

  // Save the book they typed into the book-search input
  var spellSearched = $("#spell-name").val().trim();

  // Make an AJAX get request to our api, including the user's book in the url
  $.get("/api/" + spellSearched, function(data) {

    console.log(data);
    // Call our renderBooks function to add our books to the page
    renderBooks(data);
    console.log("hello");

  });

});



// When user hits the author-search-btn
$("#author-search-btn").on("click", function() {

  // Save the author they typed into the author-search input
  var authorSearched = $("#author-search").val().trim();

  // Make an AJAX get request to our api, including the user's author in the url
  $.get("/api/author/" + authorSearched, function(data) {

    // Log the data to the console
    console.log(data);
    // Call our renderBooks function to add our books to the page
    renderBooks(data);

  });

});



// When user hits the genre-search-btn
$("#description-search-btn").on("click", function() {

  // Save the book they typed into the genre-search input
  var descriptionSearched = $("#description-search").val().trim();

  // Make an AJAX get request to our api, including the user's genre in the url
  $.get("/api/description/" + descriptionSearched, function(data) {

    console.log(data);
    // Call our renderBooks function to add our books to the page
    renderBooks(data);

  });

});

function renderBooks(data) {
  if (data.length !== 0) {

    $("#stats").empty();
    $("#stats").show();

    for (var i = 0; i < data.length; i++) {

      var div = $("<div>");

      div.append("<p>Spell Name:" + data[i].spellName + "</p>");
      div.append("<p>Author: " + data[i].author + "</p>");
      div.append("<p>Description: " + data[i].description + "</p>");
      div.append("<p>Pages: " + data[i].pages + "</p>");
      div.append("<button class='delete' data-id='" + data[i].id + "'>DELETE SPELL</button>");

      $("#stats").append(div);

    }

    $(".delete").click(function() {

      $.ajax({
        method: "DELETE",
        url: "/api/book/" + $(this).attr("data-id")
      })
        // On success, run the following code
        .then(function() {
          console.log("Deleted Successfully!");
        });

      $(this).closest("div").remove();

    });

  }
}
});
