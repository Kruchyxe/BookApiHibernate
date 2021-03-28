package pl.coderslab.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.model.Book;
import pl.coderslab.service.JpaBookService;

import javax.persistence.EntityNotFoundException;
import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping("/admin/books")
public class ManageBookController {

    private final JpaBookService jpaBookService;

    public ManageBookController(JpaBookService jpaBookService) {
        this.jpaBookService = jpaBookService;
    }

    @GetMapping("/all")
    public String listBooks(Model model) {
        List<Book> books = jpaBookService.getBooks();
        model.addAttribute("books", books);
        return "/books/all";
    }

    @GetMapping("/add")
    public String addBook(Model model) {
        model.addAttribute("book", new Book());
        return "books/add";
    }

    @PostMapping("/add")
    public String addBookForm(Book book){
        jpaBookService.add(book);
        return "redirect:/admin/books/all";
    }

    @GetMapping("/delete/{id}")
    public String removeBook(@PathVariable long id){
        jpaBookService.delete(id);
        return "redirect:/admin/books/all";
    }

    @GetMapping("/details/{id}")
    public String detailsBook(Model model, @PathVariable long id) {
        model.addAttribute("book", jpaBookService.get(id).orElseThrow(EntityNotFoundException::new));
        return "books/details";
    }

    @GetMapping("/edit/{id}")
    public String editForm(@PathVariable long id, Model model) {
        model.addAttribute("book", jpaBookService.get(id));
        return "books/edit";
    }

    @PostMapping("/edit")
    public String editBook(Book book) {
        jpaBookService.update(book);
        return "redirect:/admin/books/all";
    }







}
