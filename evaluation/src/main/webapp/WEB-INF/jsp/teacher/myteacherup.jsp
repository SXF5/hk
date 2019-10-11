<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>个人信息修改</title>
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<link rel="stylesheet" href="../X-admin/css/font.css">
<link rel="stylesheet" href="../X-admin/css/xadmin.css">
<script src="../layDate-v5.0.9/laydate/laydate.js"></script>
<script src="../X-admin/lib/layui/layui.js" charset="utf-8"></script>
<script type="text/javascript" src="../X-admin/js/xadmin.js"></script>

</head>
<body>
<div class="layui-fluid">
			<h1>我的资料</h1>
			<hr>
            <div class="layui-row"  style="width: 500px; margin-top: 40px;">
                <form id="form1" class="layui-form">
				<div class="layui-form-item">
					<label for="name" class="layui-form-label"> <span class="x-red"></span>姓名</label>
					<div class="layui-input-inline">					
						<input type="hidden" id="teacherid" name="teacherid" value="${teacher.teacherid }" 
                          autocomplete="off" class="layui-input">
						<input type="text" id="name" name="name" autocomplete="off" 
						class="layui-input" value="${teacher.name }" >
					</div>
				</div>
				<div class="layui-form-item">
					<label for="teachernumber" class="layui-form-label"> <span class="x-red"></span>编号</label>
					<div class="layui-input-inline">					
						<input type="text" id="teachernumber" name="teachernumber" value="${teacher.teachernumber }" 
                          autocomplete="off" class="layui-input" readonly="readonly">
					</div>
					<div class="layui-form-mid layui-word-aux">
						<span class="x-red">不可更改</span>
					</div>
				</div>
				<div class="layui-form-item">
                     <label for="sex" class="layui-form-label">
                          <span class="x-red"></span>性别</label>
                     <div class="layui-input-inline">
                     <input type="text" id="sex" name="sex"  autocomplete="off"
                      class="layui-input" value="${teacher.sex }"></div>
                </div>
				
				<div class="layui-form-item">
					<label for="phone" class="layui-form-label"> <span
						class="x-red"></span>手机
					</label>
					<div class="layui-input-inline">
						<input type="text" id="phone" name="phone" autocomplete="off"
							class="layui-input" value="${teacher.phone }">
					</div>
				</div>
				
				<div class="layui-form-item">
					<label for="password" class="layui-form-label"> <span
						class="x-red"></span>密码
					</label>
					<div class="layui-input-inline">
						<input type="text" id="password" name="password" autocomplete="off"
							class="layui-input" value="${teacher.password }">
					</div>
				</div>
				 <div class="layui-form-item">
					<label for="birthday" class="layui-form-label"> <span
						class="x-red"></span>生日
					</label>
					<div class="layui-input-inline" >
						<input type="text" id="birthday1" name="birthday1" autocomplete="off" disabled
						class="layui-input" value="<fmt:formatDate value="${teacher.birthday }" pattern="yyyy-MM-dd" />"> 
					</div>
					<div class="layui-form-mid layui-word-aux">
						<span class="x-red">不可更改</span>
					</div>
				</div> 
                    
                 <div class="layui-form-item">
                        <label for="L_repass" class="layui-form-label"></label>
                        <button type="button" class="layui-btn" onclick="updd()">确认修改</button>
                 </div>
                
                </form>
            </div>
        </div>
</body>
<script >
	function updd(){
		//alert($("#form1").serialize())
		$.ajax({
			type:"post",
			url:"${pageContext.request.contextPath}/teacher/myupdate",
			data:$("#form1").serialize(),
			success:function(data){
				if(data.flag==1){
					alert("修改成功");
				}else{
					alert("12");
				}
			}
		});
		/* var url="${pageContext.request.contextPath}/teacher/myupdate";
    	var param=$("#form1").serialize();
    	$.post(url,param);
    	alert("11");
    	parent.location.reload(); */
	}
	          
</script>
</html>