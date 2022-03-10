<%@page import="java.sql.ResultSet"%>
<%
    
        ResultSet rs=dbutil.DButil.read("SELECT * FROM `request` WHERE `id` = '"+request.getParameter("id")+"'");
        rs.next();
        %>
        <div class="container">
            <div class="logo">
                India's first free blood call center
            </div>

            <div class="marquee">
                <strong><em>Certificate For Blood Donation.</em></strong>
            </div>

            <div class="assignment">
                This certificate is gratefully presented to
            </div>

            <div class="person">
                <%=rs.getString(2)%>
            </div>

            <div class="reason">
                <em>We Are Highly Thankfull For Contributing<strong> <%=rs.getString(9)%> units </strong>Towards Blood Donation.</em>
            </div>
            <div class="print" id="printPageButton">
                                    <a onclick="window.print()">
                                        <i class="fa fa-print"></i>
                                        Print this Certificate
                                    </a>
                                </div>