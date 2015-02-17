<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
 
<tiles:insertDefinition name="nonregistered.main">
    <tiles:putAttribute name="content">
    	<div class="row">
			<div class="col-md-12">
				<h4>
					<spring:message code="${messageCode}" />
				</h4>
			</div>
		</div>
    </tiles:putAttribute>
</tiles:insertDefinition>