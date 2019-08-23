package com.KanadeM.IOMMS.Entity;

/**
 * @author KanadeM 2019/8/22
 */

public class MessageHead {
  private String dataType;
  private String dataLink;
  private int dataIndex;
  private String messageID;
  private String dataFrom;
  public MessageHead() { }

  public String getDataType() {
    return dataType;
  }

  public void setDataType(String dataType) {
    this.dataType = dataType;
  }

  public String getDataLink() {
    return dataLink;
  }

  public void setDataLink(String dataLink) {
    this.dataLink = dataLink;
  }

  public int getDataIndex() {
    return dataIndex;
  }

  public void setDataIndex(int dataIndex) {
    this.dataIndex = dataIndex;
  }

  public String getMessageID() {
    return messageID;
  }

  public void setMessageID(String messageID) {
    this.messageID = messageID;
  }

  public String getDataFrom() {
    return dataFrom;
  }

  public void setDataFrom(String dataFrom) {
    this.dataFrom = dataFrom;
  }
}
