package dao;

import dto.Process;

public class ProcessDao extends DB{
	
	public ProcessDao() {
		super();
	}
	
	public static ProcessDao processDao = new ProcessDao();
	
	public static ProcessDao getProcessDao() {
		return processDao;
	}
	
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
	

}
