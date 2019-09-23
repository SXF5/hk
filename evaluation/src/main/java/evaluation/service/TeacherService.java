package evaluation.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import evaluation.dao.TeacherDao;
import evaluation.entity.Teacher;

import evaluation.util.Page;


@Service
public class TeacherService {
	
	//注入接口
	@Autowired
	private TeacherDao teacherDao;
	
	//分页
	public List<Teacher> getTeachers(Page<Teacher> page){
		return teacherDao.getTeachers(page);
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
	
	//根据id查询
	public Teacher getTeacherByid(int teacherid) {
		return teacherDao.getTeacherByid(teacherid);
	}
	
	//分页
    public void RecordsList(Page<Teacher> page) {
        int count=teacherDao.getCount();//获取所有消息的数量
        page.setTotalCount(count);
        //判断传入的页面是否合法
        if(page.getPageIndex()>page.getTotalPageCount()) {
            //确保页面不会超过总页数
            page.setPageIndex(page.getTotalPageCount());
        }
        
        List<Teacher> teachers=teacherDao.getTeachers(page);
        page.setDataList(teachers);
    }
    
    //登录判断
	public boolean login(String teachernumber,String password) {
		Teacher teacher=new Teacher();
		teacher.setTeachernumber(teachernumber);
		teacher.setPassword(password);
		Teacher t=teacherDao.getTeacher(teacher);
		if(t!=null){
			return true;
		}
		return false;
		}
	
	//批量删除	
	public int delAllTeacher(String[] ids) {
		return teacherDao.delAllTeacher(ids);
	}

}

