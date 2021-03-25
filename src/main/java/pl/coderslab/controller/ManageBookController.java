package pl.coderslab.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import pl.coderslab.model.Book;
import pl.coderslab.service.JpaBookService;

import java.util.List;

@Controller
@RequestMapping("/admin/books")
public class ManageBookController {

    private final JpaBookService jpaBookService;

    public ManageBookController(JpaBookService jpaBookService) {
        this.jpaBookService = jpaBookService;
    }

    @GetMapping("/all")
    public String showPosts(Model model) {
        List<Book> books = jpaBookService.getBooks();
        model.addAttribute("books", books);
        return "/books/all";
    }


    @GetMapping("/add")
    public String showAddForm(Model model) {
        model.addAttribute("book", new Book());
        return "books/add";
    }

    @PostMapping("/add")
    public String addBookForm(Book book){
        jpaBookService.add(book);
        return "redirect:/admin/books/all";
    }










}
