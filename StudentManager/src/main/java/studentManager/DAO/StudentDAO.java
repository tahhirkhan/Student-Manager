package studentManager.DAO;

import java.util.List;

import studentManager.models.Student;

public interface StudentDAO {

	public int insert(Student student);

	public int update(int studentId);

	public int delete(int studentId);

	public List<Student> getAllStudents();
}
