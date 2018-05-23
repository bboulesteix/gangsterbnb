function autocomplete() {
  document.addEventListener("DOMContentLoaded", function() {
    var hideoutAddress = document.getElementById('hideout_address');

    if (hideoutAddress) {
      var autocomplete = new google.maps.places.Autocomplete(hideoutAddress, { types: [ 'geocode' ] });
      google.maps.event.addDomListener(hideoutAddress, 'keydown', function(e) {
        if (e.key === "Enter") {
          e.preventDefault(); // Do not submit the form on Enter.
        }
      });
    }
  });
}

export { autocomplete };
