<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="x-admin-sm">
    
    <head>
        <meta charset="UTF-8">
        <title>欢迎页面-X-admin2.2</title>
        <meta name="renderer" content="webkit">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
        <link rel="stylesheet" href="../css/font.css">
        <link rel="stylesheet" href="../css/xadmin.css">
        <link rel="stylesheet" href="../lib/layui/css/layui.css">
       
        
        <script type="text/javascript" src="../lib/layui/layui.js" charset="utf-8"></script>
        <script type="text/javascript" src="../js/xadmin.js"></script>
        <!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
        <!--[if lt IE 9]>
            <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
            <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>
    <body>
        <div class="layui-fluid">
            <div class="layui-row">
                <form class="layui-form" id="studentadd">
                    <div class="layui-form-item">
                        <label for="L_email" class="layui-form-label">
                            <span class="x-red">*</span>学号</label>
                        <div class="layui-input-inline">
                            <input type="text" id="studentnumber" name="studentnumber" required="" lay-verify="studentnumber" autocomplete="off" class="layui-input"></div>
                        <div class="layui-form-mid layui-word-aux">
                            <span class="x-red">*</span>将会成为唯一的登入名</div></div>
                    <div class="layui-form-item">
                        <label for="L_username" class="layui-form-label">
                            <span class="x-red">*</span>姓名</label>
                        <div class="layui-input-inline">
                            <input type="text" id="name" name="name" required="" lay-verify="nikename" autocomplete="off" class="layui-input"></div>
                    </div>
                    <div class="layui-form-item">
                        <label for="L_pass" class="layui-form-label">
                            <span class="x-red">*</span>密码</label>
                        <div class="layui-input-inline">
                            <input type="password" id="password" name="password" required="" lay-verify="pass" autocomplete="off" class="layui-input"></div>
                        <div class="layui-form-mid layui-word-aux">6到16个字符</div>
                    </div>
                    <div class="layui-form-item">
                        <label for="L_pass" class="layui-form-label">
                            <span class="x-red">*</span>权限级别</label>
                        <div class="layui-input-inline">
                            <input type="password" id="power" name="power" required="" lay-verify="power" autocomplete="off" class="layui-input"></div>
                        
                    </div>
                    <div class="layui-form-item">
                        <label for="L_pass" class="layui-form-label">
                            <span class="x-red">*</span>班级</label>
                        <div class="layui-input-inline">
                            <input type="password" id="classid" name="classid" required="" lay-verify="classid" autocomplete="off" class="layui-input"></div>
                        
                    </div>
                    
                    <div class="layui-form-item">
                        <label for="L_repass" class="layui-form-label"></label>
                        <button class="layui-btn" lay-filter="add" lay-submit="">增加</button>
                    </div>
                </form>
            </div>
        </div>
        <script>layui.use(['form', 'layer','jquery'],
            function() {
                $ = layui.jquery;
                var form = layui.form,
                layer = layui.layer;

                   //监听提交
                form.on('submit(add)',
                function(data) {
               	 $.ajax({                	  
                  	type:"post",
                  	url:"${pageContext.request.contextPath}/student/addstudent",
                  	data:data.field,
                  	success:function(data){
                  		if(data.flag == 1){
                  			layer.alert("修改成功", {
                                  icon: 1
                              }, function() {
                                  //关闭当前frame
                                  xadmin.close();

                                   // 可以对父窗口进行刷新 
                                  xadmin.father_reload(); 
                              });
                  		}else{
                  			layer.alert("修改失败", {
                                  icon: 2
                              }, function() {
                                  //关闭当前frame
                                  xadmin.close();

                                  // 可以对父窗口进行刷新 
                                  xadmin.father_reload();
                              });
                  		}
                  	}
                  })
            
             	return false;
                });

            });</script>
        <script>var _hmt = _hmt || []; (function() {
                var hm = document.createElement("script");
                hm.src = "https://hm.baidu.com/hm.js?b393d153aeb26b46e9431fabaf0f6190";
                var s = document.getElementsByTagName("script")[0];
                s.parentNode.insertBefore(hm, s);
            })();</script>
    </body>

</html>