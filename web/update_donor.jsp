<%
    String id, grp, unit, donated, qry;
    
    id = request.getParameter("userid");
    grp = request.getParameter("blood_grp");
    unit = request.getParameter("unit");
    donated = request.getParameter("donated");
    
    qry = "UPDATE `request` SET `bloodgroup`='" + grp + "',`isDonated`='" + donated + "',`units`=`units`+'" + unit + "' WHERE id='" + id + "'";
    
    dbutil.DButil.Update(qry);
    response.sendRedirect("admin_donar.jsp");
%>