package studentManager.models;

public class EditStudent {

	private int id;
	private String newName;
	private String newEmail;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNewName() {
		return newName;
	}

	public void setNewName(String newName) {
		this.newName = newName;
	}

	public String getNewEmail() {
		return newEmail;
	}

	public void setNewEmail(String newEmail) {
		this.newEmail = newEmail;
	}

	public EditStudent() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "EditStudent [id=" + id + ", newName=" + newName + ", newEmail=" + newEmail + "]";
	}

}
