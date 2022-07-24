package com.care.quiz.login.service;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import com.care.quiz.login.dao.ILoginDAO;
import com.care.quiz.membership.dto.LoginDTO;

@Service
public class LoginServiceImpl implements ILoginService{
	@Autowired private ILoginDAO loginDao;
	
	@Autowired private HttpSession session;
	
	@Override
	public String loginProc(LoginDTO login) {
		if(login.getId() == null || login.getId().isEmpty())
			return "���̵� �Է��ϼ���.";
		if(login.getPw() == null || login.getPw().isEmpty())
			return "��й�ȣ�� �Է��ϼ���.";
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		LoginDTO check = loginDao.loginProc(login);
		if(check != null && encoder.matches(login.getPw(), check.getPw())) {
			session.setAttribute("id", check.getId());
			return "�α��� ����";
		}else
			return "���̵� �Ǵ� ��й�ȣ�� Ȯ���ϼ���.";
		}
}
