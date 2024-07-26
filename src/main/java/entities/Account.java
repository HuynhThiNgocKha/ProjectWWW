package entities;

public class Account {
	private String name;
	private String password;
	
	public Account(String name, String password) {
		super();
		this.name = name;
		this.password = password;
	}
	
	public Account() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	@Override
	public String toString() {
		return "Account [name=" + name + ", password=" + password + "]";
	}
}
