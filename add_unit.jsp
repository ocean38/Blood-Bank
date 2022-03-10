<%
    
String blood_grp= request.getParameter("blood_grp");
String units= request.getParameter("units");
System.out.println("UPDATE `blood_stock` SET `"+blood_grp+"` = (SELECT `"+blood_grp+"` FROM blood_stock)+"+units+"");
DB.sqlutil.connect();
DB.sqlutil.stmt.executeUpdate("UPDATE `blood_stock` SET `"+blood_grp+"` = (SELECT `"+blood_grp+"` FROM blood_stock)+"+units+"");
%>