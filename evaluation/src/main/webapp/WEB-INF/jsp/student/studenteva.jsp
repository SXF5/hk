<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>	
<!DOCTYPE html>
<html  class="x-admin-sm">
<head>
<title>课程列表</title>
        <meta name="renderer" content="webkit">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
       <link rel="stylesheet" href="${pageContext.request.contextPath}/css/font.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/xadmin.css">
         <link rel="stylesheet" href="${pageContext.request.contextPath}/lib/layui/css/layui.css" media="all" >
        <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js" charset="utf-8"></script>
        <script src="${pageContext.request.contextPath}/lib/layui/layui.js" charset="utf-8"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/js/xadmin.js"></script>  
       
</head>
<meta charset="UTF-8">
<script>




</script>
<style>


</style>

<body>
	        <div class="x-nav">
          <span class="layui-breadcrumb">
            <a href="">首页</a>
            <a href="">教学管理</a>
            <a>
              <cite>课程列表</cite></a>
          </span>
          <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right" onclick="location.reload()" title="刷新">
            <i class="layui-icon layui-icon-refresh" style="line-height:30px"></i></a>
        </div>
        <div class="layui-fluid">
            <div class="layui-row layui-col-space15">
                <div class="layui-col-md12">
                    <div class="layui-card">
                         <div class="layui-card-body ">
                        
                
                        </div> 
                      
                        <div class="layui-card-body layui-table-body layui-table-main">
                            <table class="layui-table layui-form">
                                <thead>
                                  <tr>
                                    <th style="display:none" ></th>
                                    <th>课程名称</th>                                   
                                    <th>授课教师</th>                          
                                    <th>操作</th>
                                 </tr>
                                </thead>
                               
                                <tbody>       
                               	<c:forEach items="${tc}" var="item">
                                	<tr>
                                		
										<td style="display:none">${item.teachingid }</td>
                                		
                                		 <td>${item.cou.coursename}</td>
                                		 <td>${item.te.name}</td> 
                                		
                                		
										<td class="td-manage">
										<button class="layui-btn-danger layui-btn layui-btn-xs"
												onclick="xadmin.open('评价教师','${pageContext.request.contextPath}/student/evalist?studentid= ${ studentid}&coursename=${item.cou.coursename}&name=${item.te.name}&teachingid=${item.teachingid }',800,550)" href="javascript:;">
												<i class="layui-icon">&#xe642;</i>评价
											</button>
										</td>
									</tr>
                                   </c:forEach>                                                     
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</body>
<script>
      layui.use(['laydate','form'], function(){
        var laydate = layui.laydate;
        var form = layui.form;
        form.on('checkbox(checkall)', function(data){
            if(data.elem.checked){
              $('tbody input').prop('checked',true);
            }else{
              $('tbody input').prop('checked',false);
            }
            form.render('checkbox');
          }); 
        
        //执行一个laydate实例
        laydate.render({
          elem: '#start' //指定元素
        });

        //执行一个laydate实例
        laydate.render({
          elem: '#end' //指定元素
        });
      });
    
     
     
      function delAll (argument) {
          var ids = []; 

          // 获取选中的id 
          $('tbody input').each(function(index, el) {
          	var teachingid=$(this).parent().next();
              if($(this).prop('checked')){
              	
                 ids.push(teachingid.html())
              } 
          });
         
           var aa=ids.toString();
         
          
           
           layer.confirm('确认要删除吗？',function(index){
              //捉到所有被选中的，发异步进行删除
             
              $.ajax({
            	  type:"post",
              	  url:"${pageContext.request.contextPath}/teaching/delcheck", 
              	  data:{"aa":aa},
              	  success:function(data){
            		if(data.flag == 1){
            			layer.alert("删除成功", {
                            icon: 1
                        },function(){
                        	location.reload();
                        });
            		}else{alert("删除失败")}
            	}            	  
              })
              
          });
        }

  </script>
    
</html>





