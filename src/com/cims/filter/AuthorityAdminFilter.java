package com.cims.filter;

import java.io.IOException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import com.cims.constant.AppConfig;
import com.cims.constant.Role;
import com.cims.domain.Manager;

/**
 * CIMS 权限过滤器
 *
 * @author huangcongmin
 * @version , 2013-6-2
 * @since
 */
public class AuthorityAdminFilter implements Filter {

	private static final Logger log = Logger.getLogger(AuthorityAdminFilter.class);
	
	public void destroy() {
		
	}

	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain filterChain) throws IOException, ServletException {
		// 保证该过滤器在一次请求中只被调用一次
		if (request != null && request.getAttribute(AppConfig.FILTERED_REQUEST) != null) {
			filterChain.doFilter(request, response);
		} else {
			// 设置过滤标识，防止一次请求多次过滤
			request.setAttribute(AppConfig.FILTERED_REQUEST, Boolean.TRUE);
			HttpServletRequest httpRequest = (HttpServletRequest) request;
			HttpServletResponse httpResponse = (HttpServletResponse) response;
			Manager session_manager = (Manager) httpRequest.getSession().getAttribute(AppConfig.SESSION_MANAGER);
			
			Pattern pattern = Pattern.compile(".html");
			Matcher matcher = pattern.matcher(httpRequest.getRequestURI());
			if (!matcher.find()) {
				httpResponse.sendRedirect(httpRequest.getContextPath() + "/error.html");
				return;
			}
			// 当前URI资源需要登录才能访问
			if (!isURILogin(httpRequest.getRequestURI(), httpRequest)) {
				if (session_manager == null) {
					httpResponse.sendRedirect(httpRequest.getContextPath() + "/admin/admin-to-login.html");
					return;
				} else {
					// 如果是删除操作，则进行权限认证
					log.info(session_manager.getRole());
					if(isURIDelete(httpRequest.getRequestURI(), httpRequest)) {
						String role = session_manager.getRole().getValue();
						if ( role !=null && role.equals(Role.TEST_ADMIN.getValue())) {
							httpResponse.sendRedirect(httpRequest.getContextPath() + "/admin/delete-forbid.html");
							return;
						}
					} else {
						; // do nothing
					}
				}
				
			}
			filterChain.doFilter(request, response);
		}

	}

	/**
	 * 当前URI资源是否需要登录才能访问 当返回true，无需登录即可访问 ；当返回false，需登录才能访问
	 * 
	 * @author huangcongmin
	 * @date 2013-6-1
	 * @param requestURI
	 * @param request
	 * @return
	 */
	private boolean isURILogin(String requestURI, HttpServletRequest request) {
		if (request.getContextPath().equalsIgnoreCase(requestURI) 
				|| (request.getContextPath() + "/").equalsIgnoreCase(requestURI))
			return true;
		for (String uri : AppConfig.INHERENT_ESCAPE_URIS) {
			if (requestURI != null && requestURI.indexOf(uri) >= 0) {
				return true;
			}
		}
		return false;
	}
	
	/**
	 * 有权限用户可进行删除操作。 当返回true，非删除操作；返回false，为删除操作，需认证 。
	 *
	 * @author huangcongmin
	 * @date 2013-6-2
	 * @param requestURI
	 * @param httpRequest
	 * @return
	 */
	private boolean isURIDelete(String requestURI,HttpServletRequest request) {
		if (request.getContextPath().equalsIgnoreCase(requestURI) 
				|| (request.getContextPath() + "/").equalsIgnoreCase(requestURI))
			return true;
		for (String uri : AppConfig.DELETET_ESCAPE_URIS) {
			if (requestURI != null && requestURI.indexOf(uri) >= 0) {
				return true;
			}
		}
		return false;
	}

	public void init(FilterConfig filterConfig) throws ServletException {
		
	}

}
