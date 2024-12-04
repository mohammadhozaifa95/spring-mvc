<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Registration</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* Style for the first row (header) to have a full blue background */
        .header-row {
            background-color: #007bff;
            color: white;
            padding: 15px;
            text-align: center;
        }

        /* Style for the register button (green color and centered) */
        .btn-register {
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

        .btn-register:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>
<div class="container">
    <!-- Header Row with blue background -->
    <div class="header-row">
        <h2>Student Registration</h2>
    </div>

    <!-- Registration Form -->
    <div class="form-container">
        <form action="s" method="post">
            <div class="form-group">
                <label for="name">Name:</label>
                <input type="text" class="form-control" id="name" name="name" required>
            </div>

            <div class="form-group">
                <label for="gender">Gender:</label>
                <select class="form-control" id="gender" name="gender" required>
                    <option>Male</option>
                    <option>Female</option>
                </select>
            </div>

            <div class="form-group">
                <label>Courses:</label><br>
                <input type="checkbox" name="course" value="Math"> Math
                <input type="checkbox" name="course" value="Science"> Science
                <input type="checkbox" name="course" value="History"> History
            </div>

            <div class="form-group">
                <label>Student Type:</label><br>
                <input type="checkbox" name="studentType" value="Full-time"> Full-time
                <input type="checkbox" name="studentType" value="Part-time"> Part-time
            </div>

            <div class="form-group">
                <label for="dob">Date of Birth:</label>
                <input type="date" class="form-control" id="dob" name="dob" required>
            </div>

            <!-- Green register button centered -->
            <button type="submit" class="btn-register">Register</button>
        </form>
    </div>
</div>
</body>
</html>
