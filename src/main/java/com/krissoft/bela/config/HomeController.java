package com.krissoft.bela.config;

import java.security.Principal;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {

    private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

    @Autowired
    private BalanceSheetModel balanceSheetModel;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String printWelcome(ModelMap model, Principal principal) {
        String name = principal.getName();
        model.addAttribute("username", name);
        logger.info("printWelcome method, Principal name:" + name);
        BalanceSheet balanceSheet = new BalanceSheet();
        balanceSheet.setId(1l);
        balanceSheet.setName("kris");
        balanceSheetModel.saveBalanceSheet(balanceSheet);

        balanceSheet.setId(2l);
        balanceSheet.setName("kris1");
        balanceSheetModel.saveBalanceSheet(balanceSheet);
        logger.info("size:" + balanceSheetModel.getBalanceSheet().size());

        return "home";
    }

    @RequestMapping(value = "/home", method = RequestMethod.GET)
    public String home(ModelMap model, Principal principal) {
        String name = "";
        if (principal != null) {
            name = principal.getName();
            logger.info("printWelcome method, Principal name:" + name);
        }

        try {
            Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
            Object custom = (Object) authentication == null ? null : authentication.getPrincipal();
            model.addAttribute("username", name);
            model.addAttribute("message", "Spring Security Custom Form example");

        } catch (Exception e) {
            if (logger.isDebugEnabled()) {
                logger.debug("Authentication request failed: " + e.getMessage());
            }
        }

        return "home";
    }

    @PreAuthorize("hasRole('ROLE_ADMIN')")
    @RequestMapping(value = "/home1", method = RequestMethod.GET)
    public String home1(ModelMap model) {
        return "home1";
    }

    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public String register(ModelMap model) {
        return "register";
    }

    @RequestMapping(value = "/accessdenied", method = RequestMethod.GET)
    public String accessdenied(ModelMap model) {
        return "accessdenied";
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login(ModelMap model) {
        logger.info("login method");
        return "login";
    }

    @RequestMapping(value = "/admin/adminList", method = RequestMethod.GET)
    public String adminList(ModelMap model) {
        return "admin/adminList";
    }

    @RequestMapping(value = "/user/userList", method = RequestMethod.GET)
    public String userList(ModelMap model) {
        return "user/userList";
    }

    @RequestMapping(value = "/error500", method = RequestMethod.GET)
    public String error500(ModelMap model) {
        return "error500";
    }

    @RequestMapping(value = "/error404", method = RequestMethod.GET)
    public String error404(ModelMap model) {
        return "error404";
    }
}
