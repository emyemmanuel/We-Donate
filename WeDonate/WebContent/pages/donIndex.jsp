<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<div class="searchBox">

	<form action="UploadInfo" method="post">
		<div style="width: 250px; float: left;">Full Name</div>
		<div style="width: 150px; float: left">
			<input type="text" name="name" id="name">
		</div>
		<div style="clear: both; padding-top: 5px"></div>
		<div style="width: 250px; float: left;">Username</div>
		<div style="width: 150px; float: left">
			<input type="text" name="uname" id="uname">
		</div>
		<div style="clear: both; padding-top: 5px"></div>
		<div style="width: 250px; float: left;">Password</div>
		<div style="width: 150px; float: left">
			<input type="password" name="password" id="password">
		</div>
		<div style="clear: both; padding-top: 5px"></div>
		<div style="width: 250px; float: left;">Date of Birth</div>
		<div style="width: 150px; float: left">
			<input type="date" name="dob" id="dob">
		</div>
		<div style="clear: both; padding-top: 5px"></div>
		<div style="width: 250px; float: left;">Blood Group</div>
		<div style="width: 150px; float: left">
			<input type="text" name="bgroup" id="bgroup">
		</div>
		<div style="clear: both; padding-top: 5px"></div>
		<div style="width: 250px; float: left;">ID type(SSN/Passport/College ID)</div>
		<div style="width: 150px; float: left">
			<input type="text" name="type" id="type">
		</div>
		<div style="clear: both; padding-top: 5px"></div>
		<div style="width: 250px; float: left;">ID No.</div>
		<div style="width: 150px; float: left">
			<input type="text" name="id" id="id">
		</div>
		<div style="clear: both; padding-top: 5px"></div>
		<div style="width: 250px; float: left;">Email ID</div>
		<div style="width: 150px; float: left">
			<input type="text" name="mail" id="mail">
		</div>
		<div style="clear: both; padding-top: 5px"></div>
		<div style="width: 250px; float: left;">Phone Number</div>
		<div style="width: 150px; float: left">
			<input type="text" name="phone" id="phone">
		</div>
		<div style="clear: both; padding-top: 5px"></div>
		<div style="width: 250px; float: left;">Age</div>
		<div style="width: 150px; float: left">
			<input type="number" name="age" id="age">
		</div>
		<div style="clear: both; padding-top: 5px"></div>
		<div style="width: 250px; float: left;">Gender</div>
		<div style="width: 150px; float: left">
			<input type="text" name="gender" id="gender">
		</div>
		<div style="clear: both; padding-top: 5px"></div>
		<div style="width: 250px; float: left;">Address</div>
		<div style="width: 150px; float: left">
			<input type="text" name="address" id="address">
		</div>
		<div style="clear: both; padding-top: 5px"></div>
		<div style="width: 250px; float: left;">College/Organization
			Name</div>
		<div style="width: 150px; float: left">
			<input type="text" name="orgName" id="orgName">
		</div>

		<br> <br> <br> <center><input id="enterValue" type="submit"
			value="Submit"/></center>

	</form>
</div>


