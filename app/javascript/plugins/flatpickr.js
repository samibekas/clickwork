import flatpickr from "flatpickr"
import "flatpickr/dist/themes/airbnb.css" // Note this is important!

// $("#btn-submit-date").disabled = true;
$("#btn-submit-date").attr("disabled", true);

flatpickr(".datepicker", {
    mode: "multiple",
    dateFormat: "Y-m-d",
    "locale": {
        "firstDayOfWeek": 1 // start week on Monday
    },
    minDate: new Date().fp_incr(1),
    onChange: [
        function(selectedDates, dateStr, instance){
            //...
            hidebtn();
        },
        function(selectedDates, dateStr, instance){
            //...
        }
    ],
})

function hidebtn () {
$("#btn-submit-date").attr("disabled", false);
}

import rangePlugin from "flatpickr/dist/plugins/rangePlugin"
