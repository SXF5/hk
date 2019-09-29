package evaluation.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import evaluation.entity.Faculty;
import evaluation.entity.Result;
import evaluation.entity.Score;
import evaluation.service.ScoreService;

@Controller
@RequestMapping("/score")
public class ScoreController {
	
	@Autowired
	private ScoreService scoreService;
	
	 //新增提交
	 @RequestMapping("/add_submit")
	 @ResponseBody
	 public Result add_submit(Integer studentid,Integer teachingid,int question0,int question1,int question2,int question3,int question4,int question5,int question6,int question7,int question8,int question9) {
		Score score=new Score();
		score.setStudentid(studentid);
		score.setTeachingid(teachingid);
		score.setQuestion0(question0);
		score.setQuestion1(question1);
		score.setQuestion2(question2);
		score.setQuestion3(question3);
		score.setQuestion4(question4);
		score.setQuestion5(question5);
		score.setQuestion6(question6);
		score.setQuestion7(question7);
		score.setQuestion8(question8);
		score.setQuestion9(question9);
		
		 int i=scoreService.insertScore(score);
		 if(i>0) {
			 return new Result(1,"评价成功!");
		 }else {
			 return new Result(0,"评价失败!");
		}
	 }

}
