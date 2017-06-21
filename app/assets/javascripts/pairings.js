$(document).ready(function() {

  $('#create-match').on("click", function(){
    findChecked()
  })
})


function findChecked(){
  var student = $('.form-check-input:checked')[0]
  var teacher = $('.form-check-input:checked')[1]
  var object = {student, teacher}

  axios.post('/admin/pairing', {student: student.id, teacher: teacher.id})
  .then(function (response) {
    console.log(response);
  })
  .catch(function (error) {
    console.log(error);
  })
}
