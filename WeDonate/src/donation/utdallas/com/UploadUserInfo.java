package donation.utdallas.com;

import com.opensymphony.xwork2.ActionSupport;

public class UploadUserInfo extends ActionSupport {

	private static final long serialVersionUID = 1L;
	private String name;
	private String uname;
	private String password;
	private String dob;
	private String bgroup;
	private String type;
	private String id;
	private String mail;
	private String phone;
	private int age;
	private String gender;
	private String address;
	private String orgName;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getBgroup() {
		return bgroup;
	}

	public void setBgroup(String bgroup) {
		this.bgroup = bgroup;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getMail() {
		return mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getOrgName() {
		return orgName;
	}

	public void setOrgName(String orgName) {
		this.orgName = orgName;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public UploadUserInfo() {
	}

	public String execute() throws Exception {
		CreateDatabase conn = new CreateDatabase();
		conn.connect();
		conn.insert(name, uname, password, dob, bgroup, type, id, mail, phone,
				age, gender, address, orgName);

		return "success";
	}
}