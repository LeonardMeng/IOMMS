package com.kanadem.controlcabin.Controller;

import com.kanadem.controlcabin.Entity.ServerEntity;
import com.kanadem.controlcabin.Service.ServerService;
import java.util.ArrayList;
import javax.annotation.Resource;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author KanadeM 2019/6/14
 */
@RestController
public class ServerController {
  @Resource
  private ServerService serverService;

  @RequestMapping(value="/getServerInfo",method= RequestMethod.GET)
  public ArrayList<ServerEntity> getServerInfo(){
    return serverService.getServerInfo();
  }

}
