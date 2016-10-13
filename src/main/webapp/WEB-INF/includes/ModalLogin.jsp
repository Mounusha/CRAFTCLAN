 <style>
 body{
   
    background-image: linear-gradient(#C0C0C0,#C0C0C0); 
}

#box{
    border: 1px solid rgb(200, 200, 200);
    box-shadow: rgba(0, 0, 0, 0.1) 0px 5px 5px 2px;
    background: rgba(200, 200, 200, 0.1);
    border-radius: 4px;
    top:50px;
}

h2{
    text-align:center;
    color:#fff;
}
 </style>
  <div class="container-fluid">
                <div class="row-fluid" >
                <div class="modal fade" id="login" role="dialog">
                     <div class="col-md-offset-4 col-md-4" id="box"style="color:white;font-family:Ravie">
                      <h2>Login</h2>
                   <div class="modal-body" style="padding: 35px 35px;">
					<form action="perform_login" method="post">
						<div class="form-group form-group-sm">

							<div class="input-group">
								<div class="input-group-addon">
									<i class="glyphicon glyphicon-user"></i>
								</div>
								<input type="text" class="form-control"
									placeholder="Enter Username" id="username" name="username">
							</div>
							<br>
							<div class="input-group">
								<div class="input-group-addon">
									<i class="glyphicon glyphicon-lock"></i>
								</div>
								<input type="password" class="form-control"
									placeholder="Enter Password" id="password" name="password" >
							</div>
							<br>
						</div>
						<button type="submit" class="btn btn-success  btn-block">
							<span class="glyphicon glyphicon-off"></span> Log In
						</button>
					</form>
				</div>
			</div>
		</div>
	</div></div></div></div>
<!--  <script>
	$(document).ready(function() {
		$("#log").click(function() {
			$("#login").modal();
			});
		});
</script> -->