
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/AngularControllers/App.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/AngularControllers/Home.js"></script>
<%-- <%@include file="/WEB-INF/includes/Frameworks.jsp" %> --%>
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
                <div class="modal fade" id="registration" role="dialog">
                     <div class="col-md-offset-4 col-md-4" id="box"style="color:white;font-family:Ravie">
                      <h2>NEW ACCOUNT</h2>
 <div class="modal-body" style="padding: 30px 50px;">
					<form role="form" data-ng-submit="submit()"
						data-ng-controller="RegController" method="post">
						<div class="form-group form-group-sm">
							<div class="input-group">
								<div class="input-group-addon">
									<i class="glyphicon glyphicon-plus"></i>
								</div>
								<input type="text" class="form-control" placeholder="Name"
									data-ng-model="name">
							</div>
							<br>
							<div class="input-group">
								<div class="input-group-addon">
									<i class="glyphicon glyphicon-user"></i>
								</div>
								<input type="text" class="form-control" placeholder="Username"
									data-ng-model="username">
							</div>
							<br>
							<div class="input-group">
								<div class="input-group-addon">
									<i class="glyphicon glyphicon-lock"></i>
								</div>
								<input type="password" class="form-control"
									placeholder="Password" data-ng-model="password">
							</div>
							<br>
							<div class="input-group">
								<div class="input-group-addon">
									<i class="glyphicon glyphicon-lock"></i>
								</div>
								<input type="password" class="form-control"
									data-ng-model="Confirm_Password"
									placeholder="Re Enter Password">
							</div>
							<br>
							<div class="input-group">
								<div class="input-group-addon">
									<i class="glyphicon glyphicon-envelope"></i>
								</div>
								<input type="email" class="form-control" placeholder="Email"
									data-ng-model="email">
							</div>
							<br>
							<div class="input-group">
								<div class="input-group-addon">
									<i class="glyphicon glyphicon-phone"></i>
								</div>
								<input type="text" class="form-control"
									placeholder="Mobile Number" data-ng-model="mobile">
							</div>
							<br>
							<div class="input-group">
								<label class="radio-inline"> <input type="radio"
									name="optradio" value="Male" data-ng-model="gender">Male
								</label> <label class="radio-inline"> <input type="radio"
									value="Female" name="optradio" data-ng-model="gender">Female
								</label>
							</div>
						</div>
						<!-- <p>By clicking Create an account, you agree to our Terms and
							that you have read our Data Policy, including our Cookie Use.</p>
 -->						<br>
						<button type="submit" class="btn btn-success  btn-block">
							<span class="glyphicon glyphicon-off"></span> Register
						</button>
					</form>
				</div>
			</div>

		</div>
	</div>
</div>
