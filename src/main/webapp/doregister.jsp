<%@page import="dao.DAO" %>
<%
	String email=request.getParameter("email");
	String password=request.getParameter("password");
	String phone=request.getParameter("phone");
	String address=request.getParameter("address");
	DAO dao=new DAO();
	if(dao.doRegister(email,password,phone,address))
	{
		response.sendRedirect("login.jsp?msg=RegistrationSuccessful");
	}
	else
	{
		response.sendRedirect("register.jsp?msg=RegistrationFailed");
	}
%>