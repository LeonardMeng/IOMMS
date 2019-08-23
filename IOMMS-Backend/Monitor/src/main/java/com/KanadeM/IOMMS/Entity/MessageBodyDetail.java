package com.KanadeM.IOMMS.Entity;

/**
 * @author KanadeM 2019/8/22
 * 消息体详细信息
 */

public class MessageBodyDetail {
  private String IP;
  private MSG_TYPE dataType;
  private String data;
  private String dataSplitRow;
  private String dataSplitCol;

  public String getIP() {
    return IP;
  }

  public void setIP(String IP) {
    this.IP = IP;
  }

  public MSG_TYPE getDataType() {
    return dataType;
  }

  public void setDataType(MSG_TYPE dataType) {
    this.dataType = dataType;
  }

  public String getData() {
    return data;
  }

  public void setData(String data) {
    this.data = data;
  }

  public String getDataSplitRow() {
    return dataSplitRow;
  }

  public void setDataSplitRow(String dataSplitRow) {
    this.dataSplitRow = dataSplitRow;
  }

  public String getDataSplitCol() {
    return dataSplitCol;
  }

  public void setDataSplitCol(String dataSplitCol) {
    this.dataSplitCol = dataSplitCol;
  }
}
