<!doctype html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <link href="http://code.jquery.com/ui/1.9.2/themes/smoothness/jquery-ui.css" rel="stylesheet" />
        <script src="http://code.jquery.com/jquery-1.8.3.min.js"></script>
        <script src="http://code.jquery.com/ui/1.9.2/jquery-ui.js"></script>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="shortcut icon" href="assets/images/fav.jpg">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="assets/plugins/grid-gallery/css/grid-gallery.min.css">
        <link rel="stylesheet" href="assets/css/datepicker.css">
        <link rel="stylesheet" type="text/css" href="assets/css/style.css" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
            body{
                width: 100%;
                height:auto;
                overflow: auto;
                background-image: url(backgroun.jpg);
            }
            .inner-layer{
                position: absolute;
                width: 100%;
                height:100%;
                background-color: rgba(0,147,173,0.7);
                overflow: auto;
            }
            .form-data{
                margin-top: 21%;
                background-color: #FFF;

            }
            .form-body{
                padding: 20px;
            }
            .form-head{
                padding: 10px;
                border-bottom: 1px solid #CCC;
            }
            .form-head h2{
                font-size: 22px;
                font-weight: 600;
            }
            .no-margin{
                margin: 0px;
            }

            .form-row{
                margin-bottom: 15px;
            }
            .form-control{
                background-color: #f7f7ff;
                border-radius: 0px;

            }
            .form-control:focus{
                box-shadow: none;
                border: 3px solid #138496;
            }
            .btn-appointment{
                background-color: #138496 !important;
                border-color: #138496 !important;
                width: 100%;
            }
            .content{
                margin-top: 15%;
                text-align: center;
                color: #FFF;
                padding: 30px;
            }
            .content h1{
                font-weight: 600;
                font-size: 3.5rem;
            }
            .content h2{
                font-weight: 600;
                font-size:2.5rem;
                margin-top: 20px;
            }
            .content p{
                font-size: 22px;
                margin-top: 20px;
            }
            .datepicker td, .datepicker th{
                padding: 5px;
            }
            .dropdown-menu.datepicker{
                max-width: 300px !important;
            }


            @media screen and (max-width: 976px){

            }
        </style>
    </head>

    <body>
        <header class="continer-fluid ">

            <div id="menu-jk" class="header-bottom">
                <div class="container">
                    <div class="row nav-row">
                        <div class="col-md-3 logo">
                            <img src="assets/images/logo.jpg" alt="">
                        </div>
                        <div class="col-md-9 nav-col">
                            <nav class="navbar navbar-expand-lg navbar-light">

                                <button
                                    class="navbar-toggler"
                                    type="button"
                                    data-toggle="collapse"
                                    data-target="#navbarNav"
                                    aria-controls="navbarNav"
                                    aria-expanded="false"
                                    aria-label="Toggle navigation">
                                    <span class="navbar-toggler-icon"></span>
                                </button>
                                <div class="collapse navbar-collapse" id="navbarNav">
                                    <ul class="navbar-nav">
                                        <li class="nav-item active">
                                            <a class="nav-link" href="index.jsp">Home
                                            </a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="about.jsp">About Us</a>
                                        </li>

                                        <li class="nav-item">
                                            <a class="nav-link" href="index.jsp">Gallery</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="index.jsp">Process</a>
                                        </li>

                                        <li class="nav-item">
                                            <a class="nav-link" href="index.jsp">Contact US</a>
                                        </li>
                                    </ul>
                                </div>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </header>



        <div class="inner-layer">
            <div class="container">
                <div class="row no-margin">
                    <div class="col-sm-7">
                        <div class="content">
                            <h1>Book You Slot Now and Save your time</h1>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi sagittis at lacus at rhoncus. Integer pharetra lacus vitae sapien blandit eleifend. </p>
                            <h2>For Help Call : +189-123-453</h2>
                        </div>
                    </div>

                    <div class="col-sm-5">
                        <div class="form-data">
                            <div class="form-head">
                                <h2>Book Appointemnt</h2>
                            </div>
                            <form action="get_appointment.jsp" method="POST">
                                <div class="form-body">
                                    <div class="row form-row">
                                        <input type="text" placeholder="Enter Full name" class="form-control" name="full_name" required>

                                    </div>
                                    <div class="row form-row">
                                        <input type="tel" placeholder="Enter Mobile Number" class="form-control" name="phone" required>
                                    </div>
                                    <div class="row form-row">
                                        <input type="text" placeholder="Enter Email Adreess" class="form-control" name="email" required>
                                    </div>

                                    <div class="row form-row">
                                        <select class="form-control" name="blood_grp" required>
                                            <option selected disabled>Select Your Blood Group</option>
                                            <option value="A+">A+</option>
                                            <option value="A-">A-</option>
                                            <option value="B+">B+</option>
                                            <option value="B-">B-</option>
                                            <option value="AB+">AB+</option>
                                            <option value="AB-">AB-</option>
                                            <option value="O+">O+</option>
                                            <option value="O-">O-</option>
                                            <option class="text-danger" value="">Not Sure</option>
                                        </select>
                                    </div>


                                    <div class="row form-row">
                                        <input id="dat" name="Date" type="date" placeholder="Appointment Date" class="form-control"  required>
                                        <div class="valid-feedback" style="display: none;">
                                            Date Is Available!
                                        </div>
                                        <div class="invalid-feedback" style="display: none;">
                                            Date Is Not Available!
                                        </div>
                                    </div>

                                    <h6>Address Details</h6>

                                    <div class="row form-row">
                                        <div class="col-sm-6">
                                            <input type="text" placeholder="Enter Area" class="form-control" name="area" required>
                                        </div>
                                        <div class="col-sm-6">
                                            <input type="text" placeholder="Enter City" class="form-control" name="city" required>
                                        </div>
                                    </div>
                                    <div class="row form-row">
                                        <div class="col-sm-6">
                                            <input type="text" placeholder="Enter State" class="form-control" name="state" required>
                                        </div>
                                        <div class="col-sm-6">
                                            <input type="text" placeholder="Postal Code" class="form-control" name="pin_code" required>
                                        </div>
                                    </div>

                                    <div class="row form-row">
                                        <button class="btn btn-success btn-appointment" disabled id="subbtn" type="submit">
                                            Book Appointment
                                        </button>

                                    </div>


                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </body>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script
        src="https://code.jquery.com/jquery-3.4.1.min.js"
        integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
    crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <script src="js/myjs.js" type="text/javascript"></script>

    <script type="text/javascript">
        var today = new Date().toISOString().split('T')[0];
        document.getElementsByName("Date")[0].setAttribute('min', today);
        var date_input = document.getElementById('dat');


        date_input.onchange = function () {
            var date = new Date($('#dat').val());
            var day = date.getDate();
            var month = date.getMonth() + 1;
            var year = date.getFullYear();
            var appoint_date = [year, month, day].join('-');


            $.ajax({

                url: "check_date.jsp",
                method: "POST",
                data: {date: appoint_date},
                success: function (data)
                {
                    if (data < 1)
                    {
                        $("#dat").addClass("is-valid");
                        $(".valid-feedback").css("display", "block");

                        $("#dat").removeClass(".is-invalid");
                        $(".invalid-feedback").css("display", "none");
                        $('#subbtn').removeAttr('disabled');
                    } else
                    {
                        $("#dat").removeClass("is-valid");
                        $(".valid-feedback").css("display", "none");

                        $("#dat").addClass(".is-invalid");
                        $(".invalid-feedback").css("display", "block");
                        $('#subbtn').attr('disabled', 'disabled');
                    }
                }
            });


        }
    </script>
    <script src="assets/js/bootstrap-datepicker.js"></script>
</body>
</html>