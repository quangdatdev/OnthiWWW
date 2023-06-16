package com.se.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.se.model.CLNTPF;
import com.se.utils.ConnectDB;

public class CLNTPFDAO {

	PreparedStatement preStm;
	ResultSet rs;

	public CLNTPFDAO() {
		// TODO Auto-generated constructor stub
	}

	public List<CLNTPF> getClientAll() throws Exception {
		List<CLNTPF> listClient = new ArrayList<CLNTPF>();
		try {
			Connection con = new ConnectDB().getConnection();

			String sql = "SELECT * FROM CLNTPF";
			preStm = con.prepareStatement(sql);
			rs = preStm.executeQuery();

			while (rs.next()) {
				String CLNTNUM = rs.getString("CLNTNUM");
				String CLNTNAME = rs.getString("CLNTNAME");
				String BIOFDATE = rs.getString("BIOFDATE");
				String COUNTRY = rs.getString("COUNTRY");
				String ADDRESS = rs.getString("ADDRESS");

				CLNTPF client = new CLNTPF(CLNTNUM, CLNTNAME, BIOFDATE, COUNTRY, ADDRESS);
				listClient.add(client);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return listClient;
	}

	public void addClient(CLNTPF clntpf) throws Exception {
		Connection con = new ConnectDB().getConnection();
		System.out.println(con.toString());
		String query = "INSERT INTO [dbo].[CLNTPF]\r\n" + "           ([CLNTNUM]\r\n" + "           ,[CLNTNAME]\r\n"
				+ "           ,[BIOFDATE]\r\n" + "           ,[COUNTRY]\r\n" + "           ,[ADDRESS])\r\n"
				+ "     VALUES (?,?,?,?,?)";
		try {
			preStm = con.prepareStatement(query);
			preStm.setString(1, clntpf.getCLNTNUM());
			preStm.setString(2, clntpf.getCLNTNAME());
			preStm.setString(3, clntpf.getBIOFDATE());
			preStm.setString(4, clntpf.getCOUNTRY());
			preStm.setString(5, clntpf.getADDRESS());
			preStm.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public CLNTPF getClientNum(String num) throws Exception {
		CLNTPF client = new CLNTPF();
		try {
			Connection con = new ConnectDB().getConnection();

			String sql = "SELECT * FROM CLNTPF where CLNTNUM='" + num + "'";
			preStm = con.prepareStatement(sql);
			rs = preStm.executeQuery();

			while (rs.next()) {
				String CLNTNUM = rs.getString("CLNTNUM");
				String CLNTNAME = rs.getString("CLNTNAME");
				String BIOFDATE = rs.getString("BIOFDATE");
				String COUNTRY = rs.getString("COUNTRY");
				String ADDRESS = rs.getString("ADDRESS");

				client = new CLNTPF(CLNTNUM, CLNTNAME, BIOFDATE, COUNTRY, ADDRESS);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return client;
	}
}
