package com.kanadem.controlcabin.Controller;

/**
 * @author KanadeM 2019/6/14
 */
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class TestController {

  @RequestMapping(value = "/test", method = RequestMethod.GET)
  public String test() {
    return "test";
  }


  @RequestMapping(value = "/", method = RequestMethod.GET)
  public String hellotest() {
    return "Hello World";
  }
}
