<?php
include('includes/config.php');
if(isset($_POST['submit']))
{
    // print_r($_POST);
    // die;

$file = $_FILES['image']['name'];
$file_loc = $_FILES['image']['tmp_name'];
$folder="images/"; 
$new_file_name = strtolower($file);
$final_file=str_replace(' ','-',$new_file_name);

$name=$_POST['name'];
$email=$_POST['email'];
$password=md5($_POST['password']);
$year=$_POST['year'];
$enroll=$_POST['enroll'];
$branch=$_POST['branch'];
$mobileno=$_POST['mobileno'];

$designation=implode(",",$_POST['events']);

if(move_uploaded_file($file_loc,$folder.$final_file))
	{
		echo $image=$final_file;
    }
else{
    $image = "no";
}    
$notitype='Create Account';
$reciver='Admin';
$sender=$email;
// echo $image;

// die;
$sqlnoti="insert into notification (notiuser,notireciver,notitype) values (:notiuser,:notireciver,:notitype)";
$querynoti = $dbh->prepare($sqlnoti);
$querynoti-> bindParam(':notiuser', $sender, PDO::PARAM_STR);
$querynoti-> bindParam(':notireciver',$reciver, PDO::PARAM_STR);
$querynoti-> bindParam(':notitype', $notitype, PDO::PARAM_STR);
$querynoti->execute();    
    
$sql ="INSERT INTO users(name,email, password,  mobile, designation, image, status, year, enroll, branch) VALUES(:name, :email, :password,  :mobileno, :designation, :image, 1, :year, :enroll, :branch)";
$query= $dbh -> prepare($sql);
$query-> bindParam(':name', $name, PDO::PARAM_STR);
$query-> bindParam(':email', $email, PDO::PARAM_STR);
$query-> bindParam(':password', $password, PDO::PARAM_STR);
$query-> bindParam(':mobileno', $mobileno, PDO::PARAM_STR);
$query-> bindParam(':designation', $designation, PDO::PARAM_STR);
$query-> bindParam(':image', $image, PDO::PARAM_STR);
$query-> bindParam(':year', $year, PDO::PARAM_STR);
$query-> bindParam(':enroll', $enroll, PDO::PARAM_STR);
$query-> bindParam(':branch', $branch, PDO::PARAM_STR);
$query->execute();
$lastInsertId = $dbh->lastInsertId();
if($lastInsertId)
{
echo "<script type='text/javascript'>alert('Registration Sucessfull!');</script>";
echo "<script type='text/javascript'> document.location = 'index.html'; </script>";
}
else 
{
$error="Something went wrong. Please try again";
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

	
	<link rel="stylesheet" href="css1/font-awesome.min.css">
	<link rel="stylesheet" href="css1/bootstrap.min.css">
	<link rel="stylesheet" href="css1/dataTables.bootstrap.min.css">
	<link rel="stylesheet" href="css1/bootstrap-social.css">
	<link rel="stylesheet" href="css1/bootstrap-select.css">
	<link rel="stylesheet" href="css1/fileinput.min.css">
	<link rel="stylesheet" href="css1/awesome-bootstrap-checkbox.css">
	<link rel="stylesheet" href="css1/style.css">
    <script type="text/javascript">

	function validate()
        {
            var extensions = new Array("jpg","jpeg");
            var image_file = document.regform.image.value;
            var image_length = document.regform.image.value.length;
            var pos = image_file.lastIndexOf('.') + 1;
            var ext = image_file.substring(pos, image_length);
            var final_ext = ext.toLowerCase();
            for (i = 0; i < extensions.length; i++)
            {
                if(extensions[i] == final_ext)
                {
                return true;
                
                }
            }im
            alert("Image Extension Not Valid (Use Jpg,jpeg)");
            return false;
        }
        
        
        // document.multiselect('#testSelect1');
</script>
<link href=
"https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" 
          rel="stylesheet">
    <script src=
"https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js">
    </script>
</head>

<body>
	<div class="login-page bk-img">
		<div class="form-content">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<h1 class="text-center text-bold mt-2x">Register</h1>
                        <div class="hr-dashed"></div>
						<div class="well row pt-2x pb-3x bk-light text-center">
                         <form method="post" class="form-horizontal" enctype="multipart/form-data" name="regform" onSubmit="return validate();">
                            <div class="form-group">
                            <label class="col-sm-1 control-label">Name<span style="color:red">*</span></label>
                            <div class="col-sm-5">
                            <input type="text" name="name" class="form-control" required>
                            </div>
                            <label class="col-sm-1 control-label">Email<span style="color:red">*</span></label>
                            <div class="col-sm-5">
                            <input type="text" name="email" class="form-control" required>
                            </div>
                            </div>

                            <div class="form-group">
                            <label class="col-sm-1 control-label">Password<span style="color:red">*</span></label>
                            <div class="col-sm-5">
                            <input type="password" name="password" class="form-control" id="password" required >
                            </div>

<div class="form-group">
       <label class="col-sm-1 control-label">Choose Events<span style="color:red">*</span></label>
 <div class="col-sm-5">
  <input type="checkbox" name="events[]" value="GAMOMANIA" id="event_GAMOMANIA" />
	<label for="event_GAMOMANIA">GAMOMANIA </label>
	
	<input type="checkbox" name="events[]" value="PAPER_PRESENTATION" id="event_PAPER_PRESENTATION" />
	<label for="event_PAPER_PRESENTATION">PAPER  PRESENTATION</label>
	
	<input type="checkbox" name="events[]" value="CODETHON" id="event_CODETHON" />
	<label for="event_CODETHON">CODETHON</label><br>

<input type="checkbox" name="events[]" value="CREATIVE_CONCLAVE" id="event_CREATIVE_CONCLAVE" />
	<label for="event_CREATIVE_CONCLAVE">CREATIVE CONCLAVE</label>
	
	<input type="checkbox" name="events[]" value="SHARK_TANK" id="event_SHARK_TANK" />
	<label for="event_SHARK_TANK">SHARK TANK</label>
	
	<input type="checkbox" name="events[]" value="POSTER_PRESENTATION" id="event_POSTER_PRESENTATION" />
	<label for="event_POSTER_PRESENTATION">POSTER  PRESENTATION</label>
	
	<input type="checkbox" name="events[]" value="ROBOWARS" id="event_ROBOWARS" />
	<label for="event_ROBOWARS">ROBOWARS</label>
	
	</div>
	</div>
    
                            <!--<label class="col-sm-1 control-label">Select Events<span style="color:red">*</span></label>-->
                            <!--<div class="col-sm-5">-->
                            <!--<input type="text" name="designation" class="form-control" required>-->
                            <!--</div>-->
                            <!--</div>-->
    
    

                             <div class="form-group">
                            <label class="col-sm-1 control-label">Year<span style="color:red">*</span></label>
                            <div class="col-sm-5">
                            <input type="text" name="year" class="form-control" required>
                            </div>

                            <label class="col-sm-1 control-label">Enrollment Number<span style="color:red">*</span></label>
                            <div class="col-sm-5">
                            <input type="text" name="enroll" class="form-control" required>
                            </div>
                            </div>
                            
                            <div class="form-group">
                            <label class="col-sm-1 control-label">Branch<span style="color:red">*</span></label>
                            <div class="col-sm-5">
                            <input type="text" name="branch" class="form-control" required>
                            </div>

                            <label class="col-sm-1 control-label">Phone<span style="color:red">*</span></label>
                            <div class="col-sm-5">
                            <input type="number" name="mobileno" class="form-control" required>
                            </div>
                            </div>

                             <div class="form-group">
                            <label class="col-sm-1 control-label">Image<span style="color:red"></span></label>
                            <div class="col-sm-5">
                            <div><input type="file" name="image" class="form-control"></div>
                            </div>
                            
                            
                            </div>

								<br>
                                <button class="btn btn-primary" name="submit" type="submit">Register</button>
                                </form>
                                <br>
                                <br>
								<p>Already Have Account? <a href="login.php" >Signin</a></p>
							</div>
						</div>
				</div>
			</div>
		</div>
	</div>
	
	<!-- Loading Scripts -->
	<script src="js1/jquery.min.js"></script>
	<script src="js1/bootstrap-select.min.js"></script>
	<script src="js1/bootstrap.min.js"></script>
	<script src="js1/jquery.dataTables.min.js"></script>
	<script src="js1/dataTables.bootstrap.min.js"></script>
	<script src="js1/Chart.min.js"></script>
	<script src="js1/fileinput.js"></script>
	<script src="js1/chartData.js"></script>
	<link href="css1/multiselect.css" rel="stylesheet">
	<script src="js1/main.js"></script>

</body>
</html>