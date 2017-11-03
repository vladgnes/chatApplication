package controller;

import dao.UserDAO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class LoginController {
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String init(Model model) {
        model.addAttribute("msg", "Please Enter Your Login Details");
        return "login";
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String submit(Model model, @RequestParam String login,
                         @RequestParam String password) {
        if (login != null && password != null) {
            if (new UserDAO().login(login, password)!= null) {
                model.addAttribute("msg", false);
                return "page";
            } else {
                model.addAttribute("msg", true);
                return "login";
            }
        } else {
            model.addAttribute("msg", true);
            return "login";
        }
    }
}
