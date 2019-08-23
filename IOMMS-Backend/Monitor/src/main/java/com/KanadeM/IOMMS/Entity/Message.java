package com.KanadeM.IOMMS.Entity;

/**
 * @author KanadeM 2019/8/22
 * 消息实体类，包含消息头和消息体
 */

public class Message {

  private MessageHead messageHead;
  private MessageBody messageBody;

  public Message(MessageHead messageHead, MessageBody messageBody) {
    this.messageHead = messageHead;
    this.messageBody = messageBody;
  }

  public MessageHead getMessageHead() {
    return messageHead;
  }

  public void setMessageHead(MessageHead messageHead) {
    this.messageHead = messageHead;
  }

  public MessageBody getMessageBody() {
    return messageBody;
  }

  public void setMessageBody(MessageBody messageBody) {
    this.messageBody = messageBody;
  }
}
