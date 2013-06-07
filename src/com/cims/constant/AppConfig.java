package com.cims.constant;

public class AppConfig {
	
	/**
	 * 每页显示记录条数
	 */
	public final static int pageSize = 12;

	/**
	 * 过滤器调用标志
	 */
	public static final String FILTERED_REQUEST = "session_context_filtered_request";
	
	/**
	 * 请求路径
	 */
	public static final String RQUEST_URL = "request_url";
	
	/**
	 * 进行删除操作URI
	 */
	public static String[] DELETET_ESCAPE_URIS = {
		"admin/manager-delete.html","admin/course-delete.html",
		"admin/classroom-delete.html","admin/teacher-delete.html",
		"admin/student-delete.html"
		};
	
	/**
	 * 不需要登录即可访问的URI资源
	 */
	public static final String[] INHERENT_ESCAPE_URIS = { 
		"admin/admin-to-login.html", "admin/admin-login.html",
		"student/student-to-login.htm", "student/student-login.htm"};

	/**
	 * 管理员session Key
	 */
	public final static String SESSION_MANAGER  = "session_manager";
	
	/**
	 * 学生用户session Key
	 */
	public final static String SESSION_STUDENT  = "session_student";
	

}
