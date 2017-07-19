$(document).ready(function() {

  $('.edit-profile').on("blur", function(){
    var id = $('.nav')[1].id
    var key = this.id;
    var value = this.innerHTML
    var object = {}
    object[key] = value
    axios.put('/users/' + id,  object)
  })

  $('#sel1').on("change", function(){
    var status = $('option:selected')[0].value
    var user =  $('option:selected')[0].id
    axios.put('/users/' + user, {status: status} )
    window.location.href = '/admin/student/' + user;
  })
})
