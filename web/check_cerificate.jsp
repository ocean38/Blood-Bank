<%@page import="java.sql.ResultSet"%>
<%
    ResultSet rs = dbutil.DButil.read("SELECT * FROM `request` WHERE id='" + request.getParameter("id") + "'");
    System.out.println("SELECT * FROM `request` WHERE id='" + request.getParameter("id") + "'");
    if (rs.next()) {
        if (rs.getString(8).equals("true")) {
            response.sendRedirect("download_certi.jsp?id=" + request.getParameter("id") + "");
            System.out.println("1");
        } else {
            System.out.println("2");
            response.sendRedirect("download_recipt.jsp?id=" + request.getParameter("id") + "");
        }
    } else {
        out.print("Not Found");
        System.out.println("3");
    }
%>