<cfimport prefix="mango" taglib="../../tags/mango">
<cfif thisTag.executionMode EQ "start">
<cfsavecontent variable="qrscripts">
<link rel="stylesheet" type="text/css" href="style.css">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.0/jquery.js"></script>
<script language="javascript" src="jquery.cookie.js"></script>
</cfsavecontent>
<cfhtmlhead text="#qrscripts#">

<!--- 
Links:

Similar form: http://keremerkan.net/qr-code-and-2d-code-generator/
Example types: http://drupal.org/node/463200
Javaloader: http://javaloader.riaforge.org/

Problem with railo version: http://stackoverflow.com/questions/4181065/creating-qr-code-with-coldfusion
Google zxing generator: http://zxing.appspot.com/generator/
Analysis of types: http://matez.de/qr_codes/?show=MEBKM
Guide to the types: http://code.google.com/p/zxing/wiki/BarcodeContents
Guide to data formats: http://www.qr-barcodes.com/data-formats/
--->

	<script type="text/javascript">
		$(document).ready(function(){

			$('.formElems').hide();

				var existingCookie = $.cookie('selectedType');

				if(existingCookie != null){
					$("." +existingCookie).show();
				}

			// listener for QR type
			$("#type").change(function ()

			{
				var selected = $("#type option:selected").val();
				$('.formElems').hide();
				$("." +selected).show();

				var cookieName = 'selectedType';
				var cookieValue = selected;

				// set cookie
				$.cookie(cookieName, cookieValue); 

			});

		});
	</script>

<body>
<h2>Fill in the form to create a QR code</h2>

<p><br></p>
<form method="post" action="<mango:Blog url/>qrcfc/qr.cfm">

<div>

	<!--- color choice --->
	<div class="form-label clear-both">QR Colour</div>
	<div class="form-field">
		<input type="radio" name="color" value="" checked="true"> Black<br>
		<input type="radio" name="color" value="red"> Red<br>
		<input type="radio" name="color" value="purple"> Purple<br>
	</div>
	<br class="clear-both">
	<br class="clear-both">

	<div class="form-label clear-both">QR Dimensions</div>
	<div><input type="text" name="dimensions" size="15" value="200"></div>

	<br class="clear-both">
	<br class="clear-both">

	<div class="form-label">Type</div>
	<div class="form-field"><select name="type" id="type" size="1">
			<option value="0">Select</option>
			<option value="site">Website url</option>
			<option value="bkm">Bookmark a Website</option>
			<option value="call">Make a Phone Call</option>
			<option value="sms">SMS</option>
			<option value="mail">E-Mail</option>
			<option value="vcard">Create a vCard</option>
			<option value="mecard">Create a meCard</option>
			<option value="vevent">Create a vCalendar Event</option>
			<option value="map">Google Maps</option>
			<option value="market">Android Market Search</option>
			<option value="youtube">Youtube URL for iPhone</option>
			<option value="tweet_fetch">Encode Latest Tweet of a User</option>
			<option value="tweet">Tweet on Twitter</option>
			<option value="text">Free Formatted Text</option>
			<option value="wifi_android">Wifi Config - Android only</option>
		</select>
	</div>
</div>
<br class="clear-both">

<!--- site --->
<div class="formElems site">
	<div class="form-label clear-both">Website Url</div>
	<div><input type="text" name="url" size="15"></div>
</div>

<!--- Bookmark a Website --->
<div class="formElems bkm">
	<div class="form-label clear-both">Bookmark title</div>
	<div class="form-field"><input type="text" name="bkmtitle" size="30"></div>

	<div class="form-label clear-both">Bookmark url</div>
	<div class="form-field"><input type="text" name="bkmurl" size="30"></div>

</div>

<!--- Make a Phone Call --->
<div class="formElems call">
	<div class="form-label clear-both">Tel No.</div>
	<div class="form-field"><input type="text" name="tel" size="15"></div>
</div>

<!--- SMS --->
<div class="formElems SMS">

	<div class="form-label clear-both">SMS No.</div>
	<div class="form-field"><input type="text" name="smsNo" size="30"></div>

	<div class="form-label clear-both">SMS Message</div>
	<div class="form-field"><input type="text" name="smsMessage" size="30"></div>

</div>

<!--- E-Mail --->
<div class="formElems mail">
	<div class="form-label clear-both">Email To</div>
	<div class="form-field"><input type="text" name="emailTo" size="30"></div>

	<div class="form-label clear-both">Email Subject</div>
	<div class="form-field"><input type="text" name="emailSubject" size="30"></div>

	<div class="form-label clear-both">Email Body</div>
	<div class="form-field"><input type="text" name="emailBody" size="30"></div>

</div>

