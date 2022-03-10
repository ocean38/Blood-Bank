<%@page import="java.sql.ResultSet"%>
<%
    
String blood_grp= request.getParameter("grp");
String units= request.getParameter("units");
System.out.println("UPDATE `blood_stock` SET `"+blood_grp+"` = (SELECT `"+blood_grp+"` FROM blood_stock)-"+units+"");

dbutil.DButil.Update("UPDATE `blood_stock` SET `"+blood_grp+"` = (SELECT `"+blood_grp+"` FROM blood_stock)-"+units+"");
 ResultSet rs=dbutil.DButil.read("select `"+blood_grp+"` from blood_stock");
 rs.next();
 out.println(rs.getString(1));
%>