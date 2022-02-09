package dto;

public class Process {

	private int processNo; // DB 에 저장되는 고유번호
	private int processOrder; // 작업지시번호
	private String processPreparation1;
	private String processPreparation2;
	private String processPreparation3;
	private String processPreparation4;
	private String processPreparation5;
	private String processPreparation6;
	private String processEndDate;
	private String processEndTime;

	public Process() {
	}

	public Process(int processNo, int processOrder, String processPreparation1, String processPreparation2,
			String processPreparation3, String processPreparation4, String processPreparation5,
			String processPreparation6, String processEndDate, String processEndTime) {
		this.processNo = processNo;
		this.processOrder = processOrder;
		this.processPreparation1 = processPreparation1;
		this.processPreparation2 = processPreparation2;
		this.processPreparation3 = processPreparation3;
		this.processPreparation4 = processPreparation4;
		this.processPreparation5 = processPreparation5;
		this.processPreparation6 = processPreparation6;
		this.processEndDate = processEndDate;
		this.processEndTime = processEndTime;
	}

	public Process(int processOrder, String processPreparation1, String processPreparation2, String processPreparation3,
			String processPreparation4, String processPreparation5, String processPreparation6, String processEndDate,
			String processEndTime) {
		this.processOrder = processOrder;
		this.processPreparation1 = processPreparation1;
		this.processPreparation2 = processPreparation2;
		this.processPreparation3 = processPreparation3;
		this.processPreparation4 = processPreparation4;
		this.processPreparation5 = processPreparation5;
		this.processPreparation6 = processPreparation6;
		this.processEndDate = processEndDate;
		this.processEndTime = processEndTime;
	}

	public int getProcessNo() {
		return processNo;
	}

	public void setProcessNo(int processNo) {
		this.processNo = processNo;
	}

	public int getProcessOrder() {
		return processOrder;
	}

	public void setProcessOrder(int processOrder) {
		this.processOrder = processOrder;
	}

	public String getProcessPreparation1() {
		return processPreparation1;
	}

	public void setProcessPreparation1(String processPreparation1) {
		this.processPreparation1 = processPreparation1;
	}

	public String getProcessPreparation2() {
		return processPreparation2;
	}

	public void setProcessPreparation2(String processPreparation2) {
		this.processPreparation2 = processPreparation2;
	}

	public String getProcessPreparation3() {
		return processPreparation3;
	}

	public void setProcessPreparation3(String processPreparation3) {
		this.processPreparation3 = processPreparation3;
	}

	public String getProcessPreparation4() {
		return processPreparation4;
	}

	public void setProcessPreparation4(String processPreparation4) {
		this.processPreparation4 = processPreparation4;
	}

	public String getProcessPreparation5() {
		return processPreparation5;
	}

	public void setProcessPreparation5(String processPreparation5) {
		this.processPreparation5 = processPreparation5;
	}

	public String getProcessPreparation6() {
		return processPreparation6;
	}

	public void setProcessPreparation6(String processPreparation6) {
		this.processPreparation6 = processPreparation6;
	}

	public String getProcessEndDate() {
		return processEndDate;
	}

	public void setProcessEndDate(String processEndDate) {
		this.processEndDate = processEndDate;
	}

	public String getProcessEndTime() {
		return processEndTime;
	}

	public void setProcessEndTime(String processEndTime) {
		this.processEndTime = processEndTime;
	}

}
