package mind.model.dto;

public class MemberDTO {

	private String id; //유저 아이디
	private String name; //유저 이름
	private String pwd; //비밀번호
	private String phoneNum; // 유저 연락처
	private int gymCode; //사업가라면 필요한 헬스장 코드 헬스장 코드는 시퀀스라서 인트로
	private int balance;
	
	/**
	 * 인수없는  MemberDTO생성자
	 * */
	public MemberDTO() {}

	
	/**
	 * 모든 필드사용하는 MemberDTO생성자 아마 헬스장 코드가 있으니 사업가 생성할 때 사용할 듯
	 * */
	public MemberDTO(String id, String pwd, String name, String phoneNum, int gymCode/*, int balance*/) {
		super();
		this.id = id;
		this.pwd = pwd;
		this.name = name;
		this.phoneNum = phoneNum;
		this.gymCode = gymCode;
		/*this.balance = balance;*/
	}


	/**
	 * 헬스장 코드가 없는 MemberDTO생성자 아마 일반 유저가 사용할 듯ㅋㅋ
	 * */
	public MemberDTO(String id, String pwd, String name, String phoneNum) {
		super();
		this.id = id;
		this.name = pwd;
		this.pwd = name;
		this.phoneNum = phoneNum;
	}
	
	/**
	 * 포인트를 사용하기 위한 MemberDTO생성자
	 */
	public MemberDTO(String id, int balance) {
		super();
		this.id = id;
		this.balance = balance;
	}

	
	/**
	 * 필요한 생성자 있으면 생성하세요
	 * */
	
	
	
	///////////////////////////////////
	//getter setter
	
	public String getId() {
		return id;
	}



	public void setId(String id) {
		this.id = id;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getPwd() {
		return pwd;
	}


	public void setPwd(String pwd) {
		this.pwd = pwd;
	}


	public String getPhoneNum() {
		return phoneNum;
	}


	public void setPhoneNum(String phoneNum) {
		this.phoneNum = phoneNum;
	}


	public int getGymCode() {
		return gymCode;
	}


	public void setGymCode(int gymCode) {
		this.gymCode = gymCode;
	}


	public int getBalance() {
		return balance;
	}


	public void setBalance(int balance) {
		this.balance = balance;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
