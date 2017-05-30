package util;

public class ThisSystemException extends RuntimeException{
	private static final long serialVersionUID = 1L;

	public ThisSystemException(String message, Throwable cause) {
		super(message, cause);
	}

	public ThisSystemException(String message) {
		super(message);
	}

	
}
