<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="javax.servlet.http.HttpServletRequest" %>
<%@ page import="javax.servlet.http.HttpServletResponse" %>
<%@ page import="Message, MessageBoard" %>

<%
    String messageText = request.getParameter("message");
    if (messageText != null && !messageText.isEmpty()) {
        Message message = new Message(messageText);
        MessageBoard messageBoard = (MessageBoard) application.getAttribute("messageBoard");
        messageBoard.addMessage(message);
    }

    List<Message> messages = ((MessageBoard) application.getAttribute("messageBoard")).getMessages();
    request.setAttribute("messages", messages);

    request.getRequestDispatcher("message_board.html").forward(request, response);
%>
