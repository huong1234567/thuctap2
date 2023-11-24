package com.poly.controller.admin;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.poly.dao.CategoryDAO;
import com.poly.entity.Category;

@Controller
@RequestMapping("/admin/")
public class CateroryController {

	@Autowired
	private CategoryDAO dao;

	@RequestMapping("category")
	public String index(Model model) {
		// thêm một đối tượng Category mới và danh sách các danh mục vào Model
		model.addAttribute("item", new Category());
		model.addAttribute("items", dao.findAll());
		return "admin/category";
	}

	@GetMapping("category/edit/{id}")
	public String edit(Model model, @PathVariable("id") Integer id) {
		// thêm một đối tượng theo id mới và danh sách các danh mục vào Model
		model.addAttribute("item", dao.findById(id).get());
		model.addAttribute("items", dao.findAll());
		return "admin/category";
	}

	@PostMapping("category/create")
	public String create(@Valid Category item, BindingResult br, RedirectAttributes ra) {
		if (br.hasErrors()) {
			ra.addFlashAttribute("message", "Please correct the errors below !");
		} else {
			dao.save(item);
			ra.addFlashAttribute("message", "Create new category is successful !");
		}
		return "redirect:/admin/category";
		// kiểm tra và xử lý việc tạo mới một danh mục. Nếu có lỗi, nó sẽ chuyển hướng
		// với thông báo lỗi. Ngược lại, nó sẽ lưu danh mục và chuyển hướng với thông
		// báo thành công.
	}

	@PostMapping("category/update")
	public String update(Category item, BindingResult br, RedirectAttributes ra) {
		if (br.hasErrors()) {
			ra.addFlashAttribute("message", "Please correct the errors below !");
		} else {
			dao.save(item);
			ra.addFlashAttribute("message", "Category updated is successful !");
		}
		// kiểm tra và xử lí việc update một danh mục. Nếu có và ngược lại
		return "redirect:/admin/category";
	}

	@GetMapping("category/delete/{id}")
	public String delete(@PathVariable("id") Integer id, Category item, BindingResult br, RedirectAttributes ra,
			Model model) {
		if (br.hasErrors()) {
			ra.addFlashAttribute("message", "Please correct the errors below !");
		} else {
			dao.deleteById(id);
			ra.addFlashAttribute("message", "Category deleted is successful !");
		}
		//// kiểm tra và xử lí việc xóa một danh mục. Nếu có và ngược lại
		return "redirect:/admin/category";
	}
}
