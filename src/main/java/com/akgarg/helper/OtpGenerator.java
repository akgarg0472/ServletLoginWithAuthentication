package com.akgarg.helper;

import java.util.Random;

public class OtpGenerator {

    public static String getOTP() {
        int len = 6;    // length of OTP

        String numbers = "0123456789";

        Random random = new Random();
        StringBuilder otp = new StringBuilder();

        for (int i = 0; i < len; i++) {
            otp.append(numbers.charAt(random.nextInt(numbers.length())));
        }

        return otp.toString();
    }
}
