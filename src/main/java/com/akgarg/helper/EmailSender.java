package com.akgarg.helper;

import com.sendgrid.Method;
import com.sendgrid.Request;
import com.sendgrid.Response;
import com.sendgrid.SendGrid;
import com.sendgrid.helpers.mail.Mail;
import com.sendgrid.helpers.mail.objects.Content;
import com.sendgrid.helpers.mail.objects.Email;

import java.io.IOException;

public class EmailSender {

    public static boolean sendEmail(String mailSubject, String emailMessage, String destinationEmail) {
        boolean otpSend = false;

        Email from = new Email("Sender-Email-Comes-Here");
        Email to = new Email(destinationEmail);

        Content content = new Content("text/html", emailMessage);
        Mail mail = new Mail(from, mailSubject, to, content);
        SendGrid sg = new SendGrid("API-Key-Goes-Here");
        Request request = new Request();

        try {
            request.setMethod(Method.POST);
            request.setEndpoint("mail/send");
            request.setBody(mail.build());
            Response response = sg.api(request);
            System.out.println(response.getStatusCode() + ", " + response.getBody() + ", " + response.getHeaders());
            otpSend = true;
        } catch (IOException ex) {
            System.out.println("Exception in email sending: " + ex.getClass() + ", " + ex.getMessage());
        }

        return otpSend;
    }
}
