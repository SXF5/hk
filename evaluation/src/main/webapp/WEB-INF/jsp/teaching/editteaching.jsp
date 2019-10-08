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
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/font.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/xadmin.css">
        <script type="text/javascript" src="${pageContext.request.contextPath}/lib/layui/layui.js" charset="utf-8"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/js/xadmin.js"></script>
    </head>
    <body>
       <div class="layui-fluid">
            <div class="layui-row">
                <form class="layui-form" id="form">
                  <div class="layui-form-item">
                      <label for="majorname" class="layui-form-label">
                          <span class="x-red">*</span>专业名称
                      </label>
                      <div class="layui-input-inline">
                          <input type="text" id="majorname" name="majorname" required="" value="${teaching.tv.majorname}" lay-verify="majorname"
                          autocomplete="off" class="layui-input">
                      </div> 
                  </div>
                  <input type="hidden" id="teachingid" name="teachingid" value="${teaching.teachingid }">
                  <div class="layui-form-item">
                      <label for="coursename" class="layui-form-label">
                          <span class="x-red">*</span>所授课程
                      </label>
                      <div class="layui-input-inline">
                          <input type="text" id="coursename" name="coursename" required="" value="${teaching.cou.coursename}" lay-verify="coursename"
                          autocomplete="off" class="layui-input">
                      </div>
                  </div>
                  <div class="layui-form-item">
                      <label for="name" class="layui-form-label">
                          <span class="x-red">*</span>授课教师
                      </label>
                      <div class="layui-input-inline">
                          <input type="text" id="name" name="name" required="" value="${teaching.tv.name }" lay-verify="name"
                          autocomplete="off" class="layui-input">
                      </div>
                  </div>
                   <div class="layui-form-item">
                      <label for="classname" class="layui-form-label">
                          <span class="x-red">*</span>授课班级
                      </label>
                      <div class="layui-input-inline">
                          <input type="text" id="classname" name="classname" required="" value="${teaching.cla.classname }" lay-verify="classname"
                          autocomplete="off" class="layui-input">
                      </div>
                  </div>
                  
                  
                  <div class="layui-form-item">
                      <label for="L_repass" class="layui-form-label">
                      </label>
                      <button  class="layui-btn" lay-filter="add" lay-submit="" onClick="updateTeaching()">
                         修改授课信息
                      </button>
                  </div>
              </form>
            </div>
        </div>
        <script>layui.use(['form', 'layer','jquery'],
            function() {
                $ = layui.jquery;
                var form = layui.form,
                layer = layui.layer;

                //自定义验证规则
                form.verify({
                    nikename: function(value) {
                        if (value.length < 5) {
                            return '昵称至少得5个字符啊';
                        }
                    },
                    pass: [/(.+){6,12}$/, '密码必须6到12位'],
                    repass: function(value) {
                        if ($('#L_pass').val() != $('#L_repass').val()) {
                            return '两次密码不一致';
                        }
                    }
                });

                //监听提交
                form.on('submit(add)',
                
                    function() {
                        //关闭当前frame
                        xadmin.close();

                        // 可以对父窗口进行刷新 
                        xadmin.father_reload();
                    });
                    return false;
                

            });
        /*修改*/
        function updateTeaching(){
        	var url = "${pageContext.request.contextPath}/teaching/update_submit";
        	var param = $("#form").serialize();
        	$.post(url, param, function(data) {
        		alert(data.content);
        		if(data.flag==1){
        			location.href="${pageContext.request.contextPath}/teaching/teachinglist";
        		}
        	});
        }
        
        
        
        </script>
       
    </body>

</html>
