package springcontroller.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import springcontroller.Entity.Student;
import springcontroller.dao.StudentDao;

@Service
public class StudentService {

    @Autowired
    @Qualifier("studentDao") // Specify the correct DAO bean
    private StudentDao dao;

    public void saveStudent(Student student) {
    	
        dao.savedata(student);
    }

    public List<Student> getAllStudents() {
        return dao.Fetchdata();
    }

    public Student getStudentById(int id) {
        return dao.findStudentById(id);
    }

    public void deleteStudent(int id) {
        dao.delete(id);
    }
}
