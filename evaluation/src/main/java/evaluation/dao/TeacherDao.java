package evaluation.dao;

import java.util.List;

import evaluation.entity.Teacher;
import evaluation.util.Page;

public interface TeacherDao {
	
	//分页
	List<Teacher> getTeachers(Page<Teacher> page);
	//根据id查询
	Teacher getTeacherByid(int teacherid);
	//查询一组
	int getCount();
	//根据账号查询
	int getTeacherByNum(String teachernumber);
	//新增
	int addTeacher(Teacher teacher);
	//删除
	int delTeacher(String teachernumber);
	//修改
	int updateTeacher(Teacher teacher);
	//查询所有
	Teacher getTeacher(Teacher teacher);
	//批量删除
	int delAllTeacher(String[] ids);


}
