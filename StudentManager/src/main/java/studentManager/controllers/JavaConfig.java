package studentManager.controllers;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

import studentManager.DAO.StudentDAOImpl;
import studentManager.models.Student;

@Configuration
public class JavaConfig {

	@Bean("ds")
	public DriverManagerDataSource getDataSource() {

		DriverManagerDataSource ds = new DriverManagerDataSource();

		ds.setDriverClassName("org.postgresql.Driver");
		ds.setUrl("jdbc:postgresql://localhost:5432/postgres");
		ds.setUsername("postgres");
		ds.setPassword("password");

		return ds;
	}

	@Bean("temp")
	public JdbcTemplate jdbcTemplate() {

		JdbcTemplate temp = new JdbcTemplate();
		temp.setDataSource(getDataSource());

		return temp;
	}

	@Bean("sdi")
	public StudentDAOImpl sdi() {

		StudentDAOImpl studentDAOImpl = new StudentDAOImpl();
		studentDAOImpl.setJdbcTemplate(jdbcTemplate());

		return studentDAOImpl;
	}

	@Bean("student")
	public Student student() {

		Student student = new Student();
		student.setId(4);
		student.setName("Saqib Khan");
		student.setAddress("Lattishart Zaingeer");
		student.setBranch("branch x");
		student.setGender("Male");
		student.setEmail("demoEmail@gmail.com");

		return student;
	}

}
