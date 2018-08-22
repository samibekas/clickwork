function autocomplete() {
  document.addEventListener("DOMContentLoaded", function() {
    const officeAddress = document.getElementById('office_address');

    if (officeAddress) {
      const autocomplete = new google.maps.places.Autocomplete(officeAddress, { types: [ 'geocode' ] });
      google.maps.event.addDomListener(officeAddress, 'keydown', function(e) {
        if (e.key === "Enter") {
          e.preventDefault(); // Do not submit the form on Enter.
        }
      });
    }
  });
}

export { autocomplete };
