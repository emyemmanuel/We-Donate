package donation.utdallas.com;

import com.opensymphony.xwork2.ActionSupport;

public class BookAction extends ActionSupport {
	private String bname;
	private String aname;
	private String quantity;
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

	public String getQuantity() {
		return quantity;
	}

	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public String execute() throws Exception {
		return "success";
	}
}
