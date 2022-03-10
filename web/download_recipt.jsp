 <%@page import="java.sql.ResultSet"%>
<%
    
        ResultSet rs=dbutil.DButil.read("SELECT * FROM `request` WHERE `id` = '"+request.getParameter("id")+"'");
        rs.next();
        %>

<div class="receipt-content">
    <div class="container bootstrap snippets bootdey" style="border: none!important">
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

                                <div class="print" id="printPageButton">
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

