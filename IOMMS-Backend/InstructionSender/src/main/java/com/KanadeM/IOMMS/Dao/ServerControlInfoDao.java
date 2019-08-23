package com.KanadeM.IOMMS.Dao;

import com.KanadeM.IOMMS.Entity.ServerControlInfo;
import java.util.List;
import java.util.Map;

/**
 * @author KanadeM 2019/8/23
 */

public interface ServerControlInfoDao {
  public List<ServerControlInfo> getServerControlInfoList(Map<String, Object> queryMap);
}
