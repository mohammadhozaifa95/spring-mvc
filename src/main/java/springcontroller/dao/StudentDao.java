package springcontroller.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import springcontroller.Entity.Student;

@Repository("studentDao") // Explicitly name the bean
public class StudentDao {

	@Autowired
	private HibernateTemplate hibernateTemplate;

	@Transactional
	public void savedata(Student student) {
		System.out.println(student);

		// Save or update the student entity
		this.hibernateTemplate.saveOrUpdate(student);
	}

	public List<Student> Fetchdata() {
		return this.hibernateTemplate.loadAll(Student.class);
	}

	@Transactional
	public void delete(int id) {
		Student student = this.hibernateTemplate.get(Student.class, id);
		if (student != null) {
			this.hibernateTemplate.delete(student);
		}
	}

	public Student findStudentById(int id) {
		return this.hibernateTemplate.get(Student.class, id);
	}
}
