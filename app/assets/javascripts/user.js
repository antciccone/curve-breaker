$(document).ready(function() {

  $('.edit-profile').on("blur", function(){
    var id = $('.nav')[1].id
    var key = this.id;
    var value = this.innerHTML
    var object = {}
    object[key] = value
    axios.put('/users/' + id,  object)
  })
})
