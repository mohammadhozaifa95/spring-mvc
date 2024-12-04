<%@ page isELIgnored="false" language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Student</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* Style for the first row (header) to have a full blue background */
        .header-row {
            background-color: #007bff;
            color: white;
            padding: 15px;
            text-align: center;
        }

        /* Style for the update button (green color and centered) */
        .btn-update {
            background-color: #28a745;
            color: white;
            width: 100%;
            padding: 10px;
            font-size: 18px;
            border-radius: 5px;
        }

        /* Style to center the form elements */
        .form-container {
            margin-top: 20px;
        }

        /* Additional form styling */
        .form-group {
            margin-bottom: 1.5rem;
        }

        .form-control {
            border-radius: 5px;
        }

        .btn-update:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>
<div class="container">
    <!-- Header Row with blue background -->
    <div class="header-row">
        <h2>Update Student</h2>
    </div>

    <!-- Update Form -->
    <div class="form-container">
        <form action="${pageContext.request.contextPath}/K/${student.id}" method="post">
            <input type="hidden" name="id" value="${student.id}">
            
            <div class="form-group">
                <label for="name">Name:</label>
                <input type="text" class="form-control" id="name" name="name" value="${student.name}" required>
            </div>

            <div class="form-group">
                <label for="gender">Gender:</label>
                <select class="form-control" id="gender" name="gender" required>
                    <option value="Male" ${student.gender == 'Male' ? 'selected' : ''}>Male</option>
                    <option value="Female" ${student.gender == 'Female' ? 'selected' : ''}>Female</option>
                </select>
            </div>

            <div class="form-group">
                <label>Courses:</label><br>
                <!-- Loop through the student's courses to pre-select checkboxes -->
                <c:forEach var="course" items="${student.course}">
                    <input type="checkbox" name="course" value="${course}" 
                        ${fn:contains(student.course, course) ? 'checked' : ''}> ${course}
                </c:forEach>

                <!-- Additional static courses -->
                <input type="checkbox" name="course" value="Math" 
                    ${fn:contains(student.course, 'Math') ? 'checked' : ''}> Math
                <input type="checkbox" name="course" value="Science" 
                    ${fn:contains(student.course, 'Science') ? 'checked' : ''}> Science
                <input type="checkbox" name="course" value="History" 
                    ${fn:contains(student.course, 'History') ? 'checked' : ''}> History
            </div>

            <div class="form-group">
                <label>Student Type:</label><br>
                <input type="radio" name="studentType" value="Full-time" 
                    ${student.studentType == 'Full-time' ? 'checked' : ''}> Full-time
                <input type="radio" name="studentType" value="Part-time" 
                    ${student.studentType == 'Part-time' ? 'checked' : ''}> Part-time
            </div>

            <div class="form-group">
                <label for="dob">Date of Birth:</label>
                <input type="date" class="form-control" id="dob" name="dob" value="${student.dob}" required>
            </div>

            <!-- Green update button centered -->
            <button type="submit" class="btn-update">Update</button>
            <a href="${pageContext.request.contextPath}/students" class="btn btn-secondary" style="width: 100%; margin-top: 10px;">Cancel</a>
        </form>
    </div>
</div>
</body>
</html>
