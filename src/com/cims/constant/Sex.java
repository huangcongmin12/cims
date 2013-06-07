package com.cims.constant;

/**
 * CIMS Sex
 *
 * @author huangcongmin
 * @version , 2013-5-17
 * @since
 */
public enum Sex {

	MALE("男"), FEMALE("女");
	
	private String value;
	
	Sex(String value) {
		this.value = value;
	}

	public String getValue() {
		return value;
	}

	public void setValue(String value) {
		this.value = value;
	}
	
	public String toString() {
		return this.value;
	}

}
