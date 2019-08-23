package Monitor.InterFace; /**
 * @author KanadeM 2019/8/21
 */

import com.KanadeM.IOMMS.Entity.MSG_TYPE;
import com.KanadeM.IOMMS.Entity.Message;

public abstract class IMonitor {

  private MSG_TYPE msgType;

  public IMonitor(MSG_TYPE msgType) {
    this.msgType = msgType;
  }

  public static IMonitor CreateMonitor(MSG_TYPE msgType){
    switch (msgType){
      case M00000:
        return null;
      case M00100:
        return null;
    }
    return null;
  }

  public abstract void Execute(Message message);
}
