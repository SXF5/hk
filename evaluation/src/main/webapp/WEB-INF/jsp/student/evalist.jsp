<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>表格展示</title>
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
	<body>
	<div class="layui-fluid">
		<div class="layui-row">
	<form id="form">
	<input type="hidden" name="teachingid"  value="${teachingid }"/>
	<input type="hidden" name="studentid" value="${studentid}"/>
	<div  id="div1">教师姓名：<lable class="x-red">${name }</lable></div>   <div id="div2">课程名称：<lable class="x-red">${coursename }</lable></div>
		<div class="layui-card-body ">
		<table class="layui-table layui-form" cellpadding="0px" cellspacing="0px">
		<thead></thead>
		<tbody>
		<tr class="top">
			<td colspan="4">1、概念的讲解</td>	
		</tr>
		
		<tr>
			<td colspan="4">&emsp;
			<input name="question1" type="radio" value="10" title="语言精炼,深入浅出，讲解准确"> 
			<input name="question1" type="radio" value="8" title="讲解清晰，容易接受 	">		
			<input name="question1" type="radio" value="6" title="讲解基本准确，但不易接受">
			<input name="question1" type="radio" value="4" title="概念紊乱，时有差错">
			</td>
		</tr>
		
	    <tr class="top">
			<td colspan="4">2、重点和难点</td>	
		</tr>
		
		<tr>
			<td colspan="4"> &emsp;
			<input name="question2" type="radio" value="10" title="重点突出，讲清难点，举一反三"/>
			<input name="question2" type="radio" value="8" title="能把握重点、难点，但讲解不够明确"/>		
			<input name="question2" type="radio" value="6" title="重点不明显，难点讲不清"/>
			<input name="question2" type="radio" value="4" title="重点一言而过，难点草率了事"/>
			</td>
		</tr>
		
		 <tr class="top">
			<td colspan="4">3、逻辑性和条理性</td>	
		</tr>
		
		<tr>
			<td colspan="3">&emsp;
			<input name="question3" type="radio" value="10" title="层次分明，融会贯通"/>
			<input name="question3" type="radio" value="8" title="条例较清楚，有分析归纳"/>		
			<input name="question3" type="radio" value="6" title="平淡叙述，缺乏连贯性"/>
			<input name="question3" type="radio" value="4" title="杂乱无章，前后矛盾"/>
			</td>
		</tr>
		
		 <tr class="top">
			<td colspan="4">4、趣味性和生动性</td>	
		</tr>
		
		<tr>
			<td colspan="4">&emsp;
			<input name="question4" type="radio" value="10" title="讲解方法新颖，举例生动，有吸引力"/>
			<input name="question4" type="radio" value="8" title="讲解较熟练，语言通俗"/>	
			<input name="question4" type="radio" value="6" title="讲解平淡，语言单调	"/>	
			<input name="question4" type="radio" value="4" title="讲解生疏，远离课题，语言枯燥"/>
			</td>
		</tr>
		
		 <tr class="top">
			<td colspan="4">5、板书</td>	
		</tr>
		
		<tr>
			<td colspan="4">&emsp;
			<input name="question5" type="radio" value="10" title="简繁适度，清楚醒目"/>
			<input name="question5" type="radio" value="8" title="条目明白，书写整洁"/>		
			<input name="question5" type="radio" value="6" title="布局较差，详细适当"/>
		    <input name="question5" type="radio" value="4" title="次序凌乱，书写潦草"/>
		    </td>
		</tr>
		
		 <tr class="top">
			<td colspan="4">6、辅导(阅读指导)</td>	
		</tr>
		
		<tr>
			<td colspan="3">&emsp;
		    <input name="question6" type="radio" value="10" title="辅导及时、并指导课外阅读"/>	
			<input name="question6" type="radio" value="8" title="定期辅导，并布置课外作业"/>		
			<input name="question6" type="radio" value="6" title="辅导较少"/>
			<input name="question6" type="radio" value="4" title="没有辅导"/>
			</td>
		</tr>
		
		<tr class="top">
			<td colspan="4">7、作业与批改</td>	
		</tr>
		
		<tr>
			<td colspan="4">&emsp;
			<input name="question7" type="radio" value="10" title="选题得当，批改及时，注意讲评	"/>
			<input name="question7" type="radio" value="8"  title="作业适量，批改及时"/>
		
			<input name="question7" type="radio" value="6" title="作业量时轻时重，批改不够及时"/>
			<input name="question7" type="radio" value="4" title="选题随便，批改马虎" />
			</td>
		</tr>
		
		<tr class="top">
			<td colspan="4">8、能力培养</td>	
		</tr>
		
		<tr>
			<td colspan="4">&emsp;
			<input name="question8" type="radio" value="10" title="思路开阔，鼓励创新，注意能力培养，效果明显"/>	
			<input name="question8" type="radio" value="8" title="注意学生能力培养，并在教学中有所体现"/>
		
			<input name="question8" type="radio" value="6" title="能提出能力培养的要求，但缺乏具体的方法"/>
			<input name="question8" type="radio" value="4" title="忽视能力的培养，单纯灌输书本知识"/>
			</td>
		</tr>
		
		<tr class="top">
			<td colspan="4">9、教书育人</td>	
		</tr>
		
		<tr>
			<td colspan="4">&emsp;
			<input name="question9" type="radio" value="10" title="全面关心学生，经常接触学生，亲切、严格"/>
			<input name="question9" type="radio" value="8" title="关心学生的学业，引导学生学好本门课程"/>		
			<input name="question9" type="radio" value="6" title="单纯完成上课任务，与同学接触较少"/>
			<input name="question9" type="radio" value="4" title="对学生漠不关心，放任自"/>
			</td>
		</tr>
		
		<tr class="top">
			<td colspan="4">10、为人师表</td>	
		</tr>
		
		<tr>
			<td colspan="4">&emsp;
			<input name="question0" type="radio" value="10" title="严于律己，以身作则，堪称楷模"/>
			<input name="question0" type="radio" value="8" title="举止文明，待人热情"/>
		
			<input name="question0" type="radio" value="6" title="注意礼貌，待人和气	"/>	
			<input name="question0" type="radio" value="4" title="要求不严，言谈适当"/>
			</td>
		</tr>
		</tbody>	
		</table>
		  <button  class="layui-btn" lay-filter="add" lay-submit="add" onClick="add()">
                       提交评价结果
                      </button>
                      </div>
		</form>
		</div>
		</div>
		
		<script type="text/javascript">
		layui.use(['form', 'layer','jquery'],
	            function() {
	                $ = layui.jquery;
	                var form = layui.form,
	                layer = layui.layer;

	                //自定义验证规则
	                form.verify({
	                	facultynumber: function(value) {
	                        if (value.length < 5) {
	                            return '编号至少得5个字符';
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
		
		function add(){
			var url="${pageContext.request.contextPath}/score/add_submit";
			var param=$("#form").serialize();
			$.post(url,param,function(data){
				alert("评价成功!"); 
				         

					if (data.flag == 1) {
						layer.alert("保存成功", {
							icon : 1
						}, function() {
							//关闭当前frame
							xadmin.close();

							// 可以对父窗口进行刷新 
							xadmin.father_reload();
						});
					} else {
						layer.alert("保存失败", {
							icon : 2
						}, function() {
							//关闭当前frame
							xadmin.close();

							// 可以对父窗口进行刷新 
							xadmin.father_reload();
						});
					}
				 
			});
		}
		</script>
	</body>
	
</html>
