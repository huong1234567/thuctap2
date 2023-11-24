package com.poly.controller.admin;

import java.io.File;
import java.lang.reflect.InvocationTargetException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.poly.dao.AccountDAO;
import com.poly.dto.AccountDTO;
import com.poly.entity.Account;

@Controller
@RequestMapping("/admin/")
public class AccountController {

	@Autowired
	private AccountDAO dao;

	@Autowired
	ServletContext app;

	@RequestMapping("account")
	// chỉ định rằng phương thức này xử lý các yêu cầu có URL bắt đầu bằng
	// "/account".
	public String index(Model model, HttpServletResponse response) {
		// Thêm hai thuộc tính vào model: "item" (một đối tượng Account mới) và "items"
		// (tất cả các tài khoản từ DAO).
		model.addAttribute("item", new Account());
		model.addAttribute("items", dao.findAll());
		return "admin/account";
	}

	@ModelAttribute("activates")
	public Map<Boolean, String> getActivate() {
		// Trả về một đối tượng Map<Boolean, String> với hai cặp key-value
		Map<Boolean, String> map = new HashMap<>();
		map.put(true, "Yes");
		map.put(false, "No");
		return map;
	}

	@ModelAttribute("admins")
	public Map<Boolean, String> getAdmin() {
		Map<Boolean, String> map = new HashMap<>();
		// Trả về một đối tượng Map<Boolean, String> với hai cặp key-value:
		map.put(true, "Admin");
		map.put(false, "User");
		return map;
	}

	@GetMapping("account/edit/{username}")
	public String edit(Model model, @PathVariable("username") String username) {
		// Nhận 2 tham số
		model.addAttribute("item", dao.findById(username).get());
		model.addAttribute("items", dao.findAll());
		return "admin/account";
	}

	@PostMapping("account/create")
	public String create(@Validated @ModelAttribute("item") AccountDTO accountDTO, Account account, BindingResult br,
			@RequestParam("img") MultipartFile img, Model model)
			throws IllegalAccessException, InvocationTargetException {
		try {
			// Thực hiện việc tải tệp tin hình ảnh từ img và sao chép nội dung vào một đường
			// dẫn cụ thể trên máy chủ.
			File file = new File(app.getRealPath("/img/accounts/" + img.getOriginalFilename()));
			img.transferTo(file);
		} catch (Exception e) {
			e.printStackTrace();
		}
		BeanUtils.copyProperties(account, accountDTO);
		if (img != null && !img.getOriginalFilename().isEmpty()) {
			account.setImg(accountDTO.getImg().getOriginalFilename());
		} else {
			account.setImg("noavt.png");
		}
		model.addAttribute("message", "Create new account is successful !");
		dao.save(account);
		return "redirect:/admin/account";
	}

	@PostMapping("account/update")
	public String update(@Validated @ModelAttribute("item") AccountDTO accountDTO, Account account, BindingResult br,
			@RequestParam("img") MultipartFile img, Model model)
			throws IllegalAccessException, InvocationTargetException {
		try {
			// thực hiện update ảnh lên
			File file = new File(app.getRealPath("/img/accounts/" + img.getOriginalFilename()));
			img.transferTo(file);
		} catch (Exception e) {
			e.printStackTrace();
		}
		BeanUtils.copyProperties(account, accountDTO);
		if (img != null && !img.getOriginalFilename().isEmpty()) {
			account.setImg(accountDTO.getImg().getOriginalFilename());
		} else {
			account.setImg("noavt.png");
		}
		model.addAttribute("message", "Account updated is successful !");
		dao.save(account);
		return "redirect:/admin/account";
	}

	@GetMapping("account/delete/{username}")
	public String delete(@PathVariable("username") String username, @ModelAttribute("item") AccountDTO model,
			BindingResult br, RedirectAttributes ra) {
		// Xóa tài khoản
		if (br.hasErrors()) {
			ra.addFlashAttribute("message", "Please correct the errors below !");
		} else {
			dao.deleteById(username);
			ra.addFlashAttribute("message", "Account deleted is successful !");
		}
		return "redirect:/admin/account";
	}
}
