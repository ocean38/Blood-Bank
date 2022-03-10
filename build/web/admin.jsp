<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="ISO-8859-1">
        <title>Admin</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <style>
            .sizecls
            {
                font-size: 20px;
            }
            .sidenav {
                height: 100%; /* 100% Full-height */
                width: 0; /* 0 width - change this with JavaScript */
                position: fixed; /* Stay in place */
                z-index: 1; /* Stay on top */
                top: 0; /* Stay at the top */
                left: 0;
                background-color: #111; /* Black*/
                overflow-x: hidden; /* Disable horizontal scroll */
                padding-top: 60px; /* Place content 60px from the top */
                transition: 0.5s; /* 0.5 second transition effect to slide in the sidenav */
            }

            /* The navigation menu links */
            .sidenav a {
                padding: 8px 8px 8px 32px;
                text-decoration: none;
                font-size: 25px;
                color: #818181;
                display: block;
                transition: 0.3s;
            }

            /* When you mouse over the navigation links, change their color */
            .sidenav a:hover {
                color: #f1f1f1;
            }

            /* Position and style the close button (top right corner) */
            .sidenav .closebtn {
                position: absolute;
                top: 0;
                right: 25px;
                font-size: 36px;
                margin-left: 50px;
            }

            /* Style page content - use this if you want to push the page content to the right when you open the side navigation */
            #main {
                transition: margin-left .5s;
                padding: 20px;
            }

            /* On smaller screens, where height is less than 450px, change the style of the sidenav (less padding and a smaller font size) */
            @media screen and (max-height: 450px) {
                .sidenav {padding-top: 15px;}
                .sidenav a {font-size: 18px;}
            }
        </style>
    </head>
    <body>


        <div class="navbar navbar-dark bg-dark">

            <span class="fa fa-bars fa-2x" style="color:white;" onclick="openNav()" ></span>
            <div class=" text-white " style="margin-right: 50%; font-size: 25px;">Admin DashBoard</div>

        </div>

        <p></p>
        <div class="container" style="max-width: 70%;">
            <!--            <span class="fa fa-bars fa-2x" onclick="openNav()" ></span>-->
            <div id="mySidenav" class="sidenav">
                <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
                <a href="admin.jsp">Blood Stock</a>
                <a href="admin_donar.jsp">Blood Donars</a>
                <a href="#">Clients</a>
                <a href="index.jsp">Logout</a>
            </div>
            <br>
            <br>
            <div class="alert alert-success " role="alert" id="sucessalert" style="display: none; position: absolute;">

                <strong>Successfull!</strong>&nbsp;Stock Updated successfully.
            </div>
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Blood Group</th>
                        <th scope="col">No. of Units Available</th>
                        <th scope="col">Update Stock</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        ResultSet rs = dbutil.DButil.read("SELECT * FROM `blood_stock`");
                        rs.next();
                    %>
                    <tr>
                        <th scope="row" class="sizecls">1</th>
                        <td class="sizecls">A+</td>
                        <td class="sizecls" id="A+z"><%=rs.getString(1)%>&nbsp;Units Available</td>
                        <td><input class="form-control " type="number" id="A+" onkeypress="return event.charCode >= 48" min="0">
                            &nbsp; <button class="btn-primary" onclick="add('A+')">ADD</button>
                            &nbsp;&nbsp;&nbsp;&nbsp;<button class="btn-danger" onclick="sub('A+')">SUBSTRACT</button></td>
                    </tr>
                    <tr>
                        <th scope="row" class="sizecls">2</th>
                        <td class="sizecls">A-</td>
                        <td class="sizecls" id="A-z"><%=rs.getString(2)%>&nbsp;Units Available</td>
                        <td><input class="form-control " type="number" id="A-" onkeypress="return event.charCode >= 48" min="0">
                            &nbsp; <button class="btn-primary" onclick="add('A-')">ADD</button>
                            &nbsp;&nbsp;&nbsp;&nbsp; <button class="btn-danger" onclick="sub('A-')">SUBSTRACT</button></td>
                    </tr>
                    <tr>
                        <th scope="row" class="sizecls">3</th>
                        <td class="sizecls">B+</td>
                        <td class="sizecls" id="B+z"><%=rs.getString(3)%>&nbsp;Units Available</td>
                        <td><input class="form-control " type="number" id="B+" onkeypress="return event.charCode >= 48" min="0">
                            &nbsp;<button class="btn-primary" onclick="add('B+')">ADD</button>
                            &nbsp;&nbsp;&nbsp;&nbsp;<button class="btn-danger" onclick="sub('B+')">SUBSTRACT</button></td>
                    </tr>
                    <tr>
                        <th scope="row" class="sizecls">4</th>
                        <td class="sizecls">B-</td>
                        <td class="sizecls" id="B-z"><%=rs.getString(4)%>&nbsp;Units Available</td>
                        <td><input class="form-control " type="number" id="B-" onkeypress="return event.charCode >= 48" min="0">
                            &nbsp; <button class="btn-primary" onclick="add('B-')">ADD</button>
                            &nbsp;&nbsp;&nbsp;&nbsp;<button class="btn-danger" onclick="sub('B-')">SUBSTRACT</button></td>
                    </tr>
                    <tr>
                        <th scope="row" class="sizecls">5</th>
                        <td class="sizecls">AB+</td>
                        <td  class="sizecls" id="AB+z"><%=rs.getString(5)%>&nbsp;Units Available</td>
                        <td><input class="form-control " type="number" id="AB+" onkeypress="return event.charCode >= 48" min="0">
                            &nbsp; <button class="btn-primary" onclick="add('AB+')">ADD</button>
                            &nbsp;&nbsp;&nbsp;&nbsp; <button class="btn-danger" onclick="sub('AB+')">SUBSTRACT</button></td>
                    </tr>
                    <tr>
                        <th scope="row" class="sizecls">6</th>
                        <td class="sizecls">AB-</td>
                        <td class="sizecls" id="AB-z"><%=rs.getString(6)%>&nbsp;Units Available</td>
                        <td><input class="form-control " type="number" id="AB-" onkeypress="return event.charCode >= 48" min="0">
                            &nbsp; <button class="btn-primary" onclick="add('AB-')">ADD</button>
                            &nbsp;&nbsp;&nbsp;&nbsp; <button class="btn-danger" onclick="sub('AB-')">SUBSTRACT</button></td>
                    </tr>
                    <tr>
                        <th scope="row" class="sizecls">7</th>
                        <td class="sizecls">O+</td>
                        <td class="sizecls" id="O+z"><%=rs.getString(7)%>&nbsp;Units Available</td>
                        <td><input class="form-control " type="number" id="O+" onkeypress="return event.charCode >= 48" min="0">
                            &nbsp;<button class="btn-primary" onclick="add('O+')">ADD</button>
                            &nbsp;&nbsp;&nbsp;&nbsp;<button class="btn-danger" onclick="sub('O+')">SUBSTRACT</button></td>
                    </tr>
                    <tr>
                        <th scope="row" class="sizecls">8</th>
                        <td class="sizecls">O-</td>
                        <td class="sizecls" id="O-z"><%=rs.getString(8)%>&nbsp;Units Available</td>
                        <td><input class="form-control " type="number" id="O-" onkeypress="return event.charCode >= 48" min="0">
                            &nbsp; <button class="btn-primary" onclick="add('O-')">ADD</button>
                            &nbsp;&nbsp;&nbsp;&nbsp;<button class="btn-danger" onclick="sub('O-')">SUBSTRACT</button></td>
                    </tr>
                </tbody>
            </table>
            <p></p>
            </br>
            <p></p>
            </br>
        </div>
        <footer class="container">
            <p>© Blood Bank Management System 2021</p>
        </footer>


        <script>
            function openNav() {
                document.getElementById("mySidenav").style.width = "250px";
            }

            /* Set the width of the side navigation to 0 */
            function closeNav() {
                document.getElementById("mySidenav").style.width = "0";
            }
            function add(grp) {
//no clue what to put here?

                var units = document.getElementById(grp).value;

                $.ajax({

                    url: "add_unit.jsp",
                    method: "POST",
                    data: {grp: grp, units: units},
                    success: function (data)
                    {

                        document.getElementById(grp + "z").innerHTML = data + " Units Available";
                        document.getElementById(grp).value = "";
//                        document.getElementById("sucessalert").style.display = "block";
                        $("#sucessalert").fadeIn();
                        setTimeout(function () {
                            $("#sucessalert").fadeOut();
                        }, 2000);
                    }
                });

            }
            function sub(grp) {
//no clue what to put here?

                var units = document.getElementById(grp).value;
                ;
                //alert(grp+units);
                $.ajax({

                    url: "sub_unit.jsp",
                    method: "POST",
                    data: {grp: grp, units: units},
                    success: function (data)
                    {
                        document.getElementById(grp + "z").innerHTML = data + " Units Available";
                        document.getElementById(grp).value = "";
                        $("#sucessalert").fadeIn();
                        setTimeout(function () {
                            $("#sucessalert").fadeOut();
                        }, 2000);
                    }
                });

            }
        </script>
    </body>
</html>