function onPlaceChanged() {
  const place = this.getPlace();
  const components = getAddressComponents(place);

  const officeAddress = document.getElementById('office_address');
  officeAddress.blur();
  officeAddress.value = components.address;

  document.getElementById('office_zipcode').value = components.zipcode;
  document.getElementById('office_city').value = components.city;
  document.getElementById('office_country').value = components.country;
}

function getAddressComponents(place) {
  // If you want lat/lng, you can look at:
  // - place.geometry.location.lat()
  // - place.geometry.location.lng()

  if (window.console && typeof console.log === "function") {
    console.log(place);
  }

  // const street_number = null;
  // const route = null;
  let zipcode = null;
  let city = null;
  let country = null;
  for (let i in place.address_components) {
    const component = place.address_components[i];
    for (let j in component.types) {
      let type = component.types[j];
      if (type === 'postal_code') {
        zipcode = component.long_name;
      } else if (type === 'locality') {
        city = component.long_name;
      } else if (type === 'postal_town' && city === null) {
        city = component.long_name;
      } else if (type === 'country') {
        country = component.short_name;
      }
    }
  }

  return {
    address: place.formatted_address,
    zipcode: zipcode,
    city: city,
    country: country
  };
}

function autocomplete() {
  document.addEventListener("DOMContentLoaded", function() {
    const officeAddress = document.getElementById('office_address');

    if (officeAddress) {
      const autocomplete = new google.maps.places.Autocomplete(officeAddress, { types: ['geocode'] });
      google.maps.event.addListener(autocomplete, 'place_changed', onPlaceChanged);
      google.maps.event.addDomListener(officeAddress, 'keydown', function(e) {
        if (e.key === "Enter") {
          e.preventDefault(); // Do not submit the form on Enter.
        }
      });
    }
  });
}

// function autocomplete() {
//   document.addEventListener("DOMContentLoaded", function() {
//     const officeAddress = document.getElementById('office_address');

//     if (officeAddress) {
//       const autocomplete = new google.maps.places.Autocomplete(officeAddress, { types: [ 'geocode' ] });
//       google.maps.event.addDomListener(officeAddress, 'keydown', function(e) {
//         if (e.key === "Enter") {
//           e.preventDefault(); // Do not submit the form on Enter.
//         }
//       });
//     }
//   });
// }

export { autocomplete };
