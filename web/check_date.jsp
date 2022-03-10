<%@page import="java.sql.ResultSet"%>
<%@page import="dbutil.DButil"%>
<%

    ResultSet rs = dbutil.DButil.read("SELECT count(*) from request WHERE appointment_date='" + request.getParameter("date") + "'");
    System.out.println("SELECT count(*) from request WHERE appointment_date='" + request.getParameter("date") + "'");
    rs.next();
    out.print(rs.getString(1));

%>