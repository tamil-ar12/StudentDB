package Admin;

public class AdminDto {
	private int id;
	private String name;
	private long contact;
	private String email;
	private String pass;
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
	public long getContact() {
		return contact;
	}
	public void setContact(long contact) {
		this.contact = contact;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public AdminDto(int id, String name, long contact, String email, String pass) {
		super();
		this.id = id;
		this.name = name;
		this.contact = contact;
		this.email = email;
		this.pass = pass;
	}
	
}
