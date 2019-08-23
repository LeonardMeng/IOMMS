package com.KanadeM.IOMMS.Dao;

import com.KanadeM.IOMMS.Entity.Message;
import java.util.List;
import java.util.Map;

/**
 * @author KanadeM 2019/8/23
 */

public interface MessageDao {
  public List<Message> getMessageList(Map<String, Object> queryMap);
}
