<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Student</title>
</head>
<body style="margin:0; padding:0; font-family:'Segoe UI',Arial,sans-serif; background:#f0f2f5; min-height:100vh; display:flex; align-items:center; justify-content:center;">

  <div style="background:#ffffff; border-radius:14px; box-shadow:0 4px 24px rgba(26,35,126,0.12); padding:40px 44px; width:100%; max-width:420px;">

    <!-- Header -->
    <div style="text-align:center; margin-bottom:32px;">
      <span style="font-size:40px;">🎓</span>
      <h1 style="margin:10px 0 4px; font-size:22px; font-weight:700; color:#1a237e;">Add New Student</h1>
      <p style="margin:0; font-size:13px; color:#9fa8da; letter-spacing:0.5px;">Fill in the details below to register</p>
    </div>

    <!-- Form -->
    <form action="addStudent" method="post">

      <!-- Name Field -->
      <div style="margin-bottom:20px;">
        <label style="display:block; font-size:13px; font-weight:600; color:#3949ab; margin-bottom:7px; letter-spacing:0.4px;">FULL NAME</label>
        <input type="text" name="name" placeholder="Enter student name"
          style="width:100%; padding:11px 14px; border:1.5px solid #c5cae9; border-radius:8px; font-size:14px; color:#1a237e; background:#f8f9fe; box-sizing:border-box; outline:none; font-family:inherit;">
      </div>

      <!-- Email Field -->
      <div style="margin-bottom:28px;">
        <label style="display:block; font-size:13px; font-weight:600; color:#3949ab; margin-bottom:7px; letter-spacing:0.4px;">EMAIL ADDRESS</label>
        <input type="text" name="email" placeholder="Enter email address"
          style="width:100%; padding:11px 14px; border:1.5px solid #c5cae9; border-radius:8px; font-size:14px; color:#1a237e; background:#f8f9fe; box-sizing:border-box; outline:none; font-family:inherit;">
      </div>

      <!-- Submit Button -->
      <input type="submit" value="➕  Add Student"
        style="width:100%; padding:13px; background:#1a237e; color:#ffffff; border:none; border-radius:8px; font-size:15px; font-weight:600; letter-spacing:0.5px; cursor:pointer; font-family:inherit;">

    </form>

    <!-- Back Link -->
    <div style="text-align:center; margin-top:20px;">
      <a href="javascript:history.back()" style="font-size:13px; color:#9fa8da; text-decoration:none;">← Back to Dashboard</a>
    </div>

  </div>

</body>
</html>