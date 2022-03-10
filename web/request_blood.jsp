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
                                <h2>Request For Blood</h2>
                            </div>
                            <div class="form">
                                <div class="form-body">
                                    <div class="row form-row">
                                        <input type="text" placeholder="Enter Full name" id="name" class="form-control" name="full_name" required>

                                    </div>
                                    <div class="row form-row">
                                        <input type="tel" placeholder="Enter Mobile Number"  id="phone" class="form-control" name="phone" required>
                                    </div>


                                    <div class="row form-row">
                                        <select id="bloodtype" class="form-control" name="blood_grp" required>
                                            <option selected disabled>Select Your Blood Group</option>
                                            <option value="A+">A+</option>
                                            <option value="A-">A-</option>
                                            <option value="B+">B+</option>
                                            <option value="B-">B-</option>
                                            <option value="AB+">AB+</option>
                                            <option value="AB-">AB-</option>
                                            <option value="O+">O+</option>
                                            <option value="O-">O-</option>                                      
                                        </select>
                                    </div>

                                    <div class="row form-row">
                                        <input  id="bloodunit" type="number" placeholder="Enter Blood Units" class="form-control" name="phone" required>
                                    </div>
                                    <div id="result"> </div>


                                    <div class="row form-row">
                                        <button class="btn btn-success btn-appointment"  id="subbtn" >
                                            Submit
                                        </button>

                                    </div>


                                </div>
                            </div>
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

        $(document).ready(function () {
            $("#subbtn").click(function () {
                var blood = $('#bloodtype :selected').text();
                var unit = $("#bloodunit").val();
                var name = $("#name").val();
                var phone = $("#phone").val();
                     $.ajax({

                url: "check_unit.jsp",
                method: "POST",
                data: {blood:blood,unit:unit,name:name,phone:phone},
                success: function (data)
                {
                    if(data>0)
                    {
                        window.location.href = "requestblood_recipt.jsp";
                    }
                    else{
                    $("#result").html(data);
                }
                }
            });
            });

        });


    </script>
    <script src="assets/js/bootstrap-datepicker.js"></script>
</body>
</html>