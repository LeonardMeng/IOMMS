package com.kanadem.controlcabin.Dao;

import com.kanadem.controlcabin.Entity.ServerEntity;
import java.util.ArrayList;
import javax.annotation.Resource;
import org.springframework.stereotype.Repository;

/**
 * @author KanadeM 2019/6/14
 */

@Repository
public interface ServerDao {
  public ArrayList<ServerEntity> getServerInfo();
}
