<%@page import="com.jsp.library.entity.Book"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Library Management System</title>
</head>
<body style="margin:0; padding:0; font-family:'Segoe UI',Arial,sans-serif; background:#f0f2f5; min-height:100vh;">

  <!-- ===== HEADER ===== -->
  <div style="background:linear-gradient(135deg,#1a237e 0%,#283593 60%,#3949ab 100%); padding:32px 20px 24px; text-align:center; box-shadow:0 4px 16px rgba(26,35,126,0.18);">
    <div style="display:inline-flex; align-items:center; gap:14px; margin-bottom:8px;">
      <span style="font-size:36px;">📚</span>
      <h1 style="margin:0; font-size:32px; font-weight:700; color:#ffffff; letter-spacing:1.5px; text-shadow:0 2px 8px rgba(0,0,0,0.18);">Library Management System</h1>
    </div>
    <p style="margin:0; color:#c5cae9; font-size:14px; letter-spacing:2px; text-transform:uppercase;">Manage Books · Students · Issues</p>
  </div>

  <!-- ===== NAV BUTTONS ===== -->
  <div style="display:flex; justify-content:center; gap:16px; flex-wrap:wrap; padding:28px 20px 0;">

    <a href="addBookPage" style="display:inline-flex; align-items:center; gap:8px; background:#ffffff; color:#1a237e; text-decoration:none; padding:12px 28px; border-radius:8px; font-size:14px; font-weight:600; letter-spacing:0.5px; border:2px solid #c5cae9; box-shadow:0 2px 8px rgba(26,35,126,0.08); transition:all 0.2s;">
      <span style="font-size:18px;">➕</span> Add Book
    </a>

    <a href="addStudentPage" style="display:inline-flex; align-items:center; gap:8px; background:#ffffff; color:#1a237e; text-decoration:none; padding:12px 28px; border-radius:8px; font-size:14px; font-weight:600; letter-spacing:0.5px; border:2px solid #c5cae9; box-shadow:0 2px 8px rgba(26,35,126,0.08);">
      <span style="font-size:18px;">🎓</span> Add Student
    </a>

    <a href="issueDetails" style="display:inline-flex; align-items:center; gap:8px; background:#1a237e; color:#ffffff; text-decoration:none; padding:12px 28px; border-radius:8px; font-size:14px; font-weight:600; letter-spacing:0.5px; box-shadow:0 2px 8px rgba(26,35,126,0.22);">
      <span style="font-size:18px;">📋</span> View Issue Details
    </a>

  </div>

  <!-- ===== TABLE SECTION ===== -->
  <div style="max-width:900px; margin:28px auto 40px; padding:0 16px;">

    <div style="background:#ffffff; border-radius:12px; box-shadow:0 2px 16px rgba(26,35,126,0.10); overflow:hidden;">

      <div style="padding:18px 28px; border-bottom:1px solid #e8eaf6;">
        <h2 style="margin:0; font-size:17px; font-weight:600; color:#1a237e;">📖 All Books</h2>
      </div>

      <div style="overflow-x:auto;">
        <table style="width:100%; border-collapse:collapse; font-size:14px;">
          <thead>
            <tr style="background:#e8eaf6;">
              <th style="padding:14px 20px; text-align:left; font-weight:600; color:#3949ab; letter-spacing:0.5px; font-size:12px; text-transform:uppercase;">#</th>
              <th style="padding:14px 20px; text-align:left; font-weight:600; color:#3949ab; letter-spacing:0.5px; font-size:12px; text-transform:uppercase;">Book Name</th>
              <th style="padding:14px 20px; text-align:left; font-weight:600; color:#3949ab; letter-spacing:0.5px; font-size:12px; text-transform:uppercase;">Author</th>
              <th style="padding:14px 20px; text-align:center; font-weight:600; color:#3949ab; letter-spacing:0.5px; font-size:12px; text-transform:uppercase;">Available Copies</th>
              <th style="padding:14px 20px; text-align:center; font-weight:600; color:#3949ab; letter-spacing:0.5px; font-size:12px; text-transform:uppercase;">Action</th>
            </tr>
          </thead>
          <tbody>
            <%
              List<Book> list = (List<Book>) request.getAttribute("list");
              int serial = 1;
              for (Book book : list) {
                String rowBg = (serial % 2 == 0) ? "#f8f9fe" : "#ffffff";
            %>
            <tr style="background:<%= rowBg %>; border-bottom:1px solid #e8eaf6;">
              <td style="padding:14px 20px; color:#9fa8da; font-weight:600;"><%= serial++ %></td>
              <td style="padding:14px 20px; color:#1a237e; font-weight:500;"><%= book.getName() %></td>
              <td style="padding:14px 20px; color:#455a64;"><%= book.getAuthour() %></td>
              <td style="padding:14px 20px; text-align:center;">
                <span style="display:inline-block; background:<%= book.getAvailableCopies() > 0 ? "#e8f5e9" : "#ffebee" %>; color:<%= book.getAvailableCopies() > 0 ? "#2e7d32" : "#c62828" %>; padding:4px 14px; border-radius:20px; font-weight:600; font-size:13px;">
                  <%= book.getAvailableCopies() %>
                </span>
              </td>
              <td style="padding:14px 20px; text-align:center;">
                <a href="issuePage?id=<%= book.getId() %>" style="display:inline-flex; align-items:center; gap:6px; background:#1a237e; color:#ffffff; text-decoration:none; padding:7px 20px; border-radius:6px; font-size:13px; font-weight:600; letter-spacing:0.3px;">
                  📤 Issue
                </a>
              </td>
            </tr>
            <% } %>
          </tbody>
        </table>
      </div>

      <div style="padding:14px 28px; background:#f8f9fe; border-top:1px solid #e8eaf6; text-align:right;">
        <span style="font-size:13px; color:#9fa8da;">Total books: <strong style="color:#1a237e;"><%= list.size() %></strong></span>
      </div>

    </div>
  </div>

  <!-- ===== FOOTER ===== -->
  <div style="text-align:center; padding:18px; color:#9fa8da; font-size:12px; letter-spacing:0.5px;">
    &copy; 2026 Library Management System &mdash;  All rights reserved &mdash; Developed by <a href="https://aashuprakash.vercel.app/" target="_blank">Aashu Prakash</a> 
  </div>

</body>
</html>