package controller;

import dao.UserDAO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class SignUpController {
    @RequestMapping(value = "/signUp", method = RequestMethod.GET)
    public String init(Model model) {
        return "signUp";
    }

    @RequestMapping(value = "/signUp", method = RequestMethod.POST)
    public String submit(Model model, @RequestParam String login, @RequestParam String password,
                         @RequestParam String firstName, @RequestParam String lastName) {
        if (login != null && password != null) {
            if (new UserDAO().signUp(login, password, firstName, lastName)) {
                model.addAttribute("msg", false);
                return "page";
            } else {
                model.addAttribute("msg", true);
                return "signUp";
            }
        } else {
            model.addAttribute("msg", true);
            return "signUp";
        }
    }
}
