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
  M00100,
  /**
   * 磁盘读取速度
   */
  M00101,
  /**
   * 磁盘写入速度
   */
  M00102,
  /**
   * CPU
   */
  Y00020,
  /**
   * 内存
   */
  Y00030
}
