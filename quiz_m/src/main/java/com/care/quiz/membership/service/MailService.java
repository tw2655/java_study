package com.care.quiz.membership.service;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

@Service
public class MailService {
	@Autowired JavaMailSender mailSender;
	
	public void sendMail(String to, String subject, String content) {
		MimeMessage message = mailSender.createMimeMessage();
		try {
			MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");
			messageHelper.setSubject(subject); // �̸����� ����
			messageHelper.setText(content);// �̸����� ����
			messageHelper.setTo(to); // ������
			mailSender.send(message);
		} catch (MessagingException e) {
			e.printStackTrace();
			}
	}
}