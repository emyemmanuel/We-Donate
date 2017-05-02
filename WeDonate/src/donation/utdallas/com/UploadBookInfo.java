package donation.utdallas.com;

import com.opensymphony.xwork2.ActionSupport;

public class UploadBookInfo extends ActionSupport {
	private String bname;
	private String aname;
	private int quantity;
	private String dname;
	private String contact;

	public String getBname() {
		return bname;
	}

	public void setBname(String bname) {
		this.bname = bname;
	}

	public String getAname() {
		return aname;
	}

	public void setAname(String aname) {
		this.aname = aname;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public String getDname() {
		return dname;
	}

	public void setDname(String dname) {
		this.dname = dname;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public String execute() throws Exception {
		CreateDatabase conn = new CreateDatabase();
		conn.connect();
		conn.insertBook(bname, quantity, aname, dname, contact);

		return "success";
	}

}
