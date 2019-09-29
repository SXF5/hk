<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="x-admin-sm">
<head>
<meta charset="UTF-8">
<title>学生信息修改</title>
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
<link rel="stylesheet" href="../css/font.css">
<link rel="stylesheet" href="../css/xadmin.css">
<script type="text/javascript" src="../lib/layui/layui.js"
	charset="utf-8"></script>
<script type="text/javascript" src="../js/xadmin.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/lib/jquery-3.4.0.min.js"></script>


</head>

<body>
	
	<div class="layui-fluid">
		<div class="layui-row">

					<form id="questions">
					<input type="hidden" name="teacherid" value="${teacherid }">
					<input type="hidden" name="teachingid" value="${teachingid }">
						<div class="layui-card-body ">
							<table class="layui-table layui-form">
								<thead>

								</thead>
								<tbody>

									<tr
										style="text-align: center; background-color: #FF5511; color: #FFFFFF;">
										<td colspan="4">一、量考核</td>
									</tr>
									<tr>
										<td colspan="4">1.1教学工作量</td>
									</tr>
									<tr>
										<td colspan="4">&ensp;&ensp;&ensp;&ensp; <input
											type="radio" name="question0" value="4" title="超工作量">
											<input type="radio" name="question0" value="3" title="满工作量">
											<input type="radio" name="question0" value="2"
											title="接近完成（70%）"> <input type="radio"
											name="question0" value="1" title="差距较大">
										</td>
									</tr>

									<tr>
										<td colspan="4">1.2社会工作量</td>
									</tr>
									<tr>
										<td colspan="4">&ensp;&ensp;&ensp;&ensp; <input
											type="radio" name="question1" value="4" title="担任教研室主任">
											<input type="radio" name="question1" value="3"
											title="担任工作室主任"> <input type="radio" name="question1"
											value="2" title="其他社会工作"> <input type="radio"
											name="question1" value="1" title="无">
										</td>
									</tr>

									<tr>
										<td colspan="4">1.3任课班级</td>
									</tr>
									<tr>
										<td colspan="4">&ensp;&ensp;&ensp;&ensp; <input
											type="radio" name="question2" value="4" title="4个班级及以上">
											<input type="radio" name="question2" value="3" title="3个班级">
											<input type="radio" name="question2" value="2" title="2个班级">
											<input type="radio" name="question2" value="1" title="1个班级">
										</td>
									</tr>
									<tr
										style="text-align: center; background-color: #FF5511; color: #FFFFFF;">
										<td colspan="4">二、质考核</td>
									</tr>

									<tr>
										<td colspan="4">2.1授课计划制定</td>
									</tr>
									<tr>
										<td colspan="4">&ensp;&ensp;&ensp;&ensp; <input
											type="radio" name="question3" value="4" title="清晰"> <input
											type="radio" name="question3" value="3" title="完整"> <input
											type="radio" name="question3" value="2" title="一般"> <input
											type="radio" name="question3" value="1" title="潦草">
										</td>
									</tr>

									<tr>
										<td colspan="4">2.2教学日志填写</td>
									</tr>
									<tr>
										<td colspan="4">&ensp;&ensp;&ensp;&ensp; <input
											type="radio" name="question4" value="4" title="清楚、准确">
											<input type="radio" name="question4" value="3" title="正确、及时">
											<input type="radio" name="question4" value="2" title="填写缺项">
											<input type="radio" name="question4" value="1" title="填写马虎">
										</td>
									</tr>

									<tr>
										<td colspan="4">2.3概念的讲解</td>
									</tr>
									<tr>
										<td colspan="4">&ensp;&ensp;&ensp;&ensp; <input
											type="radio" name="question5" value="4" title="语言精炼，深入浅出">
											<input type="radio" name="question5" value="3"
											title="能把握重难点，但不够清晰"> <input type="radio"
											name="question5" value="2" title="讲解基本清晰，但不易接受"> <input
											type="radio" name="question5" value="1" title="概念紊乱，时有差错">
										</td>
									</tr>

									<tr>
										<td colspan="4">2.4逻辑性、条理性</td>
									</tr>
									<tr>
										<td colspan="4">&ensp;&ensp;&ensp;&ensp; <input
											type="radio" name="question6" value="4" title="层次分明，融会贯通">
											<input type="radio" name="question6" value="3"
											title="条目较清晰，有分析归纳"> <input type="radio"
											name="question6" value="2" title="平淡描述，缺乏连贯性"> <input
											type="radio" name="question6" value="1" title="杂乱无章，前后矛盾">
										</td>
									</tr>

									<tr>
										<td colspan="4">2.5理论联系实际</td>
									</tr>
									<tr>
										<td colspan="4">&ensp;&ensp;&ensp;&ensp; <input
											type="radio" name="question7" value="4" title="理论紧密联系当前实际">
											<input type="radio" name="question7" value="3"
											title="理论能联系具体事例"> <input type="radio"
											name="question7" value="2" title="联系实际较勉强"> <input
											type="radio" name="question7" value="1" title="只有实际没有实际">
										</td>
									</tr>

									<tr>
										<td colspan="4">2.6作业与批改</td>
									</tr>
									<tr>
										<td colspan="4">&ensp;&ensp;&ensp;&ensp; <input
											type="radio" name="question8" value="4"
											title="选题得当，批改及时，注意讲评"> <input type="radio"
											name="question8" value="3" title="作业适当，批改及时"> <input
											type="radio" name="question8" value="2"
											title="作业量时轻时重，批改不够及时"> <input type="radio"
											name="question8" value="1" title="选题随便，批改马虎">
										</td>
									</tr>

									<tr>
										<td colspan="4">2.7教学反应与效果</td>
									</tr>
									<tr>
										<td colspan="4">&ensp;&ensp;&ensp;&ensp; <input
											type="radio" name="question9" value="4" title="优秀"> <input
											type="radio" name="question9" value="3" title="良好"> <input
											type="radio" name="question9" value="2" title="一般"> <input
											type="radio" name="question9" value="1" title="较差">
										</td>
									</tr>

								</tbody>
							</table>
						</div>

						<div class="layui-form-item">
							<button class="layui-btn" lay-filter="refer" lay-submit="">保存</button>
						</div>
					</form>
				</div>
			</div>
</body>
 <script>
	layui.use([ 'laydate', 'form' ], function() {
		var laydate = layui.laydate;
		var form = layui.form, layer = layui.layer;
		form.on('submit(refer)', function(data) {
			$.ajax({
				type : "post",
				url  : "${pageContext.request.contextPath}/score/addquestions",
				data : $('#questions').serialize(),
				success : function(data) {
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
				}
			})

			return false;
		});

		//执行一个laydate实例
		laydate.render({
			elem : '#start' //指定元素
		});

		//执行一个laydate实例
		laydate.render({
			elem : '#end' //指定元素
		});

	});
</script> 

</html>