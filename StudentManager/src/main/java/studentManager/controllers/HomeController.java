package studentManager.controllers;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import studentManager.DAO.Id;
import studentManager.DAO.StudentDAOImpl;
import studentManager.models.EditStudent;
import studentManager.models.Student;

@Controller
public class HomeController {

	ApplicationContext context = new AnnotationConfigApplicationContext(JavaConfig.class);
	StudentDAOImpl sdi = (StudentDAOImpl) context.getBean("sdi");

	@RequestMapping("/home")
	public String home() {
		return "index";
	}

	@RequestMapping("/findStudentPage")
	public String findStudent() {
		return "findStudent";
	}

	@RequestMapping("/editStudentPage")
	public String editStudetn() {
		return "editStudent";
	}

	@RequestMapping("/deleteStudentPage")
	public String deleteStudent() {
		return "deleteStudent";
	}

	@RequestMapping("/getAllStudents")
	public String getAllStudents(Model model) {
		System.out.println("Firing home url");

		List<Student> allStudents = sdi.getAllStudents();
		System.out.println(allStudents);

		model.addAttribute("allStudents", allStudents);

		return "allStudents";
	}

	@RequestMapping(path = "/addStudent", method = RequestMethod.POST)
	public String processInsertForm(@ModelAttribute Student student, Model model) {
		System.out.println(student);
		sdi.insert(student);

		return "index";
	}

	@RequestMapping("/findStudentResult")
	public String processFindStudentForm(@ModelAttribute Id id, Model model) {
		System.out.println(id);
		Student student = sdi.getStudent(id.getId());
		model.addAttribute("student", student);
		model.addAttribute("id", id);
		System.out.println(student);

		return "searchResponse";
	}

	@RequestMapping("/editStudentResult")
	public String processEditStudentForm(@ModelAttribute EditStudent student) {

		sdi.update(student);
		System.out.println(student);

		return "findStudent";
	}

	@RequestMapping("/deleteStudentResult")
	public String processDeleteStudentForm(@ModelAttribute Id id) {

		sdi.delete(id.getId());

		return "index";
	}

}
