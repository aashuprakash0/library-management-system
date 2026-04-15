<%@page import="com.jsp.library.entity.Student"%>
<%@page import="java.util.List"%>
<%@page import="com.jsp.library.entity.Book"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Issue Book</title>
</head>
<body style="margin:0; padding:0; font-family:'Segoe UI',Arial,sans-serif; background:#f0f2f5; min-height:100vh; display:flex; align-items:center; justify-content:center;">

  <%
    Book book = (Book) request.getAttribute("book");
    List<Student> list = (List<Student>) request.getAttribute("list");
  %>

  <div style="background:#ffffff; border-radius:14px; box-shadow:0 4px 24px rgba(26,35,126,0.12); padding:40px 44px; width:100%; max-width:440px;">

    <!-- Header -->
    <div style="text-align:center; margin-bottom:28px;">
      <span style="font-size:40px;">📤</span>
      <h1 style="margin:10px 0 4px; font-size:22px; font-weight:700; color:#1a237e;">Issue Book</h1>
      <p style="margin:0; font-size:13px; color:#9fa8da; letter-spacing:0.5px;">Assign a book to a student</p>
    </div>

    <!-- Book Info Badge -->
    <div style="background:#e8eaf6; border-radius:8px; padding:14px 18px; margin-bottom:28px; display:flex; align-items:center; gap:12px;">
      <span style="font-size:22px;">📖</span>
      <div>
        <p style="margin:0; font-size:11px; color:#7986cb; font-weight:600; letter-spacing:0.5px;">SELECTED BOOK</p>
        <p style="margin:4px 0 0; font-size:16px; font-weight:700; color:#1a237e;"><%= book.getName() %></p>
      </div>
    </div>

    <form action="issueBook" method="post">
      <input type="hidden" name="bookId" value="<%= book.getId() %>">

      <!-- Student Dropdown -->
      <div style="margin-bottom:28px;">
        <label style="display:block; font-size:13px; font-weight:600; color:#3949ab; margin-bottom:7px; letter-spacing:0.4px;">SELECT STUDENT</label>
        <select name="studentId"
          style="width:100%; padding:11px 14px; border:1.5px solid #c5cae9; border-radius:8px; font-size:14px; color:#1a237e; background:#f8f9fe; box-sizing:border-box; outline:none; font-family:inherit; cursor:pointer;">
          <% for (Student student : list) { %>
            <option value="<%= student.getId() %>"><%= student.getName() %></option>
          <% } %>
        </select>
      </div>

      <input type="submit" value="📤  Issue Book"
        style="width:100%; padding:13px; background:#1a237e; color:#ffffff; border:none; border-radius:8px; font-size:15px; font-weight:600; letter-spacing:0.5px; cursor:pointer; font-family:inherit;">

    </form>

    <div style="text-align:center; margin-top:20px;">
      <a href="javascript:history.back()" style="font-size:13px; color:#9fa8da; text-decoration:none;">← Back to Dashboard</a>
    </div>

  </div>

</body>
</html>