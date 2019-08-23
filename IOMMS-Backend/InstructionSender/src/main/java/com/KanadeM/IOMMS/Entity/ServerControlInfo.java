package com.KanadeM.IOMMS.Entity;

/**
 * @author KanadeM 2019/8/23
 */

public class ServerControlInfo {
  private String serverID;
  private MSG_TYPE msgType;

  public String getServerID() {
    return serverID;
  }

  public void setServerID(String serverID) {
    this.serverID = serverID;
  }

  public MSG_TYPE getMsgType() {
    return msgType;
  }

  public void setMsgType(MSG_TYPE msgType) {
    this.msgType = msgType;
  }

  @Override
  public String toString() {
    return "ServerControlInfo{" +
        "serverID='" + serverID + '\'' +
        ", msgType=" + msgType +
        '}';
  }
}
