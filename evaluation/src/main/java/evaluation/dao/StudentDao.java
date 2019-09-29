package evaluation.dao;

import java.util.List;

import evaluation.entity.Student;
import evaluation.entity.Teacher;
import evaluation.entity.Teaching;

public interface StudentDao {
	
	//查询所有
	List<Student> getStus();
	//根据id查询
	Student getStudentBystuid(int studentid);
	//修改
	int updateStudent(Student student);
	//删除
	int studentdel(int studentid);
	//批量删除
	int studentall(String[] aa1);
	
	int studentadd(Student student);
	
	List<Teaching> getTeacher(int classid);
	
	Student getStudent(Student student);
}
