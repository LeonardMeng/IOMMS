package com.KanadeM.IOMMS.Entity;

/**
 * @author KanadeM 2019/8/22
 *
 */

public class Message {
  private String messageID;
  private String serverControlInfoID;
  private MSG_TYPE msgType;
  private String serverID;
  private String serverIP;
  private SYSTEM_TYPE systemType;
  private String ipChain;
  private int dataIndex;
  private String messageInfo;
  private String dataSplitRow;
  private String dataSplitCol;

  public MSG_TYPE getMsgType() {
    return msgType;
  }

  public void setMsgType(MSG_TYPE msgType) {
    this.msgType = msgType;
  }

  public String getServerID() {
    return serverID;
  }

  public void setServerID(String serverID) {
    this.serverID = serverID;
  }

  public String getServerIP() {
    return serverIP;
  }

  public void setServerIP(String serverIP) {
    this.serverIP = serverIP;
  }

  public SYSTEM_TYPE getSystemType() {
    return systemType;
  }

  public void setSystemType(SYSTEM_TYPE systemType) {
    this.systemType = systemType;
  }

  public String getIpChain() {
    return ipChain;
  }

  public void setIpChain(String ipChain) {
    this.ipChain = ipChain;
  }

  public int getDataIndex() {
    return dataIndex;
  }

  public void setDataIndex(int dataIndex) {
    this.dataIndex = dataIndex;
  }

  public String getMessageInfo() {
    return messageInfo;
  }

  public void setMessageInfo(String messageInfo) {
    this.messageInfo = messageInfo;
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

  public String getServerControlInfoID() {
    return serverControlInfoID;
  }

  public void setServerControlInfoID(String serverControlInfoID) {
    this.serverControlInfoID = serverControlInfoID;
  }

  public String getMessageID() {
    return messageID;
  }

  public void setMessageID(String messageID) {
    this.messageID = messageID;
  }

  @Override
  public String toString() {
    return "Message{" +
        "messageID='" + messageID + '\'' +
        ", serverControlInfoID='" + serverControlInfoID + '\'' +
        ", msgType=" + msgType +
        ", serverID='" + serverID + '\'' +
        ", serverIP='" + serverIP + '\'' +
        ", systemType=" + systemType +
        ", ipChain='" + ipChain + '\'' +
        ", dataIndex=" + dataIndex +
        ", messageInfo='" + messageInfo + '\'' +
        ", dataSplitRow='" + dataSplitRow + '\'' +
        ", dataSplitCol='" + dataSplitCol + '\'' +
        '}';
  }
}
