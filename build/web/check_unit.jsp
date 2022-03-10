<%@page import="java.sql.ResultSet"%>
<%@page import="dbutil.DButil"%>
<%
    System.out.println("chala");
    String unit = request.getParameter("unit");
    int intunit = Integer.parseInt(unit);
    String blood = request.getParameter("blood");
    String name = request.getParameter("name");
    String phone = request.getParameter("phone");
    System.out.println(blood);
    ResultSet rs = dbutil.DButil.read("select `" + blood + "` from blood_stock");
    System.out.println("select '" + blood + "' from blood_stock");
    rs.next();
    int stock = Integer.parseInt(rs.getString(1));
    if (intunit < stock) {
        
        String qry = "INSERT INTO `blood_request` (`id`, `name`, `phone`, `bloodtype`, `units`) VALUES ('" + name.substring(0, 3) + phone.substring(5) + "', '" + name + "', '" + phone + "', '" + blood + "', '" + unit + "');";

        dbutil.DButil.insert(qry);
        session.setAttribute("phone", phone);
       out.print(1);
      
    } else {
        out.print("<div class='text-danger'> " + unit + " unit of " +blood  + " Not in Stock! </div>");
    }

%>