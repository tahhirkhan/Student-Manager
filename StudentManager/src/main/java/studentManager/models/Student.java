package studentManager.models;

public class Student {

	private int id;
	private String name;
	private String address;
	private String branch;
	private String gender;
	private String email;

	public Student(int id, String name, String address, String branch, String gender, String email) {
		super();
		this.id = id;
		this.name = name;
		this.address = address;
		this.branch = branch;
		this.gender = gender;
		this.email = email;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getBranch() {
		return branch;
	}

	public void setBranch(String branch) {
		this.branch = branch;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public Student() {
		super();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	@Override
	public String toString() {
		return "Student [id=" + id + ", name=" + name + ", address=" + address + ", branch=" + branch + ", gender="
				+ gender + ", email=" + email + "]";
	}

}
