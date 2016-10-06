<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<div data-ng-controller="ForumController">

	<sec:authorize access="isAuthenticated()">
		<form role="form" data-ng-submit="submit()"
			data-ng-controller="ForumController">
			<h3 style="color:black;font-family:Algerian"align="center">Create Forum</h3>
			<div class="form-group">
				<input type="text" class="form-control input-sm"
					placeholder="Forum Id" data-ng-model="forumid"
					data-ng-show="forumid" data-ng-disabled="forumid">
			</div> 
			<div class="form-group">
			<label for="formdata" style="color:black;font-family:ms serif">Forum Title</label>
				<input type="text" class="form-control input-sm"
					placeholder="Forum Title" data-ng-model="forumName">
			</div>
			<div class="form-group">
				<label for="formdata"style="color:black;font-family:ms serif">Forum Description</label>
				<textarea draggable="false" style="resize: none" id="formdata"
					class="form-control " rows="13" data-ng-model="forumDesc"></textarea>
			</div>
			<div align="right">
				<button type="submit" class="btn btn-info">Save Forum</button>
			</div>
		</form>
	</sec:authorize>
	<br>
	<div data-ng-init="getAllForums()">
		<table class="table table-bordered table-hover">
			<thead>
				<tr>
					<!-- <th>Forum ID</th> -->
					<th>Forum Name</th>
					<th colspan="2">Forum Description</th>
				</tr>
			</thead>
			<tbody>
				<tr data-ng-repeat="forum in forums">
					<td width="15%">{{forum.forumName}}</td>
					<td width="60%">{{forum.forumDesc}}</td>
					<td width="15%">
						<div class="btn-group  btn-group-justified ">
							<sec:authorize access="isAuthenticated()">
								<div data-ng-if="accessForum(forum.f_userid)">
 									<a class="btn btn-danger btn-sm"
 										data-ng-click="deleteForum(forum.fid)">Delete</a> 
 									<a	class="btn btn-primary btn-sm"
 										data-ng-click="editForum(forum.fid)">Edit</a>
 							</div>
							</sec:authorize>
							</div>
					</td>
					<td width="5%"><a href="forum/{{forum.fid}}" class="btn btn-default btn-sm">View</a></td>

				</tr>
			</tbody>
		</table>
		<input type="text" value="${sessionScope.userid}" id="userid" hidden="true">
	</div>

	<script
		src="${pageContext.request.contextPath}/resources/js/AngularControllers/Forum.js"></script>
        <input type="text" value="${sessionScope.userid}" style="margin-top: 75px" id="userid" hidden="true" />
         <script src="${pageContext.request.contextPath}/resources/js/AngularControllers/Forum.js"></script>
</div>
