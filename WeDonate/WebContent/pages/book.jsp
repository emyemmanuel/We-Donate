<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<div class="contentBox">

	<script type="text/javascript">
		function validateForm1()
		{
			var book=document.book.bname.value;
			var book=v=book.trim();
			var quantity=document.book.quantity.value;
			var quantity=quantity.trim();
			var contact=document.book.contact.value;
			var contact=contact.trim();
			var uname=document.book.dname.value;
			var uname=uname.trim();
			
			if(book == '')
				{
					document.getElementById('error').innerHTML="Please Enter Book Name";
					return false;
				}
			if(quantity == '')
			{
				document.getElementById('error').innerHTML="Please Enter Quantity";
				return false;
			}
			if(contact == '')
			{
				document.getElementById('error').innerHTML="Please Enter Contact Number";
				return false;
			}
			if(uname == '')
			{
				document.getElementById('error').innerHTML="Please Enter Contact Name";
				return false;
			}
		}
</script>
	<div id="error" align="center"></div>
	<form action="UploadBookInfo" name="book" method="post"
		onSubmit="return validateForm1()">

		<div style="clear: both; padding-top: 5px"></div>
		<div style="width: 200px; float: left;">Book Name</div>
		<div style="width: 150px; float: left">
			<input type="text" name="bname" id="bname">
		</div>
		<div style="clear: both; padding-top: 5px"></div>
		<div style="width: 200px; float: left;">Author Name</div>
		<div style="width: 150px; float: left">
			<input type="text" name="aname" id="aname">
		</div>
		<div style="clear: both; padding-top: 5px"></div>
		<div style="width: 200px; float: left;">Quantity</div>
		<div style="width: 150px; float: left">
			<input type="text" name="quantity" id="quantity">
		</div>
		<div style="clear: both; padding-top: 5px"></div>
		<div style="width: 200px; float: left;">Donator Name</div>
		<div style="width: 150px; float: left">
			<input type="text" name="dname" id="dname">
		</div>
		<div style="clear: both; padding-top: 5px"></div>
		<div style="width: 200px; float: left;">Contact Number</div>
		<div style="width: 150px; float: left">
			<input type="text" name="contact" id="contact">
		</div>
		<br> <br> <br>
		<center>
			<input id="enterValue" type="submit" value="Submit" />
		</center>

	</form>
</div>