<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<jsp:include page="header.jsp" />
<title><s:message code="admin.categorymanage" /> | Molle Co., Ltd</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" />
	<!-- Bootstrap CSS -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<div class="container-fluid">
		<div class="row">
			<nav>
				<div class="nav nav-tabs" id="nav-tab" role="tablist">
				  <div class="nav-link active" id="nav-edit-tab" data-bs-toggle="tab" data-bs-target="#nav-edit" type="button" role="tab" aria-controls="nav-edit" aria-selected="true">Edition</div>
				  <div class="nav-link" id="nav-list-tab" data-bs-toggle="tab" data-bs-target="#nav-list" type="button" role="tab" aria-controls="nav-list" aria-selected="false">List</div>
				</div>
			  </nav>
		<div class="px-4 p-3" style="width: 83%;">
			<div class="row">
				<div class="tab-content" id="nav-tabContent">
					<div class="tab-pane fade show active" id="nav-edit"
						role="tabpanel" aria-labelledby="nav-edit-tab">
						<div class="col-12">
							<div class="card-content">
								<div class="card-header">
									<h4 class="h4">Danh sách danh mục</h4>
									<form:form action="/admin/category" modelAttribute="item"
										method="post">
										<div class="form-group">
											<form:label path="id">Stt:</form:label>
											<form:input path="id" class="form-control" />
										</div>
										<div class="form-group">
											<form:label path="name">Tên danh mục:</form:label>
											<form:input path="name" class="form-control" />
										</div>
										<button class="btn btn-success mr-3"
											formaction="/category/create" formmethod="post">
											<i class="fas fa-save mr-2"></i>Thêm mới
										</button>
										<button class="btn btn-danger mr-3"
											formaction="/category/update" formmethod="post">
											<i class="fas fa-marker mr-2"></i>Cật Nhật
										</button>
										<a class="btn btn-info mr-3 mt-2 mb-2" href="/category/delete/${item.id}"><i
										class="fas fa-trash-alt mr-2"></i>DELETE</a>
										<a class="btn btn-info mr-3 mt-2 mb-2" href="/admin/category"><i
										class="fas fa-times-circle mr-2"></i>RESET</a>
										
									</form:form>
								</div>
							</div>
						</div>

					</div>

					<div class="tab-pane fade" id="nav-list" role="tabpanel"
						aria-labelledby="nav-list-tab">
						<div class="table-responsive mt-5" style="overflow-x: auto">
							<table class="table table-light table-hover"
								style="margin-top: 1px;">
								<thead>
									<tr>
										<th scope="col">Stt</th>
										<th scope="col">Tên danh mục </th>
										<th scope="col"></th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="item" items="${items}" varStatus="loop">
										<tr>
											<th scope="row">${item.id}</th>
											<td>${item.name}</td>
											<td class="text-right"><a class="btn btn-primary mr-2"
												href="/category/edit/${item.id}" role="button"><i
													class="fas fa-edit"></i></a>
												<a class="btn btn-danger mr-2"
												href="/category/delete/${item.id}" role="button"><i
													class="fas fa-times-circle"></i></a></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
							<div class="col-sm-6 offset-sm-4">
								<nav aria-label="Page navigation example text-center">
									<ul class="pagination">
										<li class="page-item"><a class="page-link" href="#">Previous</a></li>
										<li class="page-item"><a class="page-link" href="#">1</a></li>
										<li class="page-item"><a class="page-link" href="#">2</a></li>
										<li class="page-item"><a class="page-link" href="#">3</a></li>
										<li class="page-item"><a class="page-link" href="#">Next</a></li>
									</ul>
								</nav>
							</div>
						</div>

					</div>

				</div>

			</div>

		</div>



		<div>

</div>	

</div>
</div>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

<!-- Page content Wrapper -->
<jsp:include page="footer.jsp" />