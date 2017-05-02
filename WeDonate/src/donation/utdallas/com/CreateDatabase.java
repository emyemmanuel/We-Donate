package donation.utdallas.com;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.*;

public class CreateDatabase {
	private Connection connect;
	private Statement statement;
	private PreparedStatement preparedStatement;
	private ResultSet resultset;
	private String Query;
	private String CONNECTION_STRING;

	public CreateDatabase() {
		connect = null;
		statement = null;
		CONNECTION_STRING = "jdbc:mysql://localhost:3307/wedonate";
	}

	public void connect() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("Driver loaded...");
			connect = DriverManager
					.getConnection(CONNECTION_STRING, "root", "");

			System.out.println("connected");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void insert(String name, String uname, String password, String dob,
			String bgroup, String type, String id, String mail, String phone,
			int age, String gender, String address, String orgName) {

		try {
			System.out.println(dob);
			statement = connect.createStatement();

			Query = "INSERT INTO user(username,password,name,dob,blood,idtype,id,email,phone,age,gender,address,orgname) values(\""
					+ uname
					+ "\",\""
					+ password
					+ "\",\""
					+ name
					+ "\",\""
					+ dob
					+ "\",\""
					+ bgroup
					+ "\",\""
					+ type
					+ "\",\""
					+ id
					+ "\",\""
					+ mail
					+ "\",\""
					+ phone
					+ "\",\""
					+ age
					+ "\",\""
					+ gender
					+ "\",\""
					+ address
					+ "\",\""
					+ orgName
					+ "\");";

			System.out.println(Query);

			statement.executeUpdate(Query);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	public void insertBook(String name, int quantity, String aname,
			String dname, String phone) {

		try {

			statement = connect.createStatement();
			Query = "INSERT INTO item(category,itemName,quantity,authorName,name,phone) values(\""
					+ "Book"
					+ "\",\""
					+ name
					+ "\",\""
					+ quantity
					+ "\",\""
					+ aname + "\",\"" + dname + "\",\"" + phone + "\");";

			System.out.println(Query);

			statement.executeUpdate(Query);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	public String retrieve(String username, String password) {
		System.out.println("testing this.....");
		try {
			String name = null, pass = null;
			statement = connect.createStatement();
			Query = "SELECT * FROM user where username = \"" + username + "\";";
			System.out.println(Query);
			resultset = statement.executeQuery(Query);
			while (resultset.next()) {
				name = resultset.getString(1);
				pass = resultset.getString(2);
			}
			if (name != null) {
				if (name.equals(username) && pass.equals(password))
					return "success";
				else
					return "error";

			}
			return "error";

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return "error";
		}
	}

}
