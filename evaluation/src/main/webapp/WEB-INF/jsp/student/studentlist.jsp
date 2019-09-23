<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
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
        <script src="../lib/layui/layui.js" charset="utf-8"></script> 
        <script type="text/javascript" src="../js/xadmin.js"></script>
        <!--[if lt IE 9]>
          <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
          <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
        
        <script type="text/javascript">
        /*修改*/
        function update(studentid){
    		 location.href="${pageContext.request.contextPath}/student/studentedit?studentid="+studentid;
    	alert(studentid)
        }
        
        
        </script>
    </head>
   
    <body>
        <div class="x-nav">
          <span class="layui-breadcrumb">
            <a href="">首页</a>
            <a href="">演示</a>
            <a>
              <cite>导航元素</cite></a>
          </span>
          <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right" onclick="location.reload()" title="刷新">
            <i class="layui-icon layui-icon-refresh" style="line-height:30px"></i></a>
        </div>
        <div class="layui-fluid">
            <div class="layui-row layui-col-space15">
                <div class="layui-col-md12">
                    <div class="layui-card">
                        <div class="layui-card-body ">
                            <form class="layui-form layui-col-space5">
                                <div class="layui-inline layui-show-xs-block">
                                    <input class="layui-input"  autocomplete="off" placeholder="开始日" name="start" id="start">
                                </div>
                                <div class="layui-inline layui-show-xs-block">
                                    <input class="layui-input"  autocomplete="off" placeholder="截止日" name="end" id="end">
                                </div>
                                <div class="layui-inline layui-show-xs-block">
                                    <input type="text" name="username"  placeholder="请输入用户名" autocomplete="off" class="layui-input">
                                </div>
                                <div class="layui-inline layui-show-xs-block">
                                    <button class="layui-btn"  lay-submit="" lay-filter="sreach"><i class="layui-icon">&#xe615;</i></button>
                                </div>
                            </form>
                        </div>
                        <div class="layui-card-header">
                            <button class="layui-btn layui-btn-danger" onclick="delAll()"><i class="layui-icon"></i>批量删除</button>
                            <button class="layui-btn" onclick="xadmin.open('添加用户','./member-add.html',600,400)"><i class="layui-icon"></i>添加</button>
                        </div>
                        <div class="layui-card-body layui-table-body layui-table-main">
                            <table class="layui-table layui-form">
                                <thead>
                                  <tr>
                                    <th>
                                      <input type="checkbox" lay-filter="checkall" name="" lay-skin="primary">
                                    </th>
                                   <!--  <th>ID</th> -->
                                    <th>学号</th>
                                    <th>姓名</th>
                                    <th>性别</th>
                                    <th>电话号码</th>
                                    <th>班级</th>
                                    <th>年龄</th>
                                    <th>时间</th>
                                    <th>操作</th>
                                    </tr>
                                </thead>
                                <tbody>
                                  	<c:forEach items="${students}" var="item">
									<tr>
										<td><input type="checkbox" name="" lay-skin="primary" >
										</td>
										
										<%-- <td id="studentid">${item.studentid}</td> --%>
										<td>${item.studentnumber}</td>
										<td>${item.name}</td>
										<td>${item.sex}</td>
										<td>${item.tel}</td>
                                        <td>${item.cla.classname}</td>
                                        <td>${item.tel}</td>
										<td>
										<script type="text/javascript">
										var myDate = new Date();
										myDate.getYear();        
										myDate.getFullYear();    
										myDate.getMonth();      
										myDate.getDate();       
										myDate.getDay();         
										myDate.getTime();       
										myDate.getHours();      
										myDate.getMinutes();    
										myDate.getSeconds();     
										myDate.getMilliseconds();    
										myDate.toLocaleDateString();     
										var mytime=myDate.toLocaleTimeString();     
										myDate.toLocaleString( );        
										${myDate.getYear()}
										
										</script>
										
										</td>

										<td class="td-manage">
											<button class="layui-btn layui-btn layui-btn-xs"
												onclick="update('${item.studentid}') " href="#">
												<i class="layui-icon">&#xe642;</i>修改
											</button>
											<button class="layui-btn-danger layui-btn layui-btn-xs"
												onclick="member_del(this,'${item.studentid}')" href="javascript:;">
												<i class="layui-icon">&#xe640;</i>删除
											</button>
										</td>
									</tr>
								</c:forEach>
                                </tbody>
                            </table>
                        </div>
                        <div class="layui-card-body ">
                            <div class="page">
                                <div>
                                  <a class="prev" href="">&lt;&lt;</a>
                                  <a class="num" href="">1</a>
                                  <span class="current">2</span>
                                  <a class="num" href="">3</a>
                                  <a class="num" href="">489</a>
                                  <a class="next" href="">&gt;&gt;</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div> 
    </body>
    <script>
      layui.use(['laydate','form'], function(){
        var laydate = layui.laydate;
        var  form = layui.form;


        // 监听全选
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

       /*用户-停用*/
      function member_stop(obj,id){
          layer.confirm('确认要停用吗？',function(index){

              if($(obj).attr('title')=='启用'){

                //发异步把用户状态进行更改
                $(obj).attr('title','停用')
                $(obj).find('i').html('&#xe62f;');

                $(obj).parents("tr").find(".td-status").find('span').addClass('layui-btn-disabled').html('已停用');
                layer.msg('已停用!',{icon: 5,time:1000});

              }else{
                $(obj).attr('title','启用')
                $(obj).find('i').html('&#xe601;');

                $(obj).parents("tr").find(".td-status").find('span').removeClass('layui-btn-disabled').html('已启用');
                layer.msg('已启用!',{icon: 5,time:1000});
              }
              
          });
      }

      /*用户-删除*/
      function member_del(obj,studentid){
          layer.confirm('确认要删除吗？',function(index){
        	  
        	  
              //发异步删除数据
              /* alert(studentid);
              location.href="${pageContext.request.contextPath}/student/studentdel?studentid="+studentid;
    	       */
    	       
    	        var url="${pageContext.request.contextPath}/student/studentdel?studentid="+studentid;
        	   	$.post(url,function(data){
    	   		if(data.flag==1){
    	   			layer.closeAll();
    	   			location.reload();
    	   			
    				}
    	   		
    	   				
    	   	})
    	   	
        			/* $.ajax({
        			type:"post",
        			url:"${pageContext.request.contextPath}/student/studentdel?studentid="+studentid,
        			dataType:"json",
        			success:function(obj){	
        				
        		    alert("ok");
        				
        			},
        			error:function(batde){
        				alert("error");
        			}
        			
        			}) */
        		
              /* layer.msg('已删除!',{icon:1,time:1000}); */
          });
      }

      /*批量删除*/

      function delAll (argument) {
        var ids = []; 

        // 获取选中的id 
        $('tbody input').each(function(index, el) {
        	var stunumber=$(this).parent().next();
            if($(this).prop('checked')){
            	
               ids.push(stunumber.html())
            } 
        });
       
         var aa=ids.toString();
       
         alert(typeof aa);
         
         
         layer.confirm('确认要删除吗？'+aa,function(index){
            //捉到所有被选中的，发异步进行删除
           
            $.ajax({
          	      type:"post",
            	  url:"${pageContext.request.contextPath}/student/studentall", 
            	  data:{"aa":aa},
            	  success:function(data){
          		if(data.flag == 1){
          			layer.alert("删除成功", {
                          icon: 1
                      },function(){
                      	xadmin.father_reload();
                      });
          		}else{alert("删除失败")}
          	}            	  
            })
            
        });
      }
    </script>
</html>