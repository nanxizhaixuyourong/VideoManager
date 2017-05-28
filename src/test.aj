package videoDB;

import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;

import javax.servlet.http.HttpServletRequest;

public aspect Test {
	private myRegex re = new myRegex();
	private pointcut sqlQuery(Statement statement,String s) : target(statement)&&args(s)&&call(* java.sql.Statement.executeQuery(String));
	before(Statement statement,String sql) : sqlQuery(statement,sql)
	{
		System.out.println("sql is "+sql);
	}
	
	private pointcut webSessionMethod(HttpServletRequest request) : target(request)&&call(* javax.servlet.ServletRequest.getParameter(String));
	before(HttpServletRequest request) : webSessionMethod(request)
	{
		System.out.println("get request");
	}
	
	Object around(HttpServletRequest request, Statement statement ,String s) throws SQLException : 
		cflow(webSessionMethod(request)) && sqlQuery(statement,s) && !within(Test)
		{
			Map params = request.getParameterMap(); 
			for (Iterator ite = params.values().iterator(); ite.hasNext();) 
			{ 
				String[] values = (String[]) ite.next(); 
				String input = isSQLInjection(s, values);
				if (input != null) 
				{ 
					return null; 
				} 
			} 
			return statement.executeQuery(s); 
		}
	private String isSQLInjection(String sql, String[] params) 
	 {
		List<Pattern>patterns = re.getPatterns();
		for (int i = 0; i < params.length; i++) 
		{ 
			if (sql.indexOf(params[i]) > -1) 
			{
				for (Iterator<Pattern> ite = patterns.iterator(); ite.hasNext();)
				{
					Pattern pattern = ite.next(); 
				  	if (pattern.matcher(params[i]).find()) 
				  		return params[i];
				}
			}
		}
		return null; 
	 }
}
