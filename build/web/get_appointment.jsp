<%
    String name, email, phone, blood_grp, appointment, area,city,state,code,qry,address;

    name = request.getParameter("full_name");
    email = request.getParameter("email");
    phone = request.getParameter("phone");
    blood_grp = request.getParameter("blood_grp");
    appointment = request.getParameter("Date");
    area = request.getParameter("area");
    city = request.getParameter("city");
    state = request.getParameter("state");
    code = request.getParameter("pin_code");
    address=area+","+city+","+state+","+code;
    qry="INSERT INTO `request` (`id`,`name`, `mob`, `email`, `bloodgroup`, `appointment_date`, `address`) VALUES ('"+name.substring(0,3)+phone.substring(5) +"','"+name+"', '"+phone+"', '"+email+"', '"+blood_grp+"', '"+appointment+"', '"+address+"')";
    
    dbutil.DButil.insert(qry);
    session.setAttribute("phone",phone);
    response.sendRedirect("recipt.jsp");
    
%>