import com.KanadeM.IOMMS.Dao.MessageDao;
import com.KanadeM.IOMMS.Dao.ServerControlInfoDao;
import com.KanadeM.IOMMS.Entity.Message;
import com.KanadeM.IOMMS.Entity.ServerControlInfo;
import java.io.Reader;
import java.util.List;
import java.util.Map;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;

/**
 * @author KanadeM 2019/8/23
 */

public class ServerControlInfoTest {
  private static SqlSession sqlSession;

  private static ServerControlInfoDao serverControlInfoDao;
  private static MessageDao messageDao;


  @Before
  public void initialConnection() {

    try{

      String resource = "mybatis-config.xml";

      Reader reader = Resources.getResourceAsReader(resource);
      SqlSessionFactory ssf = new SqlSessionFactoryBuilder().build(reader);

      sqlSession = ssf.openSession();

      serverControlInfoDao = sqlSession.getMapper(ServerControlInfoDao.class);
      messageDao = sqlSession.getMapper(MessageDao.class);

    } catch (Exception e) {

      e.printStackTrace();

    }

  }
  @After
  public void destroyConnection() {

    sqlSession.close();

  }
  @Test
  public void getTopDataList() {
    List<ServerControlInfo> serverControlInfoList = serverControlInfoDao.getServerControlInfoList(null);
    for(ServerControlInfo serverControlInfo : serverControlInfoList){

      System.out.println(serverControlInfo.toString());
    }

  }

  @Test
  public void getMessageList() {
    List<Message> messageList = messageDao.getMessageList(null);
    for(Message message : messageList){

      System.out.println(message.toString());
    }

  }


}
