package javabase.main;

public class Mybatistest {
	private int iId;
	private String StrName;
	private int iAge;
	
	/* 获取私有成员 */
	public int getId() {
		return iId;
	}
	public String getName() {
		return StrName;
	}
	public int getAge() {
		return iAge;
	}
	public void setId(int iId)	{
		this.iId = iId;
	}
	public void setName(String strName) {
		this.StrName = strName;
	}
	public void setAge(int iAge) {
		this.iAge = iAge;
	}
	
	@Override
	public String toString(){
		return "User [id=" + iId + ", name=" + StrName + ", age =" + iAge + "]";
	}
	
}
