package com.jsp.library.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.jsp.library.dao.StudentDao;
import com.jsp.library.entity.Student;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class StudentService {

	private final StudentDao studentDao;
	
	public void saveStudent(Student student) {
		studentDao.saveStudent(student);
	}
	
	public Student fetchById(int id) {
		return studentDao.fetchById(id);
	}
	
	public List<Student> fetchAllStudent() {
		 return studentDao.fetchAllStudent();
	}
	public void UpdateStudent(Student student) {
		studentDao.updateStudent(student);
	}
	
	
}
