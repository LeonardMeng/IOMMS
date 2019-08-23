package Monitor;


/**
 * @author KanadeM 2019/8/22
 */

import com.KanadeM.IOMMS.Entity.MSG_TYPE;
import com.KanadeM.IOMMS.Entity.Message;
import com.KanadeM.IOMMS.Entity.MessageBody;
import Monitor.InterFace.IMonitor;

public class MemoryMonitor extends IMonitor {
  public MemoryMonitor(MSG_TYPE dataType){
    super(dataType);
  }

  @Override
  public void Execute(Message message) {
    if(message.getMessageBody() == null){
      return ;
    }
    MessageBody messageBody = message.getMessageBody();
  }
}
