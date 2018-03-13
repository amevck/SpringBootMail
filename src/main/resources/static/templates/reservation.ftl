<!DOCTYPE html>

<head>
    <meta charset="UTF-8">
    <title>miracleofasia</title>
    <link rel="stylesheet" href="static/dist/css/agency.css">
    <link rel="stylesheet" href="static/dist/css/bootstrap.css">
    <link href="static/dist/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Open Sans' rel='stylesheet'>
</head>
<body>
<div class="row">
    <div class="container">
        <div class="full-row pt-3">
            <img src="">
            <div class="col-md-12 col-lg-12 col-sm-12 conform">
                <p class="conform-h1">Your booking is confirmed!</p>
                <p class="conform-id">Your booking ID : ${booking_id}</p>
            </div>
            <div class="col-md-12 col-lg-12 col-sm-12 p-0 mt-4 conform-name">
                <p>
                    Please print  this confirmation (or soft copy) and show it upon check in.
                </p>
            </div>
            <div class="col-lg-12 col-md-12 col-sm-12 p-0">

                <img src="static/dist/img/offers/rat.png" class="conform-hotel-ret">
                <div class="row ml-1 mt-4">

                <div class=" col-sm-12 col-lg-3 col-md-3  p-0">

                    <img src="dist/img/120176876.jpg" class="conform-img" alt="">
                </div>
                    <div class=" col-sm-12 col-lg-8 col-md-8  p-0">
                    <div class="conform-hotel">
                        <div class="confir-hotel-name">${hotel_name}</div>
                        <div class="float-left hotel-star"><i class="fa fa-star strar"></i><i class="fa fa-star strar"></i><i class="fa fa-star strar"></i> <i class="fa fa-star strar"></i><i class="fa fa-star strar"></i></div>
                         <br><p class="mb-0">Fort, Colombe (in the city center)</p>
                        <div class="form-row mt-0 pl-1">
                            <div class="conform-icon mr-2"><i class="fa fa-bath"></i> </div>
                            <div class="conform-icon mr-2"><i class="fa fa-snowflake-o"></i> </div>
                            <div class="conform-icon mr-2"><i class="fa fa-wifi"></i> </div></div>
                    </div>
                    </div>
                </div>

                    </div>

            <div class="col-lg-12 col-md-12 col-sm-12 p-0 mt-4">
                <div class="email-account">


                    <div class="acc">
                        <div class="row">
                            <div class="col acc-font">
                                Reservations:
                            </div>
                            <div class="col text-right acc-font">
                                ${Reservations}
                            </div>
                        </div>
                    </div>



                    <div class="acc">
                        <div class="row">
                            <div class="col acc-font">
                                Check in:
                            </div>
                            <div class="col text-right acc-font">
                                January 10,2018 <small>(after 02:00 PM)</small>
                            </div>
                        </div>
                    </div>
                    <div class="acc">
                        <div class="row">
                            <div class="col acc-font">
                                Check out:
                            </div>
                            <div class="col text-right acc-font">
                                January 10,2018 <small>(after 02:00 PM)</small>
                            </div>
                        </div>
                    </div>
                    <div class="acc">
                        <div class="row">
                            <div class="col acc-font">
                                Booking ID:
                            </div>
                            <div class="col text-right acc-font">
                              231564
                            </div>
                        </div>
                    </div>

                    <div class="samp bor">
                        <div class="acc2">
                            <#assign map = booked_rooms?eval>
                            <#list map as room>
                            <div class="row">
                                    ${room.amount}
                                <div class="col acc-font2">

                                </div>
                                <div class="col text-right acc-font2-reight">

                                </div>

                            </div>
                            </#list>
                        </div>
                    </div>
                    <div class="samp  mt-0">
                        <div class="acc2">
                            <div class="row">
                                <div class="col acc-font3">
                                    Total Price
                                </div>
                                <div class="col text-right acc-font2-reight">
                                    LKR 14680<br>
                                    (US$161)
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>

            <div class="col-lg-12 col-md-12 col-sm-12 p-0 mt-4">
                  <h2>Booking Details</h2>




                <div class="acc">
                    <div class="row">
                        <div class="col acc-font">
                            Occupancy:
                        </div>
                        <div class="col text-right acc-font">
                            2 adults,2 children<br>
                            (4 and 12 years old)
                        </div>
                    </div>
                </div>

                <div class="acc">
                    <div class="row">
                        <div class="col acc-font">
                            Promotion:
                        </div>
                        <div class="col text-right acc-font">

                        </div>
                    </div>
                </div>

                <div class="acc">
                    <div class="row">
                        <div class="col acc-font">
                            Speclal requests:
                        </div>
                        <div class="col text-right acc-font">
                            ArrlvalTime:"05.00 - 06.00"
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-12 col-md-12 col-sm-12 p-0 mt-5">
                <h4>Cancelation and Change Policy</h4>
                <p>
                    Ifcancelled or modifiedup to 1 day
                </p>
            </div>

            <div class="col-lg-12 col-md-12 col-sm-12 p-0 mt-4">
                <div class="email-footer bor">
                    <div class="media">
                        <img class="d-flex align-self-center mr-3" src="dist/img/offers/24.png" alt="Generic placeholder image">
                        <div class="media-body">
                            <h5 class="mt-0">24/7 Customer Service</h5>
                            <p>Keep your booking reference number 231564 handy and within reach</p>
                        </div>
                    </div>
                </div>
                <div class="email-footer">
                    <div class="row">
                    <div class="col">
                        <h4>Property </h4>
                        <p>Send us amessege using our "Contact Agoda" form or call us at</p>
                    </div>
                    <div class="col">
                        <h4>FAQ </h4>
                        <p>Send us amessege using our "Contact Agoda" form or call us at</p>
                    </div>
                    <div class="col">
                        <h4>Support </h4>
                        <p>Send us amessege using our "Contact Agoda" form or call us at</p>
                    </div>
                    </div>

                  <center><button class="con-btn pull  ">CONTACT MIRACLE OF ASIA</button></center>

                </div>
            </div>



                </div>

            </div>
        </div>
    </div>
</div>
</body>
</html>