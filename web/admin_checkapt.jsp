<%@page import="java.sql.ResultSet"%>
<%

    String id = request.getParameter("id");

    ResultSet rs = dbutil.DButil.read("select * from request where id='" + id + "'");
    System.out.println("select * from request where id='" + id + "'");
    if (rs.next()) {
        out.println("<form role='form' action='update_donor.jsp' method='post'>");
    
    out.println("<div class='form-group'>");
    out.println("<label >ID</label>");
    out.println("<input class='form-control' type='text' name='userid' id='id' readonly value='"+rs.getString(1)+"'>");
    out.println("</div>");
    out.println("<div class='form-group'>");
    out.println("<label for='grp'>Blood Group</label>");
    out.println("<div class='row form-row'>");
    out.println("<select class='form-control' name='blood_grp' id='grp'>");
    
    out.println("<option selected disabled>Update Blood Group</option>");
    out.println("<option value='A+'>A+</option>");
    out.println("<option value='A-'>A-</option>");
    out.println("<option value='B+'>B+</option>");
    out.println("<option value='B-'>B-</option>");
    out.println("<option value='AB+'>AB+</option>");
    out.println("<option value='AB-'>AB-</option>");
    out.println("<option value='O+'>O+</option>");
    out.println("<option value='O-'>O-</option>");
    out.println("</select>");
    out.println("</div>");
    out.println("</div>");
    out.println("<div class='form-group'>");
    out.println("<label for='donated'>Donated</label>");
    out.println("<div class='row form-row'>");
    out.println("<select class='form-control' name='donated' id='donated'>");
    out.println("<option selected disabled>Donated</option>");
    out.println("<option value='true'>Yes</option>");
    out.println("<option value='false'>No</option>");
    out.println("</select>");
    out.println("</div>");
    out.println("</div>");
    out.println("<div class='form-group'>");
    out.println("<label for='units'>Units Donated</label>");
    out.println("<input class='form-control' type='number' name='unit' id='units' onkeypress='return event.charCode >= 48' min='0' required>");
    out.println(" </div>");
    out.println(" <button type='submit' class='btn btn-default'><b>Submit</b></button>");
    out.println("</form>");
    }
%>