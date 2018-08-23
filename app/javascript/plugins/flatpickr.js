import flatpickr from "flatpickr"
import "flatpickr/dist/themes/airbnb.css" // Note this is important!

// $("#btn-submit-date").disabled = true;
$("#btn-submit-date").attr("disabled", true);

const notavailable = JSON.parse(document.getElementById('book-form').dataset.dates);
console.log(notavailable);

flatpickr(".datepicker", {
    mode: "multiple",
    inline: true,
    dateFormat: "Y-m-d",
    "locale": {
        "firstDayOfWeek": 1 // start week on Monday
    },
    minDate: new Date().fp_incr(0),
    onChange: [
        function(selectedDates, dateStr, instance){
            //...
            hidebtn();
        }
    ],
    "disable": [
      function(date) {
        // return true to disable
        // get array of booked day
        // check if date included in array
        // console.log(date.getDate(year, month, days))
        // var day = date.getDate();
        // var monthIndex = date.getMonth();
        // var year = date.getFullYear();
        // console.log(date.getFullYear() + "-" + ("0" + date.getMonth()).slice(-2) + "-" + ("0" + date.getDate()).slice(-2))
        var datestring = date.getFullYear() + "-" + ("0" + (date.getMonth() + 1)).slice(-2) + "-" + ("0" + date.getDate()).slice(-2)
        return notavailable.includes(datestring)
      }
    ]
})

function hidebtn () {
$("#btn-submit-date").attr("disabled", false);
}

function sendDateArrayCurrentMonth () {

}


import rangePlugin from "flatpickr/dist/plugins/rangePlugin"
