$(document).ready(function() {

  $('#create-match').on("click", function(){
    findChecked()
  })
})


function findChecked(){
  var student = $('.form-check-input:checked')[0]
  var teacher = $('.form-check-input:checked')[1]
  debugger;
}
