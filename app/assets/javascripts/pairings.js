$(document).ready(function() {

  $('#create-match').on("click", function(){
    findChecked()
  })
  $('.search-student').on('keyup', function(){
    searchStudentPairing(this)
  })

  $('.search-teacher').on('keyup', function(){
    searchTeacherPairing(this)
  })

})

function searchTeacherPairing(input) {
  var filter = input.value.toUpperCase();
  var search = $(".teacher-pairing")
  for (i = 0; i < search.length; i++) {
    td = search[i]
    if (td) {
      if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
        search[i].parentElement.style.display = "";
      } else {
      search[i].parentElement.style.display = "none";
      }
    }
  }
}

function searchStudentPairing(input) {
  var filter = input.value.toUpperCase();
  var search = $(".student-name-pairing")
  for (i = 0; i < search.length; i++) {
    td = search[i]
    if (td) {
      if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
        search[i].parentElement.style.display = "";
      } else {
      search[i].parentElement.style.display = "none";
      }
    }
  }
}


function findChecked(){
  var student = $('.form-check-input:checked')[0]
  var teacher = $('.form-check-input:checked')[1]
  var object = {student, teacher}

  axios.post('/admin/pairing', {student: student.id, teacher: teacher.id})
  .then(function (response) {
    window.location.href = 'current-pairings';
    console.log(response);
  })
  .catch(function (error) {
    console.log(error);
  })
}
