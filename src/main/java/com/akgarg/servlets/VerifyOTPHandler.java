package com.akgarg.servlets;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

public class VerifyOTPHandler extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        HttpSession session = req.getSession();
        PrintWriter writer = resp.getWriter();

        String originalOTP = (String) session.getAttribute("OTP");
        String otpEntered = req.getParameter("forgot-password-otp-entered");

        if (originalOTP.equals(otpEntered)) {
            session.removeAttribute("OTP");
            writer.println("200");
        } else {
            writer.println("500");
        }
    }
}