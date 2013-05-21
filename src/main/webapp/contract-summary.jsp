<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/page/main/taglibs.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'contract-summary.jsp' starting page</title>
  </head>
  
  
  <body>
	<div class="row-fluid sortable">
		<div class="box span12">
			<div class="box-header well" data-original-title>
				<h2><i class="icon-picture"></i>合同查询</h2>
					<div class="box-icon">
						<a href="#" class="btn btn-setting btn-round"><i class="icon-cog"></i></a>
						<a href="#" class="btn btn-minimize btn-round"><i class="icon-chevron-up"></i></a>
						<a href="#" class="btn btn-close btn-round"><i class="icon-remove"></i></a>
						</div>
					</div>
					<div class="box-content">
	<!-- ---------------------------------------------------------------------  -->	
					<table class="table table-striped table-bordered bootstrap-datatable datatable">
						<thead>
							<tr>
								<th>合同名称</th>
								<th>合同上传时间</th>
								<th>起草方</th>
								<th>签订方</th>
								<th>MD5</th>
								<th>操作</th>
						    </tr>
						</thead>
						<tbody>
							<s:iterator value="#request.contracts" id="contract" status="status">
								<tr>
									<td class="center"><s:property value="#contract.contractName"/></td>
									<td class="center"><s:property value="#contract.createTime"/></td>
									<td class="center"></td>
									<td class="center"></td>
									<td class="center"><s:property value="#contract.md5"/></td>
									<td class="center">
										<a class="btn btn-success" href="#">
										<i class="icon-zoom-in icon-white"></i>  
										合同详情                                            
									</a>
									<a class="btn btn-info" href="#">
										<i class="icon-edit icon-white"></i>  
										合同比对                                            
									</a>
									<a class="btn btn-danger" href="#">
										<i class="icon-trash icon-white"></i> 
										删除
									</a>
									</td>
								</tr>
							</s:iterator>
						</tbody>
					</table>
				
				
	<!------------------------------------------------------------------------   -->		 
					</div>
		</div>
	</div>
  </body>
</html>
