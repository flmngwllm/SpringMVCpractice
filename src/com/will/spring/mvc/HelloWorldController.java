package com.will.spring.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/hello")
public class HelloWorldController {

    // need a controller method to show initial form
    @RequestMapping("/showForm")
    public String HelloWorld(){
        return "helloworld-form";
    }

    // need a controller method to process the HTML form
    @RequestMapping("/processForm")
    public String processForm(){
        return "helloworld";
    }


    //new controller method to read form data and
    // add data to the model
    @RequestMapping("/processFormVersionTwo")
    public String cheer(HttpServletRequest request, Model model){
        //read the request parameter from the HTML form
        String theName = request.getParameter("studentName");
        // convert the data to all caps
        theName = theName.toUpperCase();
        //create the message
        String result = "Yassss! " + theName;
        // add message to the model
        model.addAttribute("message", result);

        return "helloworld";
    }


}
