package com.kanadem.controlcabin.Service;

import com.kanadem.controlcabin.Dao.ServerDao;
import com.kanadem.controlcabin.Entity.ServerEntity;
import java.util.ArrayList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author KanadeM 2019/6/14
 */
@Service
public class ServerService {
  @Autowired
  private ServerDao serverDao;

  public ArrayList<ServerEntity> getServerInfo(){
    return serverDao.getServerInfo();
  }
}
