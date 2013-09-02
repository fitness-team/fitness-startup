package org.gymadviser.service;

import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import org.gymAdviser.dto.Table;

public class TablesService extends CommonService {

	public Table getTable(String database, String userId, String passward,
			String tableName) {
		Table table = new Table();
		Connection conn = null;
		Statement stmt = null;
		try {
			// STEP 2: Register JDBC driver
			Class.forName(JDBC_DRIVER);

			// STEP 3: Open a connection
			System.out.println("Connecting to database...");
			conn = DriverManager.getConnection(DB_URL + database, userId,
					passward);
			stmt = conn.createStatement();
			String sqlRows, sqlColums;
			sqlColums = "SELECT table_name, column_name, data_type, data_length FROM USER_TAB_COLUMNS WHERE table_name = "
					+ tableName;
			sqlRows = "select  * from " + tableName;

			ResultSet rsRows = stmt.executeQuery(sqlRows);
			ResultSet rsColums = stmt.executeQuery(sqlColums);
			/*
			 * DatabaseMetaData md = conn.getMetaData(); ResultSet rs =
			 * md.getTables(null, null, "%", null);
			 */
			while (rsRows.next()) {

				/*
				 * if (rs.getString("table_schema").equals("public")) {
				 * tables.add(rs.getString("table_name")); }
				 */
			}
			rsRows.close();
			rsColums.close();
			conn.close();
		} catch (ClassNotFoundException ex) {
			System.out.println("Error: unable to load driver class!");
			ex.printStackTrace();
		} catch (SQLException se) {
			// Handle errors for JDBC
			se.printStackTrace();
		} catch (Exception e) {
			// Handle errors for Class.forName
			e.printStackTrace();
		} finally {

			try {
				if (conn != null)
					conn.close();
			} catch (SQLException se) {
				se.printStackTrace();
			}// end finally try
		}// end try
		return table;
	}

	public ArrayList<String> getTables(String database, String userId,
			String passward) {

		ArrayList<String> tables = new ArrayList<String>();
		Connection conn = null;
		Statement stmt = null;
		try {
			// STEP 2: Register JDBC driver
			Class.forName(JDBC_DRIVER);

			// STEP 3: Open a connection
			System.out.println("Connecting to database...");
			conn = DriverManager.getConnection(DB_URL + database, userId,
					passward);
			stmt = conn.createStatement();
			String sql;
			sql = "select  table_schema, table_name from information_schema.tables";
			ResultSet rs = stmt.executeQuery(sql);
			/*
			 * DatabaseMetaData md = conn.getMetaData(); ResultSet rs =
			 * md.getTables(null, null, "%", null);
			 */
			while (rs.next()) {
				if (rs.getString("table_schema").equals("public")) {
					tables.add(rs.getString("table_name"));
				}
			}
			rs.close();
			conn.close();
		} catch (ClassNotFoundException ex) {
			System.out.println("Error: unable to load driver class!");
			ex.printStackTrace();
		} catch (SQLException se) {
			// Handle errors for JDBC
			se.printStackTrace();
		} catch (Exception e) {
			// Handle errors for Class.forName
			e.printStackTrace();
		} finally {

			try {
				if (conn != null)
					conn.close();
			} catch (SQLException se) {
				se.printStackTrace();
			}// end finally try
		}// end try
		return tables;
	}

	public TablesService() {

	}
}
