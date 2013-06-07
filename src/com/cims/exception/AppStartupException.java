package com.cims.exception;

public class AppStartupException extends RuntimeException {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	public AppStartupException() {
		super();
	}
	
	public AppStartupException(String message) {
		super(message);
	}
	
	public AppStartupException(String message, Throwable cause) {
		super(message, cause);
	}
	
	public AppStartupException(Throwable cause) {
		super(cause);
	}

}
