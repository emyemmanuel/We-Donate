<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<script src="js/jquery-1.9.1.js"></script>
<script src="js/jquery-ui.js"></script>
<script src="js/highcharts.js"></script>
<script src="js/exporting.js"></script>
<script src="js/highcharts-3d.js"></script>
<script type="text/javascript">
	function downloadXLS() {

		var tempUrl = location.href;
		var url = tempUrl.replace("searchAction", "DownloadComp");

		document.getElementById("downloadLink").href = url;

	}
</script>
<div id=searchCompBox>
	<form method="GET" id="compSubmit" action="searchAction">
		<div style="width: 100px; float: left;">Month:</div>
		<div style="width: 150px; float: left">
			<select name="month" id="month">
				<option id="all" value="all">All</option>
				<option id="Jan" value="January">January</option>
				<option id="Feb" value="February">February</option>
				<option id="March" value="March">March</option>
				<option id="April" value="April">April</option>
				<option id="May" value="May">May</option>
				<option id="June" value="June">June</option>
				<option id="July" value="July">July</option>
				<option id="August" value="August">August</option>
				<option id="September" value="September">September</option>
				<option id="September" value="October">October</option>
				<option id="November" value="November">November</option>
				<option id="December" value="December">December</option>
			</select>
		</div>
		<div style="width: 100px; float: left">Region:</div>
		<div style="width: 150px; float: left">
			<select multiple="true" name="region" id="region">
				<option id="allregion" value="all" selected>All</option>
				<option id="Jan" value="EMEA">EMEA</option>
				<option id="Feb" value="AMERICA">AMERICA</option>
				<option id="March" value="APJ">APJ</option>
			</select>
		</div>
		<div style="width: 100px; float: left">Product:</div>
		<div style="width: 150px; float: left">
			<select multiple="true" name="product" id="product">
				<option id="all" value="all" selected>All</option>
				<option id="DSA" value="DSA">DSA</option>
				<option id="AquaIon" value="AquaIon">Aqua Ion</option>
				<option id="Alta" value="alta">Alta</option>
				<option id="DSD" value="DSD">DSD</option>
				<option id="RMA" value="RMA">RMA</option>
				<option id="AquaMobile" value="AquaMobile">Aqua Mobile</option>
				<option id="AquaFEO" value="AquaFEO">Aqua FEO</option>
			</select>
		</div>
		<div style="width: 100px; float: left">Competitor:</div>
		<div style="width: 150px; float: left">

			<select multiple="true" name="competitor" id="competitor">
				<option id="all" value="all" selected>All</option>
				<option id="Cloudfront" value="Cloudfront">Cloudfront</option>
				<option id="Cloudflare" value="Cloudflare">Cloudflare</option>
				<option id="Limelight" value="Limelight">Limelight</option>
				<option id="Edgecast" value="Edgecast">Edgecast</option>
				<option id="CDNetwork" value="CDNetwork">CDNetwork</option>
				<option id="Level3" value="Level3">Level3</option>
				<option id="Instart" value="Instart">Instart</option>
				<option id="maxCDN" value="maxCDN">Max CDN</option>
				<option id="china" value="china">China Cache</option>
				<option id="ipercast" value="ipercast">Ipercast</option>
				<option id="telecom" value="telecom">Telecom Italia</option>
				<option id="apica" value="apica">Apica</option>
				<option id="Incapsula" value="Incapsula">Incapsula</option>
				<option id="fastly" value="fastly">Fastly</option>
				<option id="chinanet" value="chinanet">ChinaNetCom</option>
				<option id="Accelia" value="Accelia">Accelia</option>
				<option id="Fasterize" value="Fasterize">Fasterize</option>
				<option id="unknown" value="unknown">Unknown</option>
			</select>

		</div>
		<div style="width: 100px; float: left">Head to Head:</div>
		<div style="width: 150px; float: left">
			<select name="head" id="head">
				<option id="all" value="all">ALL</option>
				<option id="yes" value="yes">YES</option>
				<option id="no" value="no">NO</option>
			</select>
		</div>
		<input id="search" type="submit" value="Submit" />
	</form>
</div>


<div style="width:30%;float:right;padding-top:10px">
<a href="#" id="downloadLink" onclick="downloadXLS()" target="_blank"><img alt="DownloadComp" src="images/download.jpg" ></a>
</div>
<br><br><br><br>
<div style="clear: both"></div>
<div class="dataTable">
	<div class="tableWidgetNew">
		<div class="tableHeader">Month</div>
		<div class="tableHeader">Region</div>
		<div class="tableHeader">Account</div>
		<div class="tableHeader">Division</div>
		<div class="tableHeader">Product</div>
		<div class="tableHeader">Competitor</div>
		<div class="tableHeader">Testing Tool</div>
		<div class="tableHeader">Head To Head</div>
		<div class="tableHeader">Origin</div>
		<div class="tableHeader">In-Country Performance</div>
		<div class="tableHeader">Global Performance</div>
		<div class="tableHeader">Cost Issue?</div>

		<div class="row" id="rowstart">
			<s:iterator value="listComp">

				<div class="tablerow">
					<div class="tablerowone">
						<s:property value="month" />
						
					</div>
					<div class="tablerowone">
						<s:property value="region" />
					</div>
					<div class="tablerowone">
						<s:property value="account" />
					</div>
					<div class="tablerowone">
						<s:property value="divison" />
					</div>
					<div class="tablerowone">
						<s:property value="product" />
					</div>
					<div class="tablerowone">
						<s:property value="competitor" />
					</div>
					<div class="tablerowone">
						<s:property value="testingTool" />
					</div>
					<div class="tablerowone">
						<s:property value="head" />
					</div>
					<div class="tablerowone">
						<s:property value="origin" />
					</div>
					<div class="tablerowone">
						<s:property value="inregion" />
					</div>
					<div class="tablerowone">
						<s:property value="global" />
					</div>
					<div class="tablerowone">
						<s:property value="cost" />
					</div>
		
				</div>

			</s:iterator>
		</div>
	</div>
</div>

<br><br><br><br>
<div style="clear: both; bottom: 0px; left: 30%; position: relative">
	This dashboard is maintained by PET. Please write to <a
		href="mailto:perf-eval-inside@akamai.com"> perf-eval-inside</a> for
	any queries
</div>