<!--- Create a vCard --->
<div class="formElems vcard">

	<div class="form-label clear-both">First name</div>
	<div class="form-field"><input type="text" name="fname" size="15"></div>

	<div class="form-label clear-both">Surname</div>
	<div class="form-field"><input type="text" name="sname" size="15"></div>

	<div class="form-label clear-both">Organisation</div>
	<div class="form-field"><input type="text" name="org" size="20"></div>

	<div class="form-label clear-both">Title</div>
	<div class="form-field"><input type="text" name="title" size="15"></div>

	<div class="form-label clear-both">Email</div>
	<div class="form-field"><input type="text" name="email" size="30"></div>

	<div class="form-label clear-both">Url</div>
	<div class="form-field"><input type="text" name="url" size="30"></div>

	<div class="form-label clear-both">Tel</div>
	<div class="form-field"><input type="text" name="tel" size="15"></div>

</div>

<!--- mecard --->
<div class="formElems mecard">

	<div class="form-label clear-both">First name</div>
	<div class="form-field"><input type="text" name="me_fname" size="15"></div>

	<div class="form-label clear-both">Surname</div>
	<div class="form-field"><input type="text" name="me_sname" size="15"></div>

	<div class="form-label clear-both">Tel work</div>
	<div class="form-field"><input type="text" name="me_telwork" size="15"></div>

	<div class="form-label clear-both">Email</div>
	<div class="form-field"><input type="text" name="me_email" size="30"></div>

	<div class="form-label clear-both">Address</div>
	<div class="form-field"><input type="text" name="me_adr" size="15"> <input type="text" name="me_adr2" size="15"></div>

	<div class="form-label clear-both">Town</div>
	<div class="form-field"><input type="text" name="me_town" size="15"></div>

	<div class="form-label clear-both">County</div>
	<div class="form-field"><input type="text" name="me_county" size="15"></div>

	<div class="form-label clear-both">Company</div>
	<div class="form-field"><input type="text" name="me_company" size="15"></div>

</div>

<!--- Create a vCalendar Event --->
<div class="formElems vevent">

	<div class="form-label clear-both">Event name</div>
	<div class="form-field"><input type="text" name="eventName" size="30"></div>

	<div class="form-label clear-both">Event Start</div>
	<div class="form-field"><input type="text" name="DTStart" size="30" value="">(DD MM YYYY HH:MM:SS)</div>

	<div class="form-label clear-both">Event end</div>
	<div class="form-field"><input type="text" name="DTEnd" size="30">(DD MM YYYY HH:MM:SS)</div>

	<div class="form-label clear-both">Event location</div>
	<div class="form-field"><input type="text" name="location" size="30"></div>

	<div class="form-label clear-both">Event description</div>
	<div class="form-field"><input type="text" name="description" size="30"></div>

</div>

<!--- Google Maps --->
<div class="formElems map">
	<div class="form-label clear-both">Latitude</div>
	<div class="form-field"><input type="text" name="lat" size="30"></div>

	<div class="form-label clear-both">Longitude</div>
	<div class="form-field"><input type="text" name="long" size="30"></div>

	<div class="form-label clear-both">Zoom / Height</div>
	<div class="form-field"><input type="text" name="zoom" size="30"></div>
</div>

<!--- Android Market Search --->
<div class="formElems market">
	<div class="form-label clear-both">Android Market Search</div>
	<div class="form-field"><input type="text" name="android" size="30"></div>
</div>

<!--- Youtube URL for iPhone --->
<div class="formElems youtube">
	<div class="form-label clear-both">Youtube ID</div>
	<div class="form-field"><input type="text" name="ytubeid" size="30"></div>
</div>

<!--- Encode Latest Tweet of a User --->
<div class="formElems tweet_fetch">
	<div class="form-label clear-both">Twitter Username</div>
	<div class="form-field"><input type="text" name="twitterUserName" size="30"></div>
</div>

<!--- Tweet on Twitter --->
<div class="formElems tweet">
	<div class="form-label clear-both">Tweet on Twitter</div>
	<div class="form-field"><textarea type="text" name="twitterMessage" rows="5" cols="30"></textarea></div>
</div>

<!--- Free Formatted Text --->
<div class="formElems text">
	<div class="form-label clear-both">Free Formatted Text</div>
	<div class="form-field"><input type="text" name="textString" size="30"></div>
</div>

<!--- Wifi - Android devices --->
<div class="formElems wifi_android">
	<div class="form-label clear-both">Authentication type</div>
	<div class="form-field"><input type="text" name="authentication" size="30"></div>

	<div class="form-label clear-both">Network name</div>
	<div class="form-field"><input type="text" name="network" size="30"></div>

	<div class="form-label clear-both">Network password</div>
	<div class="form-field"><input type="text" name="password" size="30"></div>

</div>

<div class="form-label clear-both">
	<input type="submit" name="Action" class="button" value="Generate">
</div>

</form>
</cfif>