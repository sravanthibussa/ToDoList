<%@ page import="dao.DAO" %>
<%
	String task=request.getParameter("task");
	String startdate=request.getParameter("startdate");
	String starttime=request.getParameter("starttime");
	String enddate=request.getParameter("enddate");
	String endtime=request.getParameter("endtime");
	/*
		Q) What is the return type of getAttribute() method?
		Ans) Object
	*/ 
	String activeUserEmail=(String)session.getAttribute("email");
	DAO dao=new DAO();
	if(activeUserEmail!=null)
	{
		boolean flag=dao.addToDo(activeUserEmail,task,startdate,starttime,enddate,endtime);
		if(flag){
			response.sendRedirect("UserHome.jsp?msg=ToDo Is Added.");
		}
		else{
			response.sendRedirect("UserHome.jsp?msg=Failed To Add ToDo");
		}
	}else{
		response.sendRedirect("index.jsp?msg=You Can't Cheat me aaaaa.....");
	}
%>