package com.KanadeM.IOMMS.Entity;

import java.util.List;

/**
 * @author KanadeM 2019/8/22
 * 消息体，包含若干个消息体详细信息组成的List
 */

public class MessageBody {
  private List<MessageBodyDetail> dataDetail;

  public MessageBody(List<MessageBodyDetail> dataDetail) {
    this.dataDetail = dataDetail;
  }

  public List<MessageBodyDetail> getDataDetail() {
    return dataDetail;
  }

  public void setDataDetail(List<MessageBodyDetail> dataDetail) {
    this.dataDetail = dataDetail;
  }
}
