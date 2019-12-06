package com.hcc.advweb;

import java.util.ArrayList;

import org.springframework.ui.ModelMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping
public class StudentController {

	@Autowired
	private StudentService studentService;
	
	public StudentController() {
		// TODO Auto-generated constructor stub
	}
	@RequestMapping(value="/studentslist", method= RequestMethod.GET)
	public ModelAndView getStudentsList(ModelAndView model) {
		ArrayList<Student> studentsList = studentService.getStudentsList();
		model.addObject("studentsList",studentsList);
		model.setViewName("studentslist");
		return model;
	}

	@RequestMapping(value="/newUser",method=RequestMethod.GET)
	public ModelAndView newSpringStudent(ModelAndView modelView) {
		Student student = new Student();
		modelView.addObject("student",student);
		modelView.setViewName("signUp");
		return modelView;
	}
	
	@RequestMapping(value="/addNewUser", method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView addSpringStudent(@ModelAttribute Student student) {
		System.out.println("----------");
		if (student.getId() == 0) {
			studentService.addStudent(student);
		} else {
			studentService.updateStudent(student);
		}

		return new ModelAndView("usersList", "student", student);
	}
	
	
}
