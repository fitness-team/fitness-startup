package org.gymadviser.service;

import java.util.HashMap;

import org.gymAdviser.dto.User;

import java.sql.*;

public class LoginService {
	// JDBC driver name and database URL
	static final String JDBC_DRIVER = "org.postgresql.Driver";
	static final String DB_URL = "jdbc:postgresql://ec2-54-213-58-1.us-west-2.compute.amazonaws.com:5432/users";

	// Database credentials
	static String USER = "";
	static String PASS = "";
	HashMap<String, String> users = new HashMap<String, String>();

	public LoginService() {
		users.put("dshevchyk", "Dima Shevchyk");
		users.put("dimahum", "Dima Hum");
		users.put("mih403", "Misha Fartuh");
	}

	public boolean authentificate(String userId, String password) {
		// STEP 3: Open a connection
		USER = userId;
		PASS = password;
		if (password == null || password == "" || password.trim() == ""
				|| password.length() != password.trim().length()) {
			return false;
		}
		boolean result = false;
		Connection conn = null;
		Statement stmt = null;
		System.out.println("pre connecting to database...");
		try {
			// STEP 2: Register JDBC driver
			Class.forName("org.postgresql.Driver");

			// STEP 3: Open a connection
			System.out.println("Connecting to database...");
			conn = DriverManager.getConnection(DB_URL, USER, PASS);

			// STEP 4: Execute a query
			System.out.println("Creating statement...");
			stmt = conn.createStatement();
			String sql;
			sql = "SELECT id, first, last, age FROM Employees";
			ResultSet rs = stmt.executeQuery(sql);
			result = true;
			// STEP 5: Extract data from result set
			while (rs.next()) {
				// Retrieve by column name
				int id = rs.getInt("id");
				int age = rs.getInt("age");
				String first = rs.getString("first");
				String last = rs.getString("last");

				// Display values
				System.out.print("ID: " + id);
				System.out.print(", Age: " + age);
				System.out.print(", First: " + first);
				System.out.println(", Last: " + last);
			}
			// STEP 6: Clean-up environment
			rs.close();
			stmt.close();
			conn.close();
		} catch (SQLException se) {
			// Handle errors for JDBC
			se.printStackTrace();
		} catch (Exception e) {
			// Handle errors for Class.forName
			e.printStackTrace();
		} finally {
			// finally block used to close resources
			try {
				if (stmt != null)
					stmt.close();
			} catch (SQLException se2) {
			}// nothing we can do
			try {
				if (conn != null)
					conn.close();
			} catch (SQLException se) {
				se.printStackTrace();
			}// end finally try
		}// end try

		return result;
	}

	public User getUserDetales(String userId) {
		User user = new User();
		System.out.print(userId);

		user.setUserName(users.get(userId));

		System.out.print(user.getUserName());
		user.setUserId(userId);
		return user;
	}
}
