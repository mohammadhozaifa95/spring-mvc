package springcontroller;
import java.text.SimpleDateFormat;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import springcontroller.Entity.Student;
import springcontroller.Service.StudentService;

@Controller
public class RegistractionCont {

	@Autowired
	private StudentService service;

	@RequestMapping("/m")
	public String handle() {
		return "form"; // Form page for student details
	}

	@InitBinder
	public void initBinder(WebDataBinder binder) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
	}

	@RequestMapping("/s")
	public String saveStudent(@ModelAttribute("student") Student student) {
		service.saveStudent(student);
		return "redirect:/students"; // Redirect to student list
	}

	@GetMapping("/students")
	public String getStudents(Model model) {
		List<Student> allStudents = service.getAllStudents();
		model.addAttribute("students", allStudents);
		return "show"; // Show page to display students
	}

	@RequestMapping(value = "/delete/{id}", method = RequestMethod.POST)
	public String deleteStudent(@PathVariable("id") int id, @RequestParam("_method") String method) {
		if ("DELETE".equals(method)) {
			service.deleteStudent(id); 
		}
		return "redirect:/students"; // Redirect after delete
	}
	@RequestMapping(value = "/update/{id}", method = RequestMethod.GET)
	public String showUpdateForm(@PathVariable("id") int id, Model model) {
	    Student studentById = service.getStudentById(id);
	    model.addAttribute("student", studentById);
	     // Pass the list of available courses
	      return "update";
	}
	@RequestMapping(value = "/K/{id}", method = RequestMethod.POST)
	public String updateStudent(@PathVariable("id") int id, @ModelAttribute("student") Student student) {
		student.setId(id); 
		service.saveStudent(student); 
		return "redirect:/students"; 
	}

}
