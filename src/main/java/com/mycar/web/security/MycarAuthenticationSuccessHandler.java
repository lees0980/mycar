package com.mycar.web.security;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.User;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.security.web.savedrequest.SavedRequest;
import org.springframework.stereotype.Component;

import jdk.internal.org.jline.utils.Log;

@Component
public class MycarAuthenticationSuccessHandler implements AuthenticationSuccessHandler {

	@Override
	public void onAuthenticationSuccess(HttpServletRequest request,
			HttpServletResponse response,
			Authentication authentication) throws IOException, ServletException {
		// TODO Auto-generated method stub

		HttpSession session = request.getSession();
		SavedRequest savedRequest = (SavedRequest)session.getAttribute
				("SPRING_SECURITY_SAVED_REQUEST");

		if(savedRequest != null) {
			String returnURL = savedRequest.getRedirectUrl();
			response.sendRedirect(returnURL);
		}
		else{
			response.sendRedirect("/main/index");
			
		}
	}

}
