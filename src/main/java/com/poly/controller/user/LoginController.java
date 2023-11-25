package com.poly.controller.user;

import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.Optional;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.poly.dao.AccountDAO;
import com.poly.entity.Account;
import com.poly.entity.Mailer;
import com.poly.service.AccountService;
import com.poly.service.CartService;
import com.poly.service.CookieService;
import com.poly.service.MailerService;
import com.poly.service.SessionService;

import net.bytebuddy.utility.RandomString;

@Controller
public class LoginController {

	@Autowired
	AccountDAO dao;

	@Autowired
	AccountService accountService;

	@Autowired
	CookieService cookieService;


	@Autowired
	SessionService session;
	
	 @Autowired
	    JavaMailSender javaMailSender;

	@Autowired
	CartService cart;

	@GetMapping("/login")
	public String login(Model model) {
		model.addAttribute("countcart", cart.getCount());
		return "user/login";
	}

	@GetMapping("/register")
	public String index(Model model) {
		model.addAttribute("countcart", cart.getCount());
		return "user/register";
	}

	@GetMapping("/forgot-password")
	public String forgot(Model model) {
		model.addAttribute("countcart", cart.getCount());
		return "user/forgot-password";
	}

	@GetMapping("/reset-password")
	public String showResetPasswordForm(@Param(value = "token") String token, Model model) {
		Account account = accountService.getByToken(token);
		model.addAttribute("token", token);
		if (account == null) {
			model.addAttribute("message", "Invalid token!");
			return "redirect:/login";
		}
		// phương thức này xử lý yêu cầu hiển thị form đặt lại mật khẩu. Nó kiểm tra
		// tính hợp lệ của token, tìm kiếm tài khoản tương ứng và truyền thông tin cần
		// thiết vào model để hiển thị trong view
		model.addAttribute("countcart", cart.getCount());
		return "user/reset-password";
	}

	@GetMapping("/change-password")
	public String change(Model model) {
		model.addAttribute("countcart", cart.getCount());
		return "user/change-password";
	}

	@PostMapping("/login")
	public String login(@Valid @ModelAttribute Account acc, @RequestParam("username") String user,
			@RequestParam("password") String pass, @RequestParam(name = "remember", defaultValue = "false") Boolean rm,
			Model model) throws NoSuchAlgorithmException {
		Optional<Account> optionalAccount = dao.findById(user);
		session.set("message", null);
		if (optionalAccount.isPresent()) {
			Account account = optionalAccount.get();
			if (pass.equals(account.getPassword())) {
				session.set("user", account);
				session.set("isLogin", true);
				if (rm == true) {
					cookieService.add("username", user, 10);
					cookieService.add("password", accountService.setHashMD5(pass), 10);
				} else {
					cookieService.remove("username");
					cookieService.remove("password");
				}
				// Kiểm tra quyền hạn isAdmin trước khi đặt session
				if (account.isAdmin() == true) {
					session.set("isAdmin", true);
					return "redirect:/admin/index";
				} else {
					session.set("isAdmin", false);
				}
				session.set("message", "Đăng nhập thành công!");
				return "redirect:/index";
			} else {
				session.set("message", "Đăng nhập thất bại!");
				session.set("isLogin", false);
				return "redirect:/login";
			}
		} else {
			// Xử lý trường hợp tài khoản không tồn tại
			session.set("message", "Tài khoản không tồn tại!");
			return "redirect:/login";
		}
	}

	@PostMapping("/register")
	public String save(ModelMap model, @Valid @ModelAttribute Account account, BindingResult br,
			HttpServletResponse response) {
		if (br.hasErrors()) {
			model.addAttribute("message", "Please correct the errors below !");
		} else {
			account.setActivated(true);
			// kích hoạt của tài khoản thành true
			account.setAdmin(false);
			// quản trị viên của tài khoản thành false
			account.setImg("noavt.png");
			// đại diện mặc định cho tài khoản
			dao.save(account);
			model.addAttribute("message", "You have successfully registered an account!");
			response.addHeader("refresh", "3;url=/login");
		}
		return "user/register";
	}
	
	private void send(String to, String subject, String body) throws MessagingException {
        MimeMessage message = javaMailSender.createMimeMessage();
        MimeMessageHelper helper = new MimeMessageHelper(message, true);
        helper.setTo(to);
        helper.setSubject(subject);
        helper.setText(body, true);

        javaMailSender.send(message);
    }
	
	private String generateRandomCode() {
	    // Sử dụng SecureRandom để tạo số ngẫu nhiên
	    SecureRandom random = new SecureRandom();
	    
	    // Tạo một số ngẫu nhiên có độ dài là 6
	    int randomCode = 100000 + random.nextInt(900000);

	    return String.valueOf(randomCode);
	}
	
	 String randomCode = generateRandomCode();
	@PostMapping("/forgot-password")
	public String forgotPassword(@RequestParam("email") String email, HttpServletRequest request, Model model){
		  Account foundAccount = dao.findByEmail(email);
			  if (foundAccount != null) {
				  try {
			            // Tạo mã ngẫu nhiên
			           

			            // Đặt chủ đề và nội dung của email
			            String subject = "Quên mật khẩu";
			            String body = "Mã xác nhận của bạn là: " + randomCode;

			            // Gửi email
			            send(email, subject, body);
			        } catch (Exception e) {
			            e.printStackTrace(); // Xử lý lỗi gửi email
			        }
			 model.addAttribute("message", "Gửi mã thành công");
			 return "user/result";
			 }else {
				  model.addAttribute("message", "Không tìm thấy địa chỉ email trong hệ thống.");
		            return "user/forgot-password";
			 }
		
		
	}
	
	 @PostMapping("/sendma")
	    public String handleVerificationCode(@RequestParam("ma") String verificationCode, Model model) {
	        // Kiểm tra xem mã nhập từ form có trùng với mã đã gửi đi hay không
	        if (verificationCode.equals(randomCode)) {
	       
	            model.addAttribute("message", "Xác nhận thành công!");

	            return "redirect:/index";  // Chuyển hướng đến trang chính hoặc trang bạn muốn
	        } else {
	           
	            model.addAttribute("message", "Mã xác nhận không đúng. Vui lòng thử lại.");

	            return "user/result";  // Hoặc trang nào bạn muốn quay lại để nhập lại mã
	        }
	    }
	 
	
	@PostMapping("/reset-password")
	public String processResetPassword(@RequestParam("token") String token, @RequestParam("password") String password,
			HttpServletResponse response, Model model) {
		// để tìm tài khoản liên kết với token
		Account user = accountService.getByToken(token);
		// Kiểm tra nếu không tìm thấy tài khoản (user == null), thêm thông báo lỗi vào
		// model
		if (user == null) {
			model.addAttribute("message", "Invalid token!");
		} else {
			// cập nhật mật khẩu mới cho tài khoản
			accountService.updatePassword(user, password);
			model.addAttribute("message", "You have successfully changed your password!");
			// Cập nhật header refresh để chuyển hướng trang sau 3 giây
			response.addHeader("refresh", "3;url=/login");
		}
		return "user/reset-password";
	}

	@RequestMapping("/logout")
	public String logout() {
		session.remove("user");
		session.remove("isLogin");
		session.remove("isAdmin");
		cookieService.remove("username");
		cookieService.remove("password");
		return "redirect:/login";
	}

	public String getSiteURL(HttpServletRequest request) {
		String siteURL = request.getRequestURL().toString();
		return siteURL.replace(request.getServletPath(), "");
	}

}