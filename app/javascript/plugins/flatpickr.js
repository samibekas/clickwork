import flatpickr from "flatpickr"
import "flatpickr/dist/themes/airbnb.css" // Note this is important!


flatpickr(".datepicker", {
    mode: "multiple",
    dateFormat: "Y-m-d"
})


import rangePlugin from "flatpickr/dist/plugins/rangePlugin"
