package com.kanadem.controlcabin.Entity;

import java.io.Serializable;
import java.util.Date;

/**
 * @author KanadeM 2019/6/14
 */

public class ServerEntity implements Serializable {
  private String guid;
  private String sysMenuDetailID;
  private String name;
  private String id;
  private String systemType;
  private String systemVersion;
  private String sorkGroup;
  private String isActive;
  private String remark;
  private String status;
  private String ipLink;
  private String collectType;
  private String executeMode;
  private String ipInternalNetwork;
  private String ipVirtual;
  private String serverType;
  private String serverID;
  private String serverRegion;
  private String enable;
  private String serverModel;
  private Date CreateDate;

  public String getGuid() {
    return guid;
  }

  public void setGuid(String guid) {
    this.guid = guid;
  }

  public String getSysMenuDetailID() {
    return sysMenuDetailID;
  }

  public void setSysMenuDetailID(String sysMenuDetailID) {
    this.sysMenuDetailID = sysMenuDetailID;
  }

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public String getId() {
    return id;
  }

  public void setId(String id) {
    this.id = id;
  }

  public String getSystemType() {
    return systemType;
  }

  public void setSystemType(String systemType) {
    this.systemType = systemType;
  }

  public String getSystemVersion() {
    return systemVersion;
  }

  public void setSystemVersion(String systemVersion) {
    this.systemVersion = systemVersion;
  }

  public String getSorkGroup() {
    return sorkGroup;
  }

  public void setSorkGroup(String sorkGroup) {
    this.sorkGroup = sorkGroup;
  }

  public String getIsActive() {
    return isActive;
  }

  public void setIsActive(String isActive) {
    this.isActive = isActive;
  }

  public String getRemark() {
    return remark;
  }

  public void setRemark(String remark) {
    this.remark = remark;
  }

  public String getStatus() {
    return status;
  }

  public void setStatus(String status) {
    this.status = status;
  }

  public String getIpLink() {
    return ipLink;
  }

  public void setIpLink(String ipLink) {
    this.ipLink = ipLink;
  }

  public String getCollectType() {
    return collectType;
  }

  public void setCollectType(String collectType) {
    this.collectType = collectType;
  }

  public String getExecuteMode() {
    return executeMode;
  }

  public void setExecuteMode(String executeMode) {
    this.executeMode = executeMode;
  }

  public String getIpInternalNetwork() {
    return ipInternalNetwork;
  }

  public void setIpInternalNetwork(String ipInternalNetwork) {
    this.ipInternalNetwork = ipInternalNetwork;
  }

  public String getIpVirtual() {
    return ipVirtual;
  }

  public void setIpVirtual(String ipVirtual) {
    this.ipVirtual = ipVirtual;
  }

  public String getServerType() {
    return serverType;
  }

  public void setServerType(String serverType) {
    this.serverType = serverType;
  }

  public String getServerID() {
    return serverID;
  }

  public void setServerID(String serverID) {
    this.serverID = serverID;
  }

  public String getServerRegion() {
    return serverRegion;
  }

  public void setServerRegion(String serverRegion) {
    this.serverRegion = serverRegion;
  }

  public String getEnable() {
    return enable;
  }

  public void setEnable(String enable) {
    this.enable = enable;
  }

  public String getServerModel() {
    return serverModel;
  }

  public void setServerModel(String serverModel) {
    this.serverModel = serverModel;
  }

  public Date getCreateDate() {
    return CreateDate;
  }

  public void setCreateDate(Date createDate) {
    CreateDate = createDate;
  }
}
