package dao;


import java.util.ArrayList;
import java.util.List;

import dto.Process;

public class ProcessDao extends DB{
	
	public ProcessDao() {
		super();
	}
	
	public static ProcessDao processDao = new ProcessDao();
	
	public static ProcessDao getProcessDao() {
		return processDao;
	}
	
	// 새로운 공정 등록하기
	public boolean enrollProcess(Process process) {
		String sql = "insert into process(processOrder, processPreparation1, processPreparation2, processPreparation3, processPreparation4, processPreparation5, processPreparation6, processEndDate, processEndTime) values(?,?,?,?,?,?,?,?,?)";
		try {
			ps = con.prepareStatement(sql);
			ps.setInt(1, process.getProcessOrder());
			ps.setString(2, process.getProcessPreparation1());
			ps.setString(3, process.getProcessPreparation2());
			ps.setString(4, process.getProcessPreparation3());
			ps.setString(5, process.getProcessPreparation4());
			ps.setString(6, process.getProcessPreparation5());
			ps.setString(7, process.getProcessPreparation6());
			ps.setString(8, process.getProcessEndDate());
			ps.setString(9, process.getProcessEndTime());
			ps.executeUpdate();
	
			return true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	
	// processOrder 가져오기
	public int orderCount() {
		String sql = "select count(processOrder) from process";
		try {
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			if(rs.next()) {
				return rs.getInt(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
	
	// 기존 공정을 조회해서 불러오기 
	public ArrayList<Process> getProcessList(){
		ArrayList<Process> processList = new ArrayList<>();
		String sql = "select * from process";
		try {
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()) {
				Process process = new Process(
						rs.getInt(2),
						rs.getString(3),
						rs.getString(4),
						rs.getString(5),
						rs.getString(6),
						rs.getString(7),
						rs.getString(8),
						rs.getString(9),
						rs.getString(10)
						);
				processList.add(process);
			}
			return processList;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	

}
