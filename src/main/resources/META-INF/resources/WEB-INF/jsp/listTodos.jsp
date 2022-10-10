<%@ include file="common/header.jspf" %>
<%@ include file="common/navbar.jspf" %>
<div class="container">
		<div><h3>Welcome ${name} !<h3></div><hr>
		<div><h2>Your Todos</h2></div>
		<table class="table table-hover">
		<thead class="table-dark">
		      <tr>

		        <th scope="col">Description</th>
		        <th scope="col">Target Date</th>
		        <th scope="col">Is Done?</th>
		        <th></th>
		        <th></th>
		      </tr>
		</thead>
		<tbody>
		    <c:forEach items="${todos}" var="todo">
            						<tr>

            							<td>${todo.description}</td>
            							<td>${todo.targetDate}</td>
            							<td>${todo.done}</td>
            							<td> <a href="todo-delete?id=${todo.id}" class="btn btn-warning">Delete </a></td>
            							<td> <a href="todo-update?id=${todo.id}" class="btn btn-success">Update </a></td>
            						</tr>
            					</c:forEach>
		</tbody>
		</table>
		<a href="add-todo" class="btn btn-success">Add Todo</a>
    </div>
<%@ include file="common/footer.jspf" %>