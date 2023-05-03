import 'dart:typed_data';

import 'package:pdf/pdf.dart';
import 'package:printing/printing.dart';

Future<Uint8List> generateReport(PdfPageFormat format) async =>
    await Printing.convertHtml(
      format: PdfPageFormat.a4,
      html: '''<html>
<head>
<meta charset="utf-8">
<title>Fee Challan 20230200893 - Minhaj University Lahore</title>
<link href="/images/favicon.ico" rel="shortcut icon" type="image/png">
<style type="text/css">
body {overflow: -moz-scrollbars-vertical; margin:0; font-family: Arial, Helvetica, sans-serif, Calibri, "Calibri Light";  }
@media all {
	.page-break	{ display: none; }
}

@media print {
	.page-break	{ display: block; page-break-before: always; }
	@page { 
	
	margin: 4mm 4mm 4mm 4mm; 
	}
}
h1 { text-align:left; margin:0; margin-top:0; margin-bottom:0px; font-size:18px; font-weight:700; text-transform:uppercase; }
.spanh1 { font-size:14px; font-weight:normal; text-transform:none; float:right; margin-top:5px; }
h2 { text-align:left; margin:0; margin-top:0; margin-bottom:1px; font-size:18px; font-weight:700; text-transform:uppercase; }
.spanh2 { font-size:16px; font-weight:700; text-transform:none; }
h3 { text-align:center; margin:0; margin-top:0; margin-bottom:1px; font-size:18px; font-weight:700; text-transform:uppercase; }
h4 { 
	text-align:center; margin:0; margin-bottom:1px; font-weight:normal; font-size:15px; font-weight:700; word-spacing:0.1em;  
}
td { padding-bottom:4px; font-family: Arial, Helvetica, sans-serif, Calibri, "Calibri Light"; }
.line1 { border:1px solid #333; width:100%; margin-top:2px; margin-bottom:5px; }
.payable { border:2px solid #000; padding:2px; text-align:center; font-size:14px; }

.paid:after
{
    content:"PAID";
	
    position:absolute;
    top:30%;
    left:20%;
    z-index:1;
    font-family:Arial,sans-serif;
    -webkit-transform: rotate(-5deg); /* Safari */
    -moz-transform: rotate(-5deg); /* Firefox */
    -ms-transform: rotate(-5deg); /* IE */
    -o-transform: rotate(-5deg); /* Opera */
    transform: rotate(-5deg);
    font-size:250px;
    color:green;
    background:#fff;
    border:solid 4px yellow;
    padding:5px;
    border-radius:5px;
    zoom:1;
    filter:alpha(opacity=50);
    opacity:0.1;
    -webkit-text-shadow: 0 0 2px #c00;
    text-shadow: 0 0 2px #c00;
    box-shadow: 0 0 2px #c00;
}
.button {
  background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}
.button2 {background-color: #008CBA;} /* Blue */
</style>
<link rel="shortcut icon" href="images/favicon/favicon.ico">
</head>

<body>
<table width="99%" border="0" class="page " cellpadding="10" cellspacing="15" align="center" style="border-collapse:collapse; margin-top:0px;">
<tr>
	<td width="341" valign="top" style="border-right:1px dashed #333;" class="">
		
		<h1>MBL/HBL/FINJA <span class="spanh1">Bank</span></h1>
		<h2>Minhaj University <span class="spanh2">Lahore</span></h2>
		<h4 style="font-size:10px; text-align:left;">
			Collection Account: Meezan Bank(MNHAJ) <span style="float:right;">HBL(0042-79015260-03)</span> 
		</h4>
        <div class="line1"></div>
<div style="font-size:12px; margin-top:5px;">
<table style="border-collapse:collapse;" width="100%" border="0" cellpadding="0" cellspacing="0">
<tr>
	<td style="text-align:left; width:75px;">Challan #:</td>
	<td style= text-align:left; width:150px;"><span style="width:90px;display:inline-block; overflow:hidden; border-bottom:1px solid;">20230200893</span></td>
	<td style="text-align:left;width:70px;">Issue Date:</td>
	<td style="text-align:left; text-decoration:underline;">2023-02-09</td>
</tr>
<tr>
	<td style="text-align:left;">Reg/Form#:</td>
	<td style="text-align:left;"><span style="font-size:10px;"><u>MUL-53789</u></span></td>
	<td style="text-align:left;">Due Date:</td>
	<td style=" text-align:left; text-decoration:underline;">2023-02-27</td>	
</tr>
<tr>
	<td style="text-align:left;">Name:</td>
	<td  colspan="3" style=" text-decoration:underline;"><span style="font-size:12px;">Areej Azhar </span></td>
</tr>
<tr>
	<td style="text-align:left;">Class:</td>
	<td style="text-align:left; text-decoration:underline;">bsaf</td>
	<td style="text-align:left;">Roll No:</td>
	<td style=" text-align:left; text-decoration:underline;"></td>
</tr>
<tr>
	<td style="text-align:left;">Semester:</td>
	<td style="text-align:left; text-decoration:underline;">0</td>
	<td style="text-align:left;">Session</td>
	<td style=" text-align:left;  text-decoration:underline;">Spring 2023</td>
</tr>
</table>
</div>
<div style="font-size:11px; margin-top:5px;">
<table style="border-collapse:collapse; border:1px solid #666;" cellpadding="2" cellspacing="2" border="1" width="100%">
<tr>
	<td style="text-align:center; font-size:12px; font-weight:bold;"></td>
	<td style="text-align:right; font-size:12px; font-weight:bold;">Rs.</td>
</tr>
<tr>
	<td>Admission Fee</td>
	<td style="text-align:right; width:45%;"></td>
</tr>
<tr>
	<td>Semester Fee</td>
	<td style="text-align:right; width:45%;"></td>
</tr>
<tr>
	<td>Web Portal Fee</td>
	<td style="text-align:right; width:45%;"></td>
</tr>
<tr>
	<td>Migration Fee</td>
	<td style="text-align:right; width:45%;"></td>
</tr>
<tr>
	<td>Library &amp; Magazine Fund</td>
	<td style="text-align:right; width:45%;"></td>
</tr>
<tr>
	<td>Degree / Transcript Fee</td>
	<td style="text-align:right; width:45%;"></td>
</tr>
<tr>
	<td>Verification of Degree/Transcript</td>
	<td style="text-align:right; width:45%;"></td>
</tr>
<tr>
	<td>Registration Fee</td>
	<td style="text-align:right; width:45%;"></td>
</tr>
<tr>
	<td>Bonafide / NOC Fee / Character Cert</td>
	<td style="text-align:right; width:45%;"></td>
</tr>
<tr>
	<td>Furniture Fund</td>
	<td style="text-align:right; width:45%;"></td>
</tr>
<tr>
	<td>Security Fee (Refundable)</td>
	<td style="text-align:right; width:45%;"></td>
</tr>
<tr>
	<td>Hostel Fee</td>
	<td style="text-align:right; width:45%;"></td>
</tr>
<tr>
	<td>Examination Fee</td>
	<td style="text-align:right; width:45%;"></td>
</tr>
<tr>
	<td>Remaining Semester Fee</td>
	<td style="text-align:right; width:45%;"></td>
</tr>
<tr>
	<td>Other Charges</td>
	<td style="text-align:right; width:45%;"></td>
</tr>
<tr>
	<td>Additional Fee/Repeat Paper Fee</td>
	<td style="text-align:right; width:45%;"></td>
</tr>
<tr>
	<td>Student Card Fee</td>
	<td style="text-align:right; width:45%;"></td>
</tr>
<tr>
	<td>Remaining Hostel Fee</td>
	<td style="text-align:right; width:45%;"></td>
</tr>
<tr>
	<td>Admission Processing Fee/Prospectus</td>
	<td style="text-align:right; width:45%;">1,500</td>
</tr>
<tr>
	<td>Test Fee</td>
	<td style="text-align:right; width:45%;"></td>
</tr>
<tr>
	<td>Bank Charges</td>
	<td style="text-align:right; width:45%;"></td>
</tr>
<tr>
	<td style="text-align:left; font-size:12px; font-weight:bold; border:2px solid #666;">Payable Before Due Date </td>
	<td style="text-align:right; font-size:12px; font-weight:bold;  border:2px solid #333;">1,510</td>
</tr>
<tr>
	<td style="text-align:left; font-size:12px; font-weight:bold; border:2px solid #666;">Payable After Due Date </td>
	<td style="text-align:right; font-size:12px; font-weight:bold;  border:2px solid #333;">1,810</td>
</tr>
</table>
<span style="font-size:9px; float:right; margin-top:3px;">issue Date: 03/03/2023</span>
</div>

<div style="clear:both;"></div>
<div style="font-size:13px; color:#000; margin-top:7px;">
<table width="100%" border="0" style="border-collapse:collapse;" cellpadding="0" cellspacing="5">
<tr>
	<td style="font-weight:normal; font-style:italic; text-align:left; font-size:11px; width:80%;">Rupees in word: <span style="text-decoration:underline; font-size:9px; color:#000;">One Thousand, Five Hundred and Ten only</span>
	</td>
	<td style="font-weight:normal; font-style:italic; text-align:right;">Cashier</td>
</tr>

</table>
</div>
<div style="clear:both;"></div>
<div style="font-size:10px; color:#333; margin-top:5px;">
<b><u>Note:</u></b><br>1. Only Cash & Cheque/Payorder will be accepted.<br>
2. After Due Date student will pay PKR 300/, after 5 days of due date challan will not be
accepted.<br>
3. The additional amount collected after the due date will be used for need based scholarship purposes.
</div>
	</td>
	<td width="341" valign="top" style="border-right:1px dashed #333;" class="">
		
		<h1>MBL/HBL/FINJA <span class="spanh1">Account</span></h1>
		<h2>Minhaj University <span class="spanh2">Lahore</span></h2>
		<h4 style="font-size:10px; text-align:left;">
			Collection Account: Meezan Bank(MNHAJ) <span style="float:right;">HBL(0042-79015260-03)</span> 
		</h4>
        <div class="line1"></div>
<div style="font-size:12px; margin-top:5px;">
<table style="border-collapse:collapse;" width="100%" border="0" cellpadding="0" cellspacing="0">
<tr>
	<td style="text-align:left; width:75px;">Challan #:</td>
	<td style= text-align:left; width:150px;"><span style="width:90px;display:inline-block; overflow:hidden; border-bottom:1px solid;">20230200893</span></td>
	<td style="text-align:left;width:70px;">Issue Date:</td>
	<td style="text-align:left; text-decoration:underline;">2023-02-09</td>
</tr>
<tr>
	<td style="text-align:left;">Reg/Form#:</td>
	<td style="text-align:left;"><span style="font-size:10px;"><u>MUL-53789</u></span></td>
	<td style="text-align:left;">Due Date:</td>
	<td style=" text-align:left; text-decoration:underline;">2023-02-27</td>	
</tr>
<tr>
	<td style="text-align:left;">Name:</td>
	<td  colspan="3" style=" text-decoration:underline;"><span style="font-size:12px;">Areej Azhar </span></td>
</tr>
<tr>
	<td style="text-align:left;">Class:</td>
	<td style="text-align:left; text-decoration:underline;">bsaf</td>
	<td style="text-align:left;">Roll No:</td>
	<td style=" text-align:left; text-decoration:underline;"></td>
</tr>
<tr>
	<td style="text-align:left;">Semester:</td>
	<td style="text-align:left; text-decoration:underline;">0</td>
	<td style="text-align:left;">Session</td>
	<td style=" text-align:left;  text-decoration:underline;">Spring 2023</td>
</tr>
</table>
</div>
<div style="font-size:11px; margin-top:5px;">
<table style="border-collapse:collapse; border:1px solid #666;" cellpadding="2" cellspacing="2" border="1" width="100%">
<tr>
	<td style="text-align:center; font-size:12px; font-weight:bold;"></td>
	<td style="text-align:right; font-size:12px; font-weight:bold;">Rs.</td>
</tr>
<tr>
	<td>Admission Fee</td>
	<td style="text-align:right; width:45%;"></td>
</tr>
<tr>
	<td>Semester Fee</td>
	<td style="text-align:right; width:45%;"></td>
</tr>
<tr>
	<td>Web Portal Fee</td>
	<td style="text-align:right; width:45%;"></td>
</tr>
<tr>
	<td>Migration Fee</td>
	<td style="text-align:right; width:45%;"></td>
</tr>
<tr>
	<td>Library &amp; Magazine Fund</td>
	<td style="text-align:right; width:45%;"></td>
</tr>
<tr>
	<td>Degree / Transcript Fee</td>
	<td style="text-align:right; width:45%;"></td>
</tr>
<tr>
	<td>Verification of Degree/Transcript</td>
	<td style="text-align:right; width:45%;"></td>
</tr>
<tr>
	<td>Registration Fee</td>
	<td style="text-align:right; width:45%;"></td>
</tr>
<tr>
	<td>Bonafide / NOC Fee / Character Cert</td>
	<td style="text-align:right; width:45%;"></td>
</tr>
<tr>
	<td>Furniture Fund</td>
	<td style="text-align:right; width:45%;"></td>
</tr>
<tr>
	<td>Security Fee (Refundable)</td>
	<td style="text-align:right; width:45%;"></td>
</tr>
<tr>
	<td>Hostel Fee</td>
	<td style="text-align:right; width:45%;"></td>
</tr>
<tr>
	<td>Examination Fee</td>
	<td style="text-align:right; width:45%;"></td>
</tr>
<tr>
	<td>Remaining Semester Fee</td>
	<td style="text-align:right; width:45%;"></td>
</tr>
<tr>
	<td>Other Charges</td>
	<td style="text-align:right; width:45%;"></td>
</tr>
<tr>
	<td>Additional Fee/Repeat Paper Fee</td>
	<td style="text-align:right; width:45%;"></td>
</tr>
<tr>
	<td>Student Card Fee</td>
	<td style="text-align:right; width:45%;"></td>
</tr>
<tr>
	<td>Remaining Hostel Fee</td>
	<td style="text-align:right; width:45%;"></td>
</tr>
<tr>
	<td>Admission Processing Fee/Prospectus</td>
	<td style="text-align:right; width:45%;">1,500</td>
</tr>
<tr>
	<td>Test Fee</td>
	<td style="text-align:right; width:45%;"></td>
</tr>
<tr>
	<td>Bank Charges</td>
	<td style="text-align:right; width:45%;"></td>
</tr>
<tr>
	<td style="text-align:left; font-size:12px; font-weight:bold; border:2px solid #666;">Payable Before Due Date </td>
	<td style="text-align:right; font-size:12px; font-weight:bold;  border:2px solid #333;">1,510</td>
</tr>
<tr>
	<td style="text-align:left; font-size:12px; font-weight:bold; border:2px solid #666;">Payable After Due Date </td>
	<td style="text-align:right; font-size:12px; font-weight:bold;  border:2px solid #333;">1,810</td>
</tr>
</table>
<span style="font-size:9px; float:right; margin-top:3px;">issue Date: 03/03/2023</span>
</div>

<div style="clear:both;"></div>
<div style="font-size:13px; color:#000; margin-top:7px;">
<table width="100%" border="0" style="border-collapse:collapse;" cellpadding="0" cellspacing="5">
<tr>
	<td style="font-weight:normal; font-style:italic; text-align:left; font-size:11px; width:80%;">Rupees in word: <span style="text-decoration:underline; font-size:9px; color:#000;">One Thousand, Five Hundred and Ten only</span>
	</td>
	<td style="font-weight:normal; font-style:italic; text-align:right;">Cashier</td>
</tr>

</table>
</div>
<div style="clear:both;"></div>
<div style="font-size:10px; color:#333; margin-top:5px;">
<b><u>Note:</u></b><br>1. Only Cash & Cheque/Payorder will be accepted.<br>
2. After Due Date student will pay PKR 300/, after 5 days of due date challan will not be
accepted.<br>
3. The additional amount collected after the due date will be used for need based scholarship purposes.
</div>
	</td>
	<td width="341" valign="top"  class="">
		
		<h1>MBL/HBL/FINJA <span class="spanh1">Student's</span></h1>
		<h2>Minhaj University <span class="spanh2">Lahore</span></h2>
		<h4 style="font-size:10px; text-align:left;">
			Collection Account: Meezan Bank(MNHAJ) <span style="float:right;">HBL(0042-79015260-03)</span> 
		</h4>
        <div class="line1"></div>
<div style="font-size:12px; margin-top:5px;">
<table style="border-collapse:collapse;" width="100%" border="0" cellpadding="0" cellspacing="0">
<tr>
	<td style="text-align:left; width:75px;">Challan #:</td>
	<td style= text-align:left; width:150px;"><span style="width:90px;display:inline-block; overflow:hidden; border-bottom:1px solid;">20230200893</span></td>
	<td style="text-align:left;width:70px;">Issue Date:</td>
	<td style="text-align:left; text-decoration:underline;">2023-02-09</td>
</tr>
<tr>
	<td style="text-align:left;">Reg/Form#:</td>
	<td style="text-align:left;"><span style="font-size:10px;"><u>MUL-53789</u></span></td>
	<td style="text-align:left;">Due Date:</td>
	<td style=" text-align:left; text-decoration:underline;">2023-02-27</td>	
</tr>
<tr>
	<td style="text-align:left;">Name:</td>
	<td  colspan="3" style=" text-decoration:underline;"><span style="font-size:12px;">Areej Azhar </span></td>
</tr>
<tr>
	<td style="text-align:left;">Class:</td>
	<td style="text-align:left; text-decoration:underline;">bsaf</td>
	<td style="text-align:left;">Roll No:</td>
	<td style=" text-align:left; text-decoration:underline;"></td>
</tr>
<tr>
	<td style="text-align:left;">Semester:</td>
	<td style="text-align:left; text-decoration:underline;">0</td>
	<td style="text-align:left;">Session</td>
	<td style=" text-align:left;  text-decoration:underline;">Spring 2023</td>
</tr>
</table>
</div>
<div style="font-size:11px; margin-top:5px;">
<table style="border-collapse:collapse; border:1px solid #666;" cellpadding="2" cellspacing="2" border="1" width="100%">
<tr>
	<td style="text-align:center; font-size:12px; font-weight:bold;"></td>
	<td style="text-align:right; font-size:12px; font-weight:bold;">Rs.</td>
</tr>
<tr>
	<td>Admission Fee</td>
	<td style="text-align:right; width:45%;"></td>
</tr>
<tr>
	<td>Semester Fee</td>
	<td style="text-align:right; width:45%;"></td>
</tr>
<tr>
	<td>Web Portal Fee</td>
	<td style="text-align:right; width:45%;"></td>
</tr>
<tr>
	<td>Migration Fee</td>
	<td style="text-align:right; width:45%;"></td>
</tr>
<tr>
	<td>Library &amp; Magazine Fund</td>
	<td style="text-align:right; width:45%;"></td>
</tr>
<tr>
	<td>Degree / Transcript Fee</td>
	<td style="text-align:right; width:45%;"></td>
</tr>
<tr>
	<td>Verification of Degree/Transcript</td>
	<td style="text-align:right; width:45%;"></td>
</tr>
<tr>
	<td>Registration Fee</td>
	<td style="text-align:right; width:45%;"></td>
</tr>
<tr>
	<td>Bonafide / NOC Fee / Character Cert</td>
	<td style="text-align:right; width:45%;"></td>
</tr>
<tr>
	<td>Furniture Fund</td>
	<td style="text-align:right; width:45%;"></td>
</tr>
<tr>
	<td>Security Fee (Refundable)</td>
	<td style="text-align:right; width:45%;"></td>
</tr>
<tr>
	<td>Hostel Fee</td>
	<td style="text-align:right; width:45%;"></td>
</tr>
<tr>
	<td>Examination Fee</td>
	<td style="text-align:right; width:45%;"></td>
</tr>
<tr>
	<td>Remaining Semester Fee</td>
	<td style="text-align:right; width:45%;"></td>
</tr>
<tr>
	<td>Other Charges</td>
	<td style="text-align:right; width:45%;"></td>
</tr>
<tr>
	<td>Additional Fee/Repeat Paper Fee</td>
	<td style="text-align:right; width:45%;"></td>
</tr>
<tr>
	<td>Student Card Fee</td>
	<td style="text-align:right; width:45%;"></td>
</tr>
<tr>
	<td>Remaining Hostel Fee</td>
	<td style="text-align:right; width:45%;"></td>
</tr>
<tr>
	<td>Admission Processing Fee/Prospectus</td>
	<td style="text-align:right; width:45%;">1,500</td>
</tr>
<tr>
	<td>Test Fee</td>
	<td style="text-align:right; width:45%;"></td>
</tr>
<tr>
	<td>Bank Charges</td>
	<td style="text-align:right; width:45%;"></td>
</tr>
<tr>
	<td style="text-align:left; font-size:12px; font-weight:bold; border:2px solid #666;">Payable Before Due Date </td>
	<td style="text-align:right; font-size:12px; font-weight:bold;  border:2px solid #333;">1,510</td>
</tr>
<tr>
	<td style="text-align:left; font-size:12px; font-weight:bold; border:2px solid #666;">Payable After Due Date </td>
	<td style="text-align:right; font-size:12px; font-weight:bold;  border:2px solid #333;">1,810</td>
</tr>
</table>
<span style="font-size:9px; float:right; margin-top:3px;">issue Date: 03/03/2023</span>
</div>

<div style="clear:both;"></div>
<div style="font-size:13px; color:#000; margin-top:7px;">
<table width="100%" border="0" style="border-collapse:collapse;" cellpadding="0" cellspacing="5">
<tr>
	<td style="font-weight:normal; font-style:italic; text-align:left; font-size:11px; width:80%;">Rupees in word: <span style="text-decoration:underline; font-size:9px; color:#000;">One Thousand, Five Hundred and Ten only</span>
	</td>
	<td style="font-weight:normal; font-style:italic; text-align:right;">Cashier</td>
</tr>

</table>
</div>
<div style="clear:both;"></div>
<div style="font-size:10px; color:#333; margin-top:5px;">
<b><u>Note:</u></b><br>1. Only Cash & Cheque/Payorder will be accepted.<br>
2. After Due Date student will pay PKR 300/, after 5 days of due date challan will not be
accepted.<br>
3. The additional amount collected after the due date will be used for need based scholarship purposes.
</div>
	</td></tr>
</table>
</body>
<script type="text/javascript" language="javascript1.2">
<!--
 //Do print the page
if (typeof(window.print) != "undefined") {
    window.print();
}
-->
</script>
</html>''',
    );
