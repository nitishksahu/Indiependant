function closeModal() {
	$("#successModal").hide();
}

 $(document).ready(function () {
                
                $('#eventDate').datepicker({
                    format: "dd/mm/yyyy"
                });  
            
            });
            
$(document).ready(function () {
                
                $('#example1').timepicker({
                    format: 'LT'
                });  
            
            });

$(document).ready(function() {
  
	$('#eventDate').datepicker()
.on('changeDate', function(ev){
 $('#eventDate').datepicker('hide');
 });
	$(document).on("click", ".quotationForm", function () {
	      var artistId = $(this).data('artistid');
	      $("#quote-artist-id").val(artistId);
		  var artistName= $(this).data('artistname');
		  $("#myModal #artistName").html('');
		  $("#myModal #artistName").append(artistName);
		  $("#modalFormContent").show();
		  $("#quote-request-success").hide();
		  $(".modal-backdrop").css('z-index',0);
	});
	
	
	$("#requestQuote").click(function() {
		
		var artistId = $("#quote-artist-id").val();
		var requestorName = $("#requestorName").val();
		var requestorEmail = $("#requestorEmail").val();
		var requestorPhone = $("#requestorPhone").val();
		var eventLocation = $("#eventLocation").val();
		var eventDate = $("#eventDate").datepicker("getDate");
		var eventTime=$("#eventTime").timepicker().selectedTime
		var contextPath = $("#context-path").val();
		$.post(contextPath+"/artist/request-quotation", 
				"artistId="+artistId+"&requestorName="+requestorName+"&requestorEmail="+requestorEmail
					+"&requestorPhone="+requestorPhone+"&eventLocation="+eventLocation+"&eventDate="+eventDate+"&eventTime="+eventTime, 
					function(data) {
					   	if(data.status) {
							$("#quote-request-success").show();
							//$("#modalFormContent").hide();
							
						} else {
							$("#quote-request-failure").show();
							//$("#modalFormContent").hide();
						}
		   			}	
		);
	});
});	