<%
    String phone=(String)session.getAttribute("phone");
    if(phone==null)
    {
        response.sendRedirect("appointment.jsp");
    }
    else
    {
%>

<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html>
    <head>
        <title></title>
         <link href="http://code.jquery.com/ui/1.9.2/themes/smoothness/jquery-ui.css" rel="stylesheet" />
        <script src="http://code.jquery.com/jquery-1.8.3.min.js"></script>
        <script src="http://code.jquery.com/ui/1.9.2/jquery-ui.js"></script>
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    
         <style>
             
             .receipt-content .logo a:hover {
  text-decoration: none;
  color: #7793C4; 
}

.receipt-content .invoice-wrapper {
  background: #FFF;
  border: 1px solid #CDD3E2;
  box-shadow: 0px 0px 1px #CCC;
  padding: 40px 40px 60px;
  margin-top: 40px;
  border-radius: 4px; 
}

.receipt-content .invoice-wrapper .payment-details span {
  color: #A9B0BB;
  display: block; 
}
.receipt-content .invoice-wrapper .payment-details a {
  display: inline-block;
  margin-top: 5px; 
}

.receipt-content .invoice-wrapper .line-items .print a {
  display: inline-block;
  border: 1px solid #9CB5D6;
  padding: 13px 13px;
  border-radius: 5px;
  color: #708DC0;
  font-size: 13px;
  -webkit-transition: all 0.2s linear;
  -moz-transition: all 0.2s linear;
  -ms-transition: all 0.2s linear;
  -o-transition: all 0.2s linear;
  transition: all 0.2s linear; 
}

.receipt-content .invoice-wrapper .line-items .print a:hover {
  text-decoration: none;
  border-color: #333;
  color: #333; 
}

.receipt-content {
  background: #ECEEF4; 
}
@media (min-width: 1200px) {
  .receipt-content .container {width: 900px; } 
}

.receipt-content .logo {
  text-align: center;
  margin-top: 50px; 
}

.receipt-content .logo a {
  font-family: Myriad Pro, Lato, Helvetica Neue, Arial;
  font-size: 36px;
  letter-spacing: .1px;
  color: #555;
  font-weight: 300;
  -webkit-transition: all 0.2s linear;
  -moz-transition: all 0.2s linear;
  -ms-transition: all 0.2s linear;
  -o-transition: all 0.2s linear;
  transition: all 0.2s linear; 
}

.receipt-content .invoice-wrapper .intro {
  line-height: 25px;
  color: #444; 
}

.receipt-content .invoice-wrapper .payment-info {
  margin-top: 25px;
  padding-top: 15px; 
}

.receipt-content .invoice-wrapper .payment-info span {
  color: #A9B0BB; 
}

.receipt-content .invoice-wrapper .payment-info strong {
  display: block;
  color: #444;
  margin-top: 3px; 
}

@media (max-width: 767px) {
  .receipt-content .invoice-wrapper .payment-info .text-right {
  text-align: left;
  margin-top: 20px; } 
}
.receipt-content .invoice-wrapper .payment-details {
  border-top: 2px solid #EBECEE;
  margin-top: 30px;
  padding-top: 20px;
  line-height: 22px; 
}


@media (max-width: 767px) {
  .receipt-content .invoice-wrapper .payment-details .text-right {
  text-align: left;
  margin-top: 20px; } 
}
.receipt-content .invoice-wrapper .line-items {
  margin-top: 40px; 
}
.receipt-content .invoice-wrapper .line-items .headers {
  color: #A9B0BB;
  font-size: 13px;
  letter-spacing: .3px;
  border-bottom: 2px solid #EBECEE;
  padding-bottom: 4px; 
}
.receipt-content .invoice-wrapper .line-items .items {
  margin-top: 8px;
  border-bottom: 2px solid #EBECEE;
  padding-bottom: 8px; 
}
.receipt-content .invoice-wrapper .line-items .items .item {
  padding: 10px 0;
  color: #696969;
  font-size: 15px; 
}
@media (max-width: 767px) {
  .receipt-content .invoice-wrapper .line-items .items .item {
  font-size: 13px; } 
}
.receipt-content .invoice-wrapper .line-items .items .item .amount {
  letter-spacing: 0.1px;
  color: #84868A;
  font-size: 16px;
 }
@media (max-width: 767px) {
  .receipt-content .invoice-wrapper .line-items .items .item .amount {
  font-size: 13px; } 
}

.receipt-content .invoice-wrapper .line-items .total {
  margin-top: 30px; 
}

.receipt-content .invoice-wrapper .line-items .total .extra-notes {
  float: left;
  width: 40%;
  text-align: left;
  font-size: 13px;
  color: #7A7A7A;
  line-height: 20px; 
}

@media (max-width: 767px) {
  .receipt-content .invoice-wrapper .line-items .total .extra-notes {
  width: 100%;
  margin-bottom: 30px;
  float: none; } 
}

.receipt-content .invoice-wrapper .line-items .total .extra-notes strong {
  display: block;
  margin-bottom: 5px;
  color: #454545; 
}

.receipt-content .invoice-wrapper .line-items .total .field {
  margin-bottom: 7px;
  font-size: 14px;
  color: #555; 
}

.receipt-content .invoice-wrapper .line-items .total .field.grand-total {
  margin-top: 10px;
  font-size: 16px;
  font-weight: 500; 
}

.receipt-content .invoice-wrapper .line-items .total .field.grand-total span {
  color: #20A720;
  font-size: 16px; 
}

.receipt-content .invoice-wrapper .line-items .total .field span {
  display: inline-block;
  margin-left: 20px;
  min-width: 85px;
  color: #84868A;
  font-size: 15px; 
}

.receipt-content .invoice-wrapper .line-items .print {
  margin-top: 50px;
  text-align: center; 
}



.receipt-content .invoice-wrapper .line-items .print a i {
  margin-right: 3px;
  font-size: 14px; 
}

.receipt-content .footer {
  margin-top: 40px;
  margin-bottom: 110px;
  text-align: center;
  font-size: 12px;
  color: #969CAD; 
}                    
             
         </style>
         
    </head>
    <body>


        <%
        ResultSet rs=dbutil.DButil.read("SELECT * FROM `request` WHERE `mob` = '"+phone+"'");
        rs.next();
        %>

        <div class="receipt-content">
            <div class="container bootstrap snippets bootdey">
                <div class="row">
                    <div class="col-md-12">
                        <div class="invoice-wrapper">
                            <div class="intro">
                                Hi <strong><%=rs.getString(2)%></strong>, 
                                <br>
                                This is the receipt for Blood Donation Appointment.
                            </div>

                            <div class="payment-info">
                                <div class="row">
                                    <div class="col-sm-6">
                                        <span>Your Id:-</span>
                                        <strong><%=rs.getString(1)%></strong>
                                    </div>
                                    <div class="col-sm-6 text-right">
                                        <span>Appointment Date</span>
                                        <strong><%=rs.getString(6)%>, Between 10:00 AM To 05:00 PM</strong>
                                    </div>
                                </div>
                            </div>

                            <div class="payment-details">
                                <div class="row">
                                    <div class="col-sm-6">
                                        <span>Your Details</span>
                                        <strong>
                                            <%=rs.getString(2)%>
                                        </strong>
                                         <%
                                                String add[]=rs.getString(7).split(",");
                                                
                                            %> <p>
                                               <%=add[0]%>
                                           <br>
                                            <%=add[1]%> <br>
                                           <%=add[2]%> <br>
                                            <%=add[3]%><br>
                                           
                                                <%=rs.getString(4)%>
                                            
                                        </p>
                                    </div>
                                    <div class="col-sm-6 text-right">
                                        <span>Blood Donation Center Address</span>
                                        <strong>
                                            India's first free blood call center
                                        </strong>
                                        <p>
                                           Mog Line <br>
                                           Near Gangwal Bus Stand <br>
                                           Contact:1234567890 <br>
                                           Indore,Madhya Pradesh<br>
                                            <a href="https://www.facebook.com/pages/category/Social-Club/Indias-First-Blood-Call-Center-335158023907932/">
                                                Click To Check Website
                                            </a>
                                        </p>
                                    </div>
                                </div>
                            </div>

                            <div class="line-items">
                               
                                <div class="items">
                                    <hr>
                                    
                                <div class="total text-right">
                                    <p class="extra-notes">
                                        <strong>Extra Notes</strong>
                                        Feel Free To Contact Us:1234567890<br>
                                        Thanks A Lot!
                                        
                                    </p>
                                    <div class="field">
                                        Your Phone No. <span><%=rs.getString(3)%></span>
                                    </div>
                                    <div class="field">
                                        Your Appointment Date <span><%=rs.getString(6)%></span>
                                    </div>
                                    <div class="field">
                                        Your Blood Group<span><%=rs.getString(5)%></span>
                                    </div>                                   
                                </div>

                                <div class="print">
                                    <a onclick="window.print()">
                                        <i class="fa fa-print"></i>
                                        Print this receipt
                                    </a>
                                </div>
                            </div>
                        </div>

                        <div class="footer">
                            Copyright © 2014. company name
                        </div>
                    </div>
                </div>
            </div>
        </div>                    

        </div>




    </body>
</html>
<%}%>