$(document).ready(function() {
  $('tbody').on("blur", "#contacted", function(){
    var contacted = this.innerText
    axios.post('/contacted', {notes: contacted, user_id: this.className });
  })

  $('#all > div > table > tbody > tr > td').change(function(){
    debugger
    var temperature = $(this).find('option:selected').text()
    var user =  this.id
    axios.post('/admin/temperatures/', {temp: temperature, user_id: user} )
  })
})
