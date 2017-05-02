<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<div class="contentBox" style="float: left">

	<form action="SearchBlood" name="blood" method="post">

		<div style="clear: both; padding-top: 5px"></div>

		<table>
			<tr>
				<td>
					<div style="width: 280px; float: left;">Enter the blood group
						you are searching for :</div>
				</td>
				<!-- 				<div style="width: 150px; float: left">  -->
				<td><select id="bloodGroup" name="bloodGroup">
						<option value="aplus">A+</option>
						<option value="aminus">A-</option>
						<option value="bplus">B+</option>
						<option value="bminus">B-</option>
						<option value="abplus">AB+</option>
						<option value="abminus">AB-</option>
						<option value="oplus">O+</option>
						<option value="ominus">O-</option>
				</select></td>

				<!-- 			</div> -->
		</table>
		<br> <br>
		<center>
			<input id="enterValue" type="submit" value="Submit" />
		</center>
	</form>
</div>