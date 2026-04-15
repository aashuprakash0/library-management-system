<%@page import="com.jsp.library.entity.Issue"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Issue Details</title>
</head>
<body style="margin:0; padding:0; font-family:'Segoe UI',Arial,sans-serif; background:#f0f2f5; min-height:100vh;">

  <%
    List<Issue> list = (List<Issue>) request.getAttribute("list");
  %>

  <!-- Header -->
  <div style="background:linear-gradient(135deg,#1a237e 0%,#283593 60%,#3949ab 100%); padding:32px 20px 24px; text-align:center;">
    <span style="font-size:36px;">📋</span>
    <h1 style="margin:10px 0 4px; font-size:28px; font-weight:700; color:#ffffff; letter-spacing:1px;">Issue Details</h1>
    <p style="margin:0; color:#c5cae9; font-size:13px; letter-spacing:1.5px; text-transform:uppercase;">All book issue records</p>
  </div>

  <!-- Back Link -->
  <div style="max-width:1000px; margin:24px auto 0; padding:0 16px;">
    <a href="javascript:history.back()" style="font-size:13px; color:#7986cb; text-decoration:none;">← Back to Dashboard</a>
  </div>

  <!-- Table Card -->
  <div style="max-width:1000px; margin:16px auto 40px; padding:0 16px;">
    <div style="background:#ffffff; border-radius:12px; box-shadow:0 2px 16px rgba(26,35,126,0.10); overflow:hidden;">

      <div style="padding:18px 28px; border-bottom:1px solid #e8eaf6;">
        <h2 style="margin:0; font-size:17px; font-weight:600; color:#1a237e;">All Issued Books</h2>
      </div>

      <div style="overflow-x:auto;">
        <table style="width:100%; border-collapse:collapse; font-size:14px;">
          <thead>
            <tr style="background:#e8eaf6;">
              <th style="padding:14px 20px; text-align:left; font-size:11px; font-weight:700; color:#3949ab; letter-spacing:0.8px; text-transform:uppercase;">#</th>
              <th style="padding:14px 20px; text-align:left; font-size:11px; font-weight:700; color:#3949ab; letter-spacing:0.8px; text-transform:uppercase;">Student</th>
              <th style="padding:14px 20px; text-align:left; font-size:11px; font-weight:700; color:#3949ab; letter-spacing:0.8px; text-transform:uppercase;">Book</th>
              <th style="padding:14px 20px; text-align:left; font-size:11px; font-weight:700; color:#3949ab; letter-spacing:0.8px; text-transform:uppercase;">Issue Date</th>
              <th style="padding:14px 20px; text-align:left; font-size:11px; font-weight:700; color:#3949ab; letter-spacing:0.8px; text-transform:uppercase;">Return Date</th>
              <th style="padding:14px 20px; text-align:center; font-size:11px; font-weight:700; color:#3949ab; letter-spacing:0.8px; text-transform:uppercase;">Status</th>
              <th style="padding:14px 20px; text-align:center; font-size:11px; font-weight:700; color:#3949ab; letter-spacing:0.8px; text-transform:uppercase;">Action</th>
            </tr>
          </thead>
          <tbody>
            <%
              int sr = 1;
              for (Issue issue : list) {
                String rowBg = (sr % 2 == 0) ? "#f8f9fe" : "#ffffff";
                boolean isIssued = issue.getStatus().equals("ISSUED");
            %>
            <tr style="background:<%= rowBg %>; border-bottom:1px solid #e8eaf6;">

              <td style="padding:14px 20px; color:#9fa8da; font-weight:600;"><%= sr++ %></td>

              <td style="padding:14px 20px;">
                <div style="display:flex; align-items:center; gap:10px;">
                  <div style="width:32px; height:32px; border-radius:50%; background:#e8eaf6; display:flex; align-items:center; justify-content:center; font-size:13px; font-weight:700; color:#3949ab;">
                    <%= issue.getStudent().getName().charAt(0) %>
                  </div>
                  <span style="color:#1a237e; font-weight:500;"><%= issue.getStudent().getName() %></span>
                </div>
              </td>

              <td style="padding:14px 20px; color:#455a64;"><%= issue.getBook().getName() %></td>

              <td style="padding:14px 20px; color:#546e7a; font-size:13px;"><%= issue.getIssueDate() %></td>

              <td style="padding:14px 20px; color:#546e7a; font-size:13px;"><%= issue.getReturnDate() %></td>

              <td style="padding:14px 20px; text-align:center;">
                <span style="display:inline-block; padding:4px 14px; border-radius:20px; font-size:12px; font-weight:600;
                  background:<%= isIssued ? "#fff8e1" : "#e8f5e9" %>;
                  color:<%= isIssued ? "#f57f17" : "#2e7d32" %>;">
                  <%= issue.getStatus() %>
                </span>
              </td>

              <td style="padding:14px 20px; text-align:center;">
                <% if (isIssued) { %>
                  <a href="returnBook?id=<%= issue.getId() %>"
                    style="display:inline-block; background:#c62828; color:#ffffff; text-decoration:none; padding:7px 18px; border-radius:6px; font-size:13px; font-weight:600;">
                    🔄 Return
                  </a>
                <% } else { %>
                  <span style="color:#aab0c0; font-size:13px;">—</span>
                <% } %>
              </td>

            </tr>
            <% } %>
          </tbody>
        </table>
      </div>

      <div style="padding:14px 28px; background:#f8f9fe; border-top:1px solid #e8eaf6; text-align:right;">
        <span style="font-size:13px; color:#9fa8da;">Total records: <strong style="color:#1a237e;"><%= list.size() %></strong></span>
      </div>

    </div>
  </div>

</body>
</html>