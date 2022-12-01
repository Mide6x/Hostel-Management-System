<?php
session_start();
include('includes/config.php');
if (isset($_POST['submit'])) {
	$regno = $_POST['regno'];
	$fname = $_POST['fname'];
	$mname = $_POST['mname'];
	$lname = $_POST['lname'];
	$gender = $_POST['gender'];
	$contactno = $_POST['contact'];
	$course = $_POST['course'];
	$hostel = $_POST['hostel'];
	$emailid = $_POST['email'];
	$password = $_POST['password'];
	$result = "SELECT count(*) FROM userRegistration WHERE email=? || regNo=?";
	$stmt = $mysqli->prepare($result);
	$stmt->bind_param('ss', $email, $regno);
	$stmt->execute();
	$stmt->bind_result($count);
	$stmt->fetch();
	$stmt->close();
	if ($count > 0) {
		echo "<script>alert('Registration number or email id already registered.');</script>";
	} else {

		$query = "insert into  userRegistration(regNo,firstName,middleName,lastName,gender,contactNo,course,hostel,email,password) values(?,?,?,?,?,?,?,?,?,?)";
		$stmt = $mysqli->prepare($query);
		$rc = $stmt->bind_param('sssssissss', $regno, $fname, $mname, $lname, $gender, $contactno, $course, $hostel, $emailid, $password);
		$stmt->execute();
		echo "<script>alert('Student Succssfully register');</script>";
	}
}
?>

<!doctype html>
<html lang="en" class="no-js">

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
	<meta name="description" content="">
	<meta name="author" content="">
	<meta name="theme-color" content="#3e454c">
	<title>Student Registration</title>
	<!-- CSS only -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/dataTables.bootstrap.min.css">>
	<link rel="stylesheet" href="css/bootstrap-social.css">
	<link rel="stylesheet" href="css/bootstrap-select.css">
	<link rel="stylesheet" href="css/fileinput.min.css">
	<link rel="stylesheet" href="css/awesome-bootstrap-checkbox.css">
	<link rel="stylesheet" href="css/style.css">
	<script type="text/javascript" src="js/jquery-1.11.3-jquery.min.js"></script>
	<script type="text/javascript" src="js/validation.min.js"></script>
	<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
	<script type="text/javascript">
		function valid() {
			if (document.registration.password.value != document.registration.cpassword.value) {
				alert("Password and Re-Type Password Field do not match  !!");
				document.registration.cpassword.focus();
				return false;
			}
			return true;
		}
	</script>
</head>

