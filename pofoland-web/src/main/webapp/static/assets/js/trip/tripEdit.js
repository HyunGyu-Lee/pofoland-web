var tripForm;

// document ready
$(function () {
    tripForm = $("#tripRequest");
    
    tripForm.find("#tripImage").on("change", commonPreviewImage);
});