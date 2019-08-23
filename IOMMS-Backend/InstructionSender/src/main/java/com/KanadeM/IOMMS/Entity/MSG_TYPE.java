package com.KanadeM.IOMMS.Entity;

/**
 * @author KanadeM 2019/8/21
 */

public enum MSG_TYPE {
  /**
   * 未知类型
   */
  UNKOWN,
  /**
   * 错误回执
   */
  ERROR,
  /**
   * 报文接收回执
   */
  CALL_BACK,
  /**
   * 回执
   */
  M00000,
  /**
   * 磁盘检测
   */
  M00010,
  /**
   * 磁盘读取速度
   */
  M00011,
  /**
   * 磁盘写入速度
   */
  M00012,
  /**
   * CPU
   */
  Y00020,
  /**
   * 内存
   */
  M00030
}
