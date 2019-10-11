package evaluation.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import evaluation.dao.TeacherDao;
import evaluation.entity.Course;
import evaluation.entity.Teacher;

@Service
public class TeacherService {
	
	//注入接口
	@Autowired
	private TeacherDao teacherDao;

	//查询所有教师	
	public List<Teacher> getTeachers(){
		return teacherDao.getTeachers();
	}

	//分页

	public List<Teacher> getTeachersmajor(){
		return teacherDao.getTeachersmajor();
	}
		
	
	//删除
	public int delTeacher(String teachernumber) {
		return teacherDao.delTeacher(teachernumber);
	}
	
	//查询一组
	public int getCount() {
		return teacherDao.getCount();
	}
	
	//新增
	public int addTeacher(Teacher teacher) {
		return teacherDao.addTeacher(teacher);
	}
	
	//修改
	public int updateTeacher(Teacher teacher) {
		return teacherDao.updateTeacher(teacher);
	}
	


	public int resetpwd(int teacherid) {
		return teacherDao.resetpwd(teacherid);
	}
	

	//根据id查询

	public Teacher getTeacherByid(int teacherid) {
		return teacherDao.getTeacherByid(teacherid);
	}	
   
    
   
	public Teacher geTeacher(Teacher teacher) {
		return teacherDao.getTeacher(teacher);
	}

	public List<Teacher> getteacherpower(){
	return	teacherDao.getteacherpower();
		
	}
	//权限修改
	public int updatepower(Teacher teacher) {
		return teacherDao.updatepower(teacher);
	}
		


	//批量删除	
	public int delAllTeacher(String[] ids) {
		return teacherDao.delAllTeacher(ids);
	}
	
	//模糊查询
		public List<Teacher> mhselect(String name){
			List<Teacher> list = teacherDao.mhselect(name);
			return list;
			
		}
		public List<Teacher> getTeachernot(Teacher teacher) {
			return teacherDao.getTeachernot(teacher);
		}	
	//评价
		public List<Teacher> getTeachering(Teacher teacher){
			
			return teacherDao.getTeachering(teacher);
		}
	//個人信息修改
public int myupdate(Teacher teacher){
			
			return teacherDao.myupdate(teacher);
		}
//登录判断
	public int login(String teachernumber,String password) {
		Teacher teacher=new Teacher();
		teacher.setTeachernumber(teachernumber);
		teacher.setPassword(password);
		Teacher t=teacherDao.getTeacher(teacher);
		if(t.getPower()==1){
			return 1;
		}if(t.getPower()==2) {
			return 2;
		}
		return 2;			
	}






}

