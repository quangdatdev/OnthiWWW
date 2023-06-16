package com.se.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.se.model.AGNTPF;
import com.se.utils.ConnectDB;

public class AGNTPFDAO {
	PreparedStatement preStm;
	ResultSet rs;

	public AGNTPFDAO() {
		// TODO Auto-generated constructor stub
	}

	public List<AGNTPF> getAgentAll() throws Exception {
		List<AGNTPF> listAgent = new ArrayList<AGNTPF>();
		try {
			Connection con = new ConnectDB().getConnection();
			String sql = "SELECT * FROM AGNTPF";
			preStm = con.prepareStatement(sql);
			rs = preStm.executeQuery();

			while (rs.next()) {
				String CLNTNUM = rs.getString("CLNTNUM");
				String AGNTNUM = rs.getString("AGNTNUM");
				String AGNTNAME = rs.getString("AGNTNAME");
				String EXPIDATE = rs.getString("EXPIDATE");
				boolean CODUDATE = rs.getBoolean("CODUDATE");
				String SERBRANCH = rs.getString("SERBRANCH");

				AGNTPF agent = new AGNTPF(CLNTNUM, AGNTNUM, AGNTNAME, EXPIDATE, CODUDATE, SERBRANCH);

				listAgent.add(agent);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return listAgent;
	}

	public void addAgent(AGNTPF agent) throws Exception {
		Connection con = new ConnectDB().getConnection();
		System.out.println(con.toString());
		String query = "INSERT INTO [dbo].[AGNTPF]\r\n"
				+ "           ([CLNTNUM]\r\n"
				+ "           ,[AGNTNUM]\r\n"
				+ "           ,[AGNTNAME]\r\n"
				+ "           ,[EXPIDATE]\r\n"
				+ "           ,[CODUDATE]\r\n"
				+ "           ,[SERBRANCH])\r\n"
				+ "     VALUES\r\n"
				+ "           (?\r\n"
				+ "           ,?\r\n"
				+ "           ,?\r\n"
				+ "           ,?\r\n"
				+ "           ,?\r\n"
				+ "           ,?)";
		try {
			preStm = con.prepareStatement(query);
			preStm.setString(1, agent.getCLNTNUM());
			preStm.setString(2, agent.getAGNTNUM());
			preStm.setString(3, agent.getAGNTNAME());
			preStm.setString(4, agent.getEXPIDATE());
			preStm.setBoolean(5, agent.isCODUDATE());
			preStm.setString(6, agent.getSERBRANCH());
			preStm.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
}
