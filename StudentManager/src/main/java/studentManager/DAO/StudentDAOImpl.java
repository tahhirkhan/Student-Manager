package studentManager.DAO;

import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import studentManager.models.EditStudent;
import studentManager.models.Student;

public class StudentDAOImpl implements StudentDAO {

	private JdbcTemplate jdbcTemplate;

	public int insert(Student student) {
		String query = "INSERT INTO studenttable VALUES (?,?,?,?,?,?)";
		int result = this.jdbcTemplate.update(query, student.getId(), student.getName(), student.getAddress(),
				student.getBranch(), student.getGender(), student.getEmail());
		return result;
	}

	public int update(EditStudent student) {
		String query = "UPDATE studenttable SET name=?, email=? WHERE id=?";
		int result = this.jdbcTemplate.update(query, student.getNewName(), student.getNewEmail(), student.getId());
		return result;
	}

	public int delete(int studentId) {
		String query = "DELETE FROM studenttable WHERE id=?";
		int result = this.jdbcTemplate.update(query, studentId);
		return result;
	}

	public Student getStudent(int studentId) {
		String query = "SELECT * FROM studenttable WHERE id=?";
		RowMapper<Student> rowMapper = new RowMapperImpl();
		Student student = this.jdbcTemplate.queryForObject(query, rowMapper, studentId);
		return student;
	}

	public List<Student> getAllStudents() {
		String query = "SELECT * FROM studenttable  ORDER BY id";
		RowMapper<Student> rowMapper = new RowMapperImpl();
		List<Student> allStudents = this.jdbcTemplate.query(query, rowMapper);
		return allStudents;
	}

	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

	@Override
	public int update(int studentId) {
		// TODO Auto-generated method stub
		return 0;
	}

}
