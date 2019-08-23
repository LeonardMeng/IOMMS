package com.KanadeM.IOMMS.Entity;

/**
 * @author KanadeM 2019/8/23
 */

public class ServerControlInfo {
  private String serverID;
  private String msgType;

  public String getServerID() {
    return serverID;
  }

  public void setServerID(String serverID) {
    this.serverID = serverID;
  }

  public String getMsgType() {
    return msgType;
  }

  public void setMsgType(String msgType) {
    this.msgType = msgType;
  }
}
