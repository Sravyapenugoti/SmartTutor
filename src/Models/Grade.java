package Models;

public class Grade {
	private String ClassName;
	private int StudentTypeID,ClassID;
	public String getClassName() {
		return ClassName;
	}
	public void setClassName(String className) {
		ClassName = className;
	}
	public int getStudentTypeID() {
		return StudentTypeID;
	}
	public void setStudentTypeID(int studentTypeID) {
		StudentTypeID = studentTypeID;
	}
	public int getClassID() {
		return ClassID;
	}
	public void setClassID(int classID) {
		ClassID = classID;
	}

}