<body>
	<?php include('includes/header.php'); ?>
	<div class="ts-main-content">
		<?php include('includes/sidebar.php'); ?>
		<div class="content-wrapper">
			<div class="container-fluid">

				<div class="row">
					<div class="col-md-12">

						<h2 class="page-title">Student Registration </h2>

						<div class="row">
							<div class="col-md-12">
								<div class="panel panel-primary">
									<div class="panel-heading">Fill all Info</div>
									<div class="panel-body">
										<form method="post" action="" name="registration" class="form-horizontal" onSubmit="return valid();">



											<div class="form-group">
												<label class="col-sm-2 control-label"> Matric No : </label>
												<div class="col-sm-8">
													<input type="text" name="regno" id="regno" class="form-control" required="required" onBlur="checkRegnoAvailability()">
													<span id="user-reg-availability" style="font-size:12px;"></span>
												</div>
											</div>


											<div class="form-group">
												<label class="col-sm-2 control-label">First Name : </label>
												<div class="col-sm-8">
													<input type="text" name="fname" id="fname" class="form-control" required="required">
												</div>
											</div>

											<div class="form-group">
												<label class="col-sm-2 control-label">Middle Name : </label>
												<div class="col-sm-8">
													<input type="text" name="mname" id="mname" class="form-control">
												</div>
											</div>

											<div class="form-group">
												<label class="col-sm-2 control-label">Last Name : </label>
												<div class="col-sm-8">
													<input type="text" name="lname" id="lname" class="form-control" required="required">
												</div>
											</div>

											<div class="form-group">
												<label class="col-sm-2 control-label">Gender : </label>
												<div class="col-sm-8">
													<select name="gender" class="form-control" required="required">
														<option value="">Select Gender</option>
														<option value="male">Male</option>
														<option value="female">Female</option>
													</select>
												</div>
											</div>

											<div class="form-group">
												<label class="col-sm-2 control-label">Contact No : </label>
												<div class="col-sm-8">
													<input type="text" name="contact" id="contact" class="form-control" required="required">
												</div>
											</div>

											<div class="form-group">
												<label class="col-sm-2 control-label">Course of Study : </label>
												<div class="col-sm-8">
													<select name="course" class="form-control" required="required">
														<option value="">Select Your Course of Study</option>
														<option value="acc">Accounting</option>
														<option value="agric">Agriculture</option>
														<option value="archi">Architecture</option>
														<option value="bankf">Banking and Finance</option>
														<option value="bioch">Biochemistry</option>
														<option value="busadm">Business Administration</option>
														<option value="crs">Christian Religious Studies</option>
														<option value="civile">Civil Engineering</option>
														<option value="compeng">Computer Engineering</option>
														<option value="csc">Computer Science</option>
														<option value="eco">Economics</option>
														<option value="educsc">Education and Computer Science</option>
														<option value="edueco">Education and Economics</option>
														<option value="edueng">Education and English Language</option>
														<option value="englang">English Language</option>
														<option value="estman">Estate Management</option>
														<option value="geo">Geology</option>
														<option value="gandc">Guidiance and Counselling</option>
														<option value="hir">Histroy and International Relations</option>
														<option value="ichem">Industrial Chemistry</option>
														<option value="irpm">Industrial relations and personnel management</option>
														<option value="law">Law</option>
														<option value="lis">Library and Information Science</option>
														<option value="masscom">Mass communication</option>
														<option value="maths">Mathematics</option>
														<option value="mecheng">Mechanical Engineering</option>
														<option value="mls">Medical Laboratory Science</option>
														<option value="mcb">Microbiology</option>
														<option value="msc">Music</option>
														<option value="pscr">Peace Strategy and Conflict Resolution</option>
														<option value="parts">Performing Arts</option>
														<option value="pelect">Physics with Electronics</option>
														<option value="psci">Political Science</option>
														<option value="rrs">Radiography ad Radiation Science</option>
														<option value="stats">Statistics</option>
														<option value="sginfo">Surveying and Geo-Informatics</option>
														<option value="tes">Teacher Education Science</option>
													</select>
												</div>
											</div>


											<div class="form-group">
												<label class="col-sm-2 control-label">Preferred Hostel : </label>
												<div class="col-sm-8">
													<select name="hostel" class="form-control" required="required">
														<option value="">Select your Choice Hostel</option>
														<option value="">DLW Hall (Female)</option>
														<option value="">University Female Hostel (Female)</option>
														<option value="">Joseph Adetiloye Hall (Male)</option>
														<option value="">Ibadan Hall (Male)</option>
														<option value="">Lagos Hall (Male)</option>
													</select>
												</div>
											</div>


											<div class="form-group">
												<label class="col-sm-2 control-label">Email: </label>
												<div class="col-sm-8">
													<input type="email" name="email" id="email" class="form-control" onBlur="checkAvailability()" required="required">
													<span id="user-availability-status" style="font-size:12px;"></span>
												</div>
											</div>

											<div class="form-group">
												<label class="col-sm-2 control-label">Password: </label>
												<div class="col-sm-8">
													<input type="password" name="password" id="password" class="form-control" required="required">
												</div>
											</div>


											<div class="form-group">
												<label class="col-sm-2 control-label">Confirm Password : </label>
												<div class="col-sm-8">
													<input type="password" name="cpassword" id="cpassword" class="form-control" required="required">
												</div>
											</div>




											<div class="col-sm-6 col-sm-offset-4">
												<button class="btn btn-default" type="reset">Reset</button>
												<input type="submit" name="submit" Value="Register" class="btn btn-primary">
											</div>
										</form>

									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>
	</div>
	</div>
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap-select.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.dataTables.min.js"></script>
	<script src="js/dataTables.bootstrap.min.js"></script>
	<script src="js/Chart.min.js"></script>
	<script src="js/fileinput.js"></script>
	<script src="js/chartData.js"></script>
	<script src="js/main.js"></script>
</body>
<script>
	function checkAvailability() {

		$("#loaderIcon").show();
		jQuery.ajax({
			url: "check_availability.php",
			data: 'emailid=' + $("#email").val(),
			type: "POST",
			success: function(data) {
				$("#user-availability-status").html(data);
				$("#loaderIcon").hide();
			},
			error: function() {
				event.preventDefault();
				alert('error');
			}
		});
	}
</script>
<script>
	function checkRegnoAvailability() {

		$("#loaderIcon").show();
		jQuery.ajax({
			url: "check_availability.php",
			data: 'regno=' + $("#regno").val(),
			type: "POST",
			success: function(data) {
				$("#user-reg-availability").html(data);
				$("#loaderIcon").hide();
			},
			error: function() {
				event.preventDefault();
				alert('error');
			}
		});
	}
</script>

</html>