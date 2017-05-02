package donation.utdallas.com;

import com.opensymphony.xwork2.ActionSupport;


public class DonateAction extends ActionSupport
{

	private String uname;
	private String password;

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

	public String execute()
        throws Exception
    {
		String returnType;
		CreateDatabase connection=new CreateDatabase();
		connection.connect();
		returnType=connection.retrieve(uname, password);
		System.out.println(returnType);	
        return returnType;
    }

    private static final long serialVersionUID = 1L;
}