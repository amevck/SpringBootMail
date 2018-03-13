<html>
<head>

    <style type="text/css">
.wrapper {
	width: 8.27in;
	padding: 5px;
	font-family: Verdana, Geneva, sans-serif;
}
.values {
	text-align: left;
	border-bottom: 1px dotted;
}
.maintable {
	background-color: #F8F8F8;
	border: 1px solid;
	border-radius: 2px;
}
.captions {
	background-color: #FFF;
	text-align: right;
	border-bottom: 1px solid;
}
.rates {
	text-align: right;
}
.subtitle {
	background: none repeat scroll 0 0 black;
	border-radius: 0 !important;
	color: white;
	font-size: 18px;
	padding: 4px;
}
.maintitle {
	font-size: 27px;
	padding: 9px;
	text-align: center;
}
.room-title {
	background: none repeat scroll 0 0 white;
	font-size: 16px;
	font-weight: bold;
}
.iten_segment {
	border: 1px solid;
	margin: 2px;
	padding: 3px;
}
.iternery_days {
	background: none repeat scroll 0 0 gray;
	border: 1px solid;
	border-radius: 4px;
	color: white;
	padding: 2px;
}
.itn_name {
	background: none repeat scroll 0 0 white;
	border-left: 1px solid;
	border-radius: 8px;
	border-right: 1px solid;
	border-top: 1px solid;
	font-weight: bold;
	margin: 2px;
	padding: 2px;
}
td {
	padding: 2px;
	font-size: 13px;
	line-height: 20px;
}
</style>
</head>
<body>
<div class="wrapper">
    <table width="100%" border="0" class="maintable"
           style="background-color: #F8F8F8; border: 1px solid; border-radius: 2px;">
        <tr>
            <td>
                <table width="100%" border="0">
                    <tr>
                        <td class="maintitle" colspan="2">
                            <table width='100%'>
                                <tr>
                                    <td><img alt=""
                                             src="http://www.miracleofasia.lk/img/logo-mra-email.png"
                                             width="150px"></td>
                                    <td
                                            style="text-align: center; vertical-align: top; font-size: 23px; line-height: 27px;">
                                        GREETINGS FROM ! <br /> www.miracleofasia.lk <br /> <span
                                            style="font-size: 14px;"> &copy; a REDSTONE company</span>
                                    </td>
                                    <td style="text-align: right; width: 180px"><img alt=""
                                                                                     src="https://chart.googleapis.com/chart?chs=150x150&cht=qr&chl={$booking.number}-{$booking.bookedCustomer.name}&choe=UTF-8"
                                                                                     width="86px"></td>
                                </tr>

                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td class="maintitle"
                            style="font-size: 20px; padding: 9px; text-align: left;">Booking Quotation
                            -BHS00000483

                        </td>

                    </tr>

                    <tr>
                        <td class="subtitle"
                            style="background: none repeat scroll 0 0 #969696; border-radius: 4px; color: white; font-size: 18px; padding: 4px;">Booking Reference</td>
                    </tr>
                    <tr>
                        <td>
                            <table width="100%" border="0">
                                <tr>
                                    <td width="20%"
                                        style="padding-left: 10px; text-align: left; border-bottom: 1px dotted; font-size: 12px">
                                        Booking Reference</td>
                                    <td width="80%"
                                        style="text-align: left; border-bottom: 1px dotted; font-size: 12px">
                                        BHS00000483</td>
                                </tr>

                                <tr>
                                    <td width="20%"
                                        style="padding-left: 10px; text-align: left; border-bottom: 1px dotted; font-size: 12px">
                                        Invoice Number</td>
                                    <td width="80%"
                                        style="text-align: left; border-bottom: 1px dotted; font-size: 12px">
                                        ${invoice_number}</td>
                                </tr>


                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td class="subtitle"
                            style="background: none repeat scroll 0 0 #969696; border-radius: 4px; color: white; font-size: 18px; padding: 4px;">Customer
                            Details</td>
                    </tr>
                    <tr>
                        <td>
                            <table width="100%" border="0">
                                <tr>
                                    <td width="20%"
                                        style="padding-left: 10px; text-align: left; border-bottom: 1px dotted; font-size: 12px">
                                        Name</td>
                                    <td width="80%"
                                        style="text-align: left; border-bottom: 1px dotted; font-size: 12px">${user}</td>
                                </tr>
                                <tr>
                                    <td width="20%"
                                        style="padding-left: 10px; text-align: left; border-bottom: 1px dotted; font-size: 12px">
                                        Contact</td>
                                    <td width="80%"
                                        style="text-align: left; border-bottom: 1px dotted; font-size: 12px">${contact_number}
                                        , ${email_address}</td>
                                </tr>

                                <tr>
                                    <td width="20%"
                                        style="padding-left: 10px; text-align: left; border-bottom: 1px dotted; font-size: 12px">
                                        Remarks</td>
                                    <td width="80%"
                                        style="text-align: left; border-bottom: 1px dotted; font-size: 12px">${remarks}
                                    </td>
                                </tr>

                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>

        <tr>
            <td class="subtitle"
                style="background: none repeat scroll 0 0 #969696; border-radius: 4px; color: white; font-size: 18px; padding: 4px;">Hotel
                Details</td>
        </tr>
        <tr>
            <td><table width="100%" border="0">
                <tr>
                    <td width="19%" class="captions"
                        style="background-color: #FFF; text-align: right; border-bottom: 1px solid;">Hotel:</td>
                    <td width="29%" class="values"
                        style="text-align: left; border-bottom: 1px dotted;">${hotel_name}</td>
                    <td width="1%">&nbsp;</td>
                    <td width="12%" class="captions"
                        style="background-color: #FFF; text-align: right; border-bottom: 1px solid;">Contact:</td>
                    <td width="32%" class="values"
                        style="text-align: left; border-bottom: 1px dotted;">${hotel_phone1}</td>
                    <td width="7%">&nbsp;</td>
                </tr>
                <tr>
                    <td class="captions"
                        style="background-color: #FFF; text-align: right; border-bottom: 1px solid;">Address</td>
                    <td class="values"
                        style="text-align: left; border-bottom: 1px dotted;">${hotel_address}</td>
                    <td>&nbsp;</td>
                    <td class="values"
                        style="text-align: left; border-bottom: 1px dotted;">&nbsp;</td>
                    <td class="values"
                        style="text-align: left; border-bottom: 1px dotted;">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="captions"
                        style="background-color: #FFF; text-align: right; border-bottom: 1px solid;">Check
                        In:</td>
                    <td class="values"
                        style="text-align: left; border-bottom: 1px dotted;">${check_in_date}</td>
                    <td>&nbsp;</td>
                    <td class="captions"
                        style="background-color: #FFF; text-align: right; border-bottom: 1px solid;">Check
                        Out:</td>
                    <td class="values"
                        style="text-align: left; border-bottom: 1px dotted;">${check_out_date}</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="captions"
                        style="background-color: #FFF; text-align: right; border-bottom: 1px solid;">Special
                        Requests:</td>
                    <td colspan="4" class="values"
                        style="text-align: left; border-bottom: 1px dotted;">${special_request}</td>
                    <td>&nbsp;</td>
                </tr>

            </table></td>
        </tr>
        <tr>

        <tr>
            <td class="subtitle"
                style="background: none repeat scroll 0 0 #969696; border-radius: 4px; color: white; font-size: 18px; padding: 4px;">Rooms
                And Rates</td>
        </tr>
        <tr>
            <td><table width="100%" border="0">

                <tr>
                    <td width="19%" class="captions"
                        style="background-color: #FFF; text-align: right; border-bottom: 1px solid;">Room
                        ${numberOfRoom}</td>
                    <td width="59%" class="values"
                        style="text-align: left; border-bottom: 1px dotted;">${roomName}</td>
                    <td width="16%" class="rates" style="text-align: right;">${currecny}${rate}</td>
                    <td width="6%">&nbsp;</td>
                </tr>

                <tr>
                    <td colspan="2">Total:</td>
                    <td class="rates" style="text-align: right;"><strong>${currecny}${total}</strong></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table></td>
        </tr>


        <tr>
            <td class="subtitle"
                style="background: none repeat scroll 0 0 #969696; border-radius: 4px; color: white; font-size: 18px; padding: 4px;">Occupancy</td>
        </tr>
        <tr>
            <td>
                <table width="100%" border="0">
                    <tr>
                        <td class="room-title"
                            style="background: none repeat scroll 0 0 white; font-size: 16px; font-weight: bold;">Booked
                            By</td>
                    </tr>
                    <tr>
                        <td><table width="100%" border="0">

                            <tr>

                                <td width="47%" class="values"
                                    style="text-align: left; border-bottom: 1px dotted;">Title</td>
                                <td width="14%" class="values"
                                    style="text-align: left; border-bottom: 1px dotted;">contact_number</td>
                                <td width="12%" class="values"
                                    style="text-align: left; border-bottom: 1px dotted;">email_address</td>

                            </tr>
                        </table></td>
                    </tr>
                </table>
            </td>
        </tr>


        <tr>
            <td>
                <table width="100%" border="0">
                    <tr>
                        <td class="room-title"
                            style="background: none repeat scroll 0 0 white; font-size: 16px; font-weight: bold;">Room
                             ${Delux} Occuoancy List</td>
                    </tr>
                    <tr>
                        <td></td>
                    </tr>
                </table>
            </td>
        </tr>


        <tr>
            <td class="subtitle"
                style="background: none repeat scroll 0 0 #969696; border-radius: 4px; color: white; font-size: 18px; padding: 4px;">
                Payment Details</td>
        </tr>
        <tr>
            <td>
                <table width="100%" border="0">
                    <tr>
                        <td width="20%"
                            style="padding-left: 10px; text-align: left; border-bottom: 1px dotted; font-size: 12px">
                            Payment Amount</td>
                        <td width="80%"
                            style="text-align: left; border-bottom: 1px dotted; font-size: 12px; text-align: right; background: white; color: red; font-size: 14px; font-weight: bold">${booking_currency}
                            ${booking_total}</td>
                    </tr>
                    <tr>
                        <td width="20%"
                            style="padding-left: 10px; text-align: left; border-bottom: 1px dotted; font-size: 12px">
                            Booking Status</td>
                        <td width="80%"
                            style="text-align: left; border-bottom: 1px dotted; font-size: 12px; text-align: right; background: white; color: red; font-size: 14px; font-weight: bold">
                            ${booking_statue}</td>
                    </tr>
                    <tr>
                        <td width="20%"
                            style="padding-left: 10px; text-align: left; border-bottom: 1px dotted; font-size: 12px">
                            Payment Status</td>
                        <td width="80%"
                            style="text-align: left; border-bottom: 1px dotted; font-size: 12px; text-align: right; background: white; color: red; font-size: 14px; font-weight: bold">
                            PAID</td>
                    </tr>



                    <tr>
                        <td width="20%" colspan="2"
                            style="padding-left: 10px; text-align: left; border-bottom: 1px dotted; font-size: 12px">
                            <strong>Please note this reservation is not confirmed
                                or secure until the full amount is paid.</strong><br /> Use below URL
                            to complete the payment. <br /> <a
                                href="https://www.miracleofasia.lk/payment-quotations-{$booking.payment_hash}">https://www.miracleofasia.lk/payment-quotations-</a>
                        </td>
                    </tr>



                    <tr>
                        <td width="20%"
                            style="padding-left: 10px; text-align: left; border-bottom: 1px dotted; font-size: 12px">
                            Payment Channel</td>
                        <td width="80%"
                            style="text-align: left; border-bottom: 1px dotted; font-size: 12px; text-align: right; background: white; color: red; font-size: 14px; font-weight: bold">
                        </td>
                    </tr>
                    <tr>
                        <td width="20%"
                            style="padding-left: 10px; text-align: left; border-bottom: 1px dotted; font-size: 12px">
                            Payment Date</td>
                        <td width="80%"
                            style="text-align: left; border-bottom: 1px dotted; font-size: 12px; text-align: right; background: white; color: red; font-size: 14px; font-weight: bold">
                        </td>
                    </tr>

                    <tr>
                        <td width="20%"
                            style="padding-left: 10px; text-align: left; border-bottom: 1px dotted; font-size: 12px">
                            Transection Id</td>
                        <td width="80%"
                            style="text-align: left; border-bottom: 1px dotted; font-size: 12px"></td>
                    </tr>

                </table>
            </td>
        </tr>




        <tr>
            <td class="subtitle"
                style="text-transform: uppercase; background: none repeat scroll 0 0 #969696; border-radius: 4px; color: white; font-size: 18px; padding: 4px; text-align: center;">Thank
                you for your  Confirmation
                !</td>
        </tr>
        <tr>
            <td><table width="100%" border="0">
                <tr>
                    <td style="text-align: left; width: 50%; font-size: 10px"><strong>Have
                        Questions?</strong> <br /> +94115708908<br />
                        contact@travelmyasia.com <br /> 24/7 Dedicated Customer Support
                        <br /></td>
                    <td style="text-align: right; width: 50%; font-size: 10px">
                        <strong>REDSTONE (PVT) LIMITED.</strong><br>399 - 1/1,
                        Galle Road, <br> 00400, Colombo 04 <br> +94115708908
                    </td>
                </tr>
            </table></td>
        </tr>

        <tr>

        </tr>
    </table>

</div>
</body>

</html>