package com.ontimepizza.common.dto;

public class ErrorDto {
	private String fileName;
	private String errorDesc;
	private boolean hasError;
	
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public String getErrorDesc() {
		return errorDesc;
	}
	public void setErrorDesc(String errorDesc) {
		this.errorDesc = errorDesc;
	}
	public boolean isHasError() {
		return hasError;
	}
	public void setHasError(boolean found) {
		this.hasError = found;
	}
}
