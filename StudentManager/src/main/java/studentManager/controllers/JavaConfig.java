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

		ds.setDriverClassName("com.mysql.jdbc.Driver");
		ds.setUrl("jdbc:mysql://localhost:5432/StudentsDB");
		ds.setUsername("******");
		ds.setPassword("******");

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

}
