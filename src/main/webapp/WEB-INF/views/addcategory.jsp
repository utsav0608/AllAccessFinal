<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert Category</title>
<link href="css/businessuser.css" rel="stylesheet" type="text/css"/>
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script src="js/jquery-1.12.0.min.js" type="text/javascript"></script>
        <script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="js/libs/jquery-cycle/jquery.cycle.all.js" type="text/javascript"></script>
        <script src="js/libs/jquery-easing/jquery.easing.min.js" type="text/javascript"></script>
        <script src="js/jquery.scrollbox.js" type="text/javascript"></script>
        <link href="css/index.css" rel="stylesheet" type="text/css"/>
        <link href="font-awesome-icons/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/admin.css" rel="stylesheet" type="text/css"/>
        <script>
            $(document).ready(function (){
                $("#slider").cycle();
               
            });
        </script>
        
</head>
<body>
	<div class="container">
            <div class="row">
                <%@include file="admin/modifiedheader.jsp" %>               
            </div>
            <div class="row">
                <div class="col-lg-9 col-md-9 col-sm-9 top3">
                    <h4 class="text-center"> Add Category </h4>
          <hr>
						<form action="insertcategory" method="post" id="addcategory">

							<table align="center">
								<tbody>

									<tr>
									<td>Category Name:</td>

										<td><input type="text" class="chngpass1"
											name="categoryName"
											placeholder="please enter Name Of Category*" /></td>
									</tr>
									<td><input type="submit" value="Add"
										style="margin-left: 20px; width: 40%;" size="120" /></td>
										<td><a href="/admin">Back to Home</a></td>
								</tbody>
							</table>
							<h6>${suceessMsg}</h6>
						</form>
					</div>
				</div>

			</div>
			<%@include file="admin/footer.jsp" %>
			<script src="js/jquery.validate.min.js" type="text/javascript"></script>

	<script>
              $(document).ready(function(){
                  jQuery.validator.addMethod("myupper",function(val){
                   var reg=/^[A-Z]+$/;
                   return reg.test(val);
                },"All Char Must Be Upper Case");
                $("#addcategory").validate({
                 rules:{
                    
                     NameOfCategory:{
                         required:true
                        }  
                      }   
                });
            });
                    
               

        </script>
</body>
</html>