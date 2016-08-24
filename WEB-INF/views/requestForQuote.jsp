<script src="<%=request.getContextPath()%>/resources/js/bootstrap-datepicker.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/timepicker.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/requestForQuote.js"> </script>

<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/css/datepicker.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/css/timepicker.css">


<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
    	<div class="modal-content">
			<div class="modal-header">
				<div style="display:none" class="alert alert-success alert-dismissible" role="alert" id="quote-request-success">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					    <span aria-hidden="true">&times;</span>
					</button>
					Quotation request submitted successfully <br><br>
				</div>
				<div style="display:none" class="alert alert-danger" id="quote-request-failure">Oops! 
					Something went wrong. Please retry later .<br><br><button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
				        	
				<h4 class="modal-title" id="myModalLabel">Get Free Quotation for 
					<label id="artistName"></label>
				</h4>
			</div>
			<div class="modal-body">
				<div id="modalFormContent">
			      	<sf:form commandName="artistQuoteModel">
						<div>
							<input type="hidden" id="quote-artist-id" name="artistId">
							<h4 align="left">Name*</h4>
							<input id="requestorName" class=" form-control input-sm"
												name="requestorName" required type="text" placeholder="Name">
											<br />
							<h4 align="left">Email*</h4>
							<input id="requestorEmail" class=" form-control input-sm"
												name="requestorEmail" required type="text"
												placeholder="abc@mail.com"> <br />
							<h4 align="left">Contact Number*</h4>
							<input id="requestorPhone" class=" form-control input-sm"
												name="requestorPhone" required type="text"
												placeholder="Phone Number"> <br />
				
							<h4 align="left">Event Location*</h4>
							<input id="eventLocation" class=" form-control input-sm"
												name="eventLocation" required type="text" placeholder="Location">
							<br />
							
							<h4 align="left">Event Date*</h4>
							  
                <input  type="text" class=" form-control input-sm" placeholder="Event Date"  id="eventDate">
           
							
							<br />
							
							<h4 align="left">Event Time*</h4>
							 <input  type="text" class=" form-control input-sm" placeholder="Event Time"  id="eventTime">
							<br />
				
						</div>
										
			      
			      	</sf:form>
				</div>
      		</div>			
      		<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
				<button id="requestQuote" type="button" class="btn btn-primary">Submit Request</button>
			</div>
    	</div>
  	</div>
  	<input id="context-path" type="hidden" value="<%=request.getContextPath()%>">					
</div>
