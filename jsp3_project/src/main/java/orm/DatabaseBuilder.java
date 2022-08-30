package orm;

import java.io.IOException;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class DatabaseBuilder {
	private static SqlSessionFactory factory;
	
	static {
		try {
			factory = new SqlSessionFactoryBuilder().build(Resources.getResourceAsReader("orm/MybatisConfig.xml"));
		} catch (IOException e) {
			// mybatis 설정 오류시
			e.printStackTrace();
		}
		
	}
	public static SqlSessionFactory getFactory() {
		return factory;
	}
}
