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
       
		<style type="text/css">
			.mytable{
				border: 1px #8B008B solid ;
				border-collapse: collapse;
		        margin-left: 0px;
			}
			.mytable td{
				border: 0px #000 solid ;
				width: 500px;
				height: 10px;
				line-height: 25px;
				
			}
			.top{
				background: #9BCD9B;
				
			}
			#div2{margin-left:420px;}
			#div1{margin-left:230px;float:left;}
			.layui-btn{margin-left:300px}
		</style>
		
	</head>
	<body>
	
	<form id="form">
	<input type="hidden" name="teachingid"  value="${teachingid }"/>
	<input type="hidden" name="studentid" value="${studentid}"/>
	<div id="div1">教师姓名：<lable class="x-red">${name }</lable></div>   <div id="div2">课程名称：<lable class="x-red">${coursename }</lable></div>
		<table class="mytable" cellpadding="0px" cellspacing="0px">
			
		<tr class="top">
			<td colspan="6">概念的讲解</td>	
		</tr>
		
		<tr>
			<td colspan="3">&emsp;<label><input name="question1" type="radio" value="10" />语言精炼,深入浅出，讲解准确 </label></td>	
			<td colspan="3"><label><input name="question1" type="radio" value="8" />讲解清晰，容易接受 </label></td>
		</tr>
		<tr>
			<td colspan="3">&emsp;<label><input name="question1" type="radio" value="6" />讲解基本准确，但不易接受 </label></td>	
			<td colspan="3"><label><input name="question1" type="radio" value="4" />概念紊乱，时有差错</label></td>
		</tr>
		
	    <tr class="top">
			<td colspan="6">重点和难点</td>	
		</tr>
		
		<tr>
			<td colspan="3"> &emsp;<label><input name="question2" type="radio" value="10" />重点突出，讲清难点，举一反三</label></td>	
			<td colspan="3"><label><input name="question2" type="radio" value="8" />能把握重点、难点，但讲解不够明确</label></td>
		</tr>
		<tr>
			<td colspan="3"> &emsp;<label><input name="question2" type="radio" value="6" />重点不明显，难点讲不清</label></td>	
			<td colspan="3"><label><input name="question2" type="radio" value="4" />重点一言而过，难点草率了事</label></td>
		</tr>
		
		 <tr class="top">
			<td colspan="6">逻辑性和条理性</td>	
		</tr>
		
		<tr>
			<td colspan="3">&emsp;<label><input name="question3" type="radio" value="10" />层次分明，融会贯通</label> </td>	
			<td colspan="3"><label><input name="question3" type="radio" value="8" />条例较清楚，有分析归纳</label></td>
		</tr>
		<tr>
			<td colspan="3">&emsp;<label><input name="question3" type="radio" value="6" />平淡叙述，缺乏连贯性</label></td>	
			<td colspan="3"><label><input name="question3" type="radio" value="4" />杂乱无章，前后矛盾</label></td>
		</tr>
		
		 <tr class="top">
			<td colspan="6">趣味性和生动性</td>	
		</tr>
		
		<tr>
			<td colspan="3">&emsp;<label><input name="question4" type="radio" value="10" />讲解方法新颖，举例生动，有吸引力</label> </td>	
			<td colspan="3"><label><input name="question4" type="radio" value="8" />讲解较熟练，语言通俗</label></td>
		</tr>
		<tr>
			<td colspan="3">&emsp;<label><input name="question4" type="radio" value="6" />讲解平淡，语言单调</label></td>	
			<td colspan="3"><label><input name="question4" type="radio" value="4" />讲解生疏，远离课题，语言枯燥</label></td>
		</tr>
		
		 <tr class="top">
			<td colspan="6">板书</td>	
		</tr>
		
		<tr>
			<td colspan="3">&emsp;<label><input name="question5" type="radio" value="10" />简繁适度，清楚醒目</label> </td>	
			<td colspan="3"><label><input name="question5" type="radio" value="8" />条目明白，书写整洁</label></td>
		</tr>
		<tr>
			<td colspan="3">&emsp;<label><input name="question5" type="radio" value="6" />布局较差，详细适当</label></td>	
			<td colspan="3"><label><input name="question5" type="radio" value="4" />次序凌乱，书写潦草</label></td>
		</tr>
		
		 <tr class="top">
			<td colspan="6">辅导(阅读指导)</td>	
		</tr>
		
		<tr>
			<td colspan="3">&emsp;<label><input name="question6" type="radio" value="10" />辅导及时、并指导课外阅读</label></td>	
			<td colspan="3"><label><input name="question6" type="radio" value="8" />定期辅导，并布置课外作业</label></td>
		</tr>
		<tr>
			<td colspan="3">&emsp;<label><input name="question6" type="radio" value="6" />辅导较少</label></td>	
			<td colspan="3"><label><input name="question6" type="radio" value="4" />没有辅导</label></td>
		</tr>
		
		<tr class="top">
			<td colspan="6">作业与批改</td>	
		</tr>
		
		<tr>
			<td colspan="3">&emsp;<label><input name="question7" type="radio" value="10" />选题得当，批改及时，注意讲评</label> </td>	
			<td colspan="3"><label><input name="question7" type="radio" value="8" />作业适量，批改及时</label></td>
		</tr>
		<tr>
			<td colspan="3">&emsp;<label><input name="question7" type="radio" value="6" />作业量时轻时重，批改不够及时</label></td>	
			<td colspan="3"><label><input name="question7" type="radio" value="4" />选题随便，批改马虎</label></td>
		</tr>
		
		<tr class="top">
			<td colspan="6">能力培养</td>	
		</tr>
		
		<tr>
			<td colspan="3">&emsp;<label><input name="question8" type="radio" value="10" />思路开阔，鼓励创新，注意能力培养，效果明显</label></td>	
			<td colspan="3"><label><input name="question8" type="radio" value="8" />注意学生能力培养，并在教学中有所体现</label></td>
		</tr>
		<tr>
			<td colspan="3">&emsp;<label><input name="question8" type="radio" value="6" />能提出能力培养的要求，但缺乏具体的方法</label></td>	
			<td colspan="3"><label><input name="question8" type="radio" value="4" />忽视能力的培养，单纯灌输书本知识</label></td>
		</tr>
		
		<tr class="top">
			<td colspan="6">教书育人</td>	
		</tr>
		
		<tr>
			<td colspan="3">&emsp;<label><input name="question9" type="radio" value="10" />全面关心学生，经常接触学生，亲切、严格</label> </td>	
			<td colspan="3"><label><input name="question9" type="radio" value="8" />关心学生的学业，引导学生学好本门课程</label></td>
		</tr>
		<tr>
			<td colspan="3">&emsp;<label><input name="question9" type="radio" value="6" />单纯完成上课任务，与同学接触较少</label></td>	
			<td colspan="3"><label><input name="question9" type="radio" value="4" />对学生漠不关心，放任自流</label></td>
		</tr>
		
		<tr class="top">
			<td colspan="6">为人师表</td>	
		</tr>
		
		<tr>
			<td colspan="3">&emsp;<label><input name="question0" type="radio" value="10" />严于律己，以身作则，堪称楷模</label> </td>	
			<td colspan="3"><label><input name="question0" type="radio" value="8" />举止文明，待人热情</label></td>
		</tr><tr>
			<td colspan="3">&emsp;<label><input name="question0" type="radio" value="6" />注意礼貌，待人和气</label></td>	
			<td colspan="3"><label><input name="question0" type="radio" value="4" />要求不严，言谈适当</label></td>
		</tr>
		
		</table>
		  <button  class="layui-btn" lay-filter="add" lay-submit="" onClick="add()">
                       提交评价结果
                      </button>
		</form>
		
		
		
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
				if(data.flag==1){
					 location.reload();
				} 
			});
		}
		</script>
	</body>
	
</html>
