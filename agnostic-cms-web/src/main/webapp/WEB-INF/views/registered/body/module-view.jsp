<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="t" %>

 
<tiles:insertDefinition name="registered.main">
    <tiles:putAttribute cascade="true" name="body">
    	<div class="row">
			<div class="col-md-12">
				<h2>${module.title}</h2>
				<table class="table table-bordered">
					<thead>
						<tr>
							<c:forEach var="parentModule" items="${parentModules}">
								<th>${parentModule.name}</th>
							</c:forEach>
							<c:forEach var="column" items="${columns}">
								<c:if test="${column.showInList}">
									<th>${column.name}</th>
								</c:if>
							</c:forEach>
							<th></th>
							<th></th>
							<th></th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="row" items="${rows}">
							<tr>
								<c:forEach var="foreignKeyName" items="${foreignKeyNames}" varStatus="loop">
									<td>${lovs[loop.index][row[foreignKeyName]]}</td>
								</c:forEach>
								<c:forEach var="column" items="${columns}">
									<c:if test="${column.showInList}">
										<td><t:stringifier type="${column.type}" value="${row[column.nameInDb]}" /></td>
									</c:if>
								</c:forEach>
								
								<td><a href="#"><spring:message code="module.view.view" /></a></td>
								<td><a href="#"><spring:message code="module.view.edit" /></a></td>
								<td><a href="#"><spring:message code="module.view.remove" /></a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<div class="pull-right">
					<a class="btn btn-default" href="#" role="button">Add</a>
				</div>
			</div>
		</div>
    </tiles:putAttribute>
</tiles:insertDefinition>