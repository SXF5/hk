<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>设置我的资料</title>
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
  <link rel="stylesheet" href="../css/font.css">
        <link rel="stylesheet" href="../css/xadmin.css">
        <script src="../lib/layui/layui.js" charset="utf-8"></script>
        <script type="text/javascript" src="../js/xadmin.js"></script>
        <script type="text/javascript" src="../lib/jquery-3.4.0.min.js"></script>
  
</head>
<body>

  <div class="layui-fluid">
    <div class="layui-row layui-col-space15">
      <div class="layui-col-md12">
        <div class="layui-card">
          <div class="layui-card-header">设置我的资料</div>
             <form class="layui-form">
                    <div class="layui-form-item">
                        <label for="name" class="layui-form-label">
                            <span class="x-red"></span>姓名</label>
                        <div class="layui-input-inline">
                            <input type="text" id="name" name="name" value="${student.name}" required="" lay-verify="name" autocomplete="off" class="layui-input"></div>
                    </div>
                    <div class="layui-form-item">
                        <label for="studentnumber" class="layui-form-label">
                            <span class="x-red"></span>学号</label>
                        <div class="layui-input-inline">
                            <input type="text" readonly="readonly" id="studentnumber" name="studentnumber" value="${student.studentnumber }"  autocomplete="off" class="layui-input" ></div>
                    	<div class="layui-form-mid  layui-word-aux"><span class="x-red">不可修改</span></div>
                    </div>
                    <div class="layui-form-item">
                        <label for="sex" class="layui-form-label">
                            <span class="x-red"></span>性别</label>
                        <div class="layui-input-inline">
                            <input type="text" id="sex" name="sex" value="${student.sex }"  autocomplete="off" class="layui-input"></div>
                    </div>
                    <div class="layui-form-item">
                        <label for="password" class="layui-form-label">
                            <span class="x-red"></span>密码</label>
                        <div class="layui-input-inline">
                            <input type="text" id="password" name="password" value="${student.password }"  autocomplete="off" class="layui-input"></div>
                    </div>
                    <div class="layui-form-item">
                        <label for="tel" class="layui-form-label">
                            <span class="x-red"></span>手机</label>
                        <div class="layui-input-inline">
                            <input type="text" id="tel" name="tel" value="${student.tel }"  autocomplete="off" class="layui-input"></div>
                    </div>
                     <div class="layui-form-item">
                        <label for="birthday" class="layui-form-label">
                            <span class="x-red"></span>生日</label>
                        <div class="layui-input-inline">
                         <input value="<fmt:formatDate value='${student.birthday }' pattern='yyyy-MM-dd' />"type="text" readonly="readonly" id="birthday" name="birthday" autocomplete="off" class="layui-input" >
                        </div>
                        <div class="layui-form-mid  layui-word-aux"><span class="x-red">不可修改</span></div>
                    </div> 
                    <div class="layui-form-item">
                        <label for="classname" class="layui-form-label">
                            <span class="x-red"></span>班级</label>
                        <div class="layui-input-inline">
                            <input type="text" id="classname" readonly="readonly" name="classname" value="${student.cla.classname }"  autocomplete="off" class="layui-input"></div>
                    	<div class="layui-form-mid  layui-word-aux"><span class="x-red">不可修改</span></div>
                    </div>
                    <div class="layui-form-item">
                        <label for="add" class="layui-form-label"></label>                       
                      <button  class="layui-btn" onclick="update()" lay-filter="update" lay-submit="">
                      	  修改
                      </button>
                      </div>
              </form>
            </div>
           </div>
          </div>
        </div>
  <script>
  /*修改*/
  function update(){           
          	var url = "${pageContext.request.contextPath}/student/studenteupdate";
				var param = $(".layui-form").serialize();
				$.post(url, param);
				//alert("修改成功！");
	            parent.location.reload();
      }
  </script>
</body>
</html>