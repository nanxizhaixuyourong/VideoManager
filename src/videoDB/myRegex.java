package videoDB;

import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;

public class myRegex {
	private List<Pattern> patterns = new ArrayList<Pattern>();
	public myRegex()
	{
		patterns.add(Pattern.compile("/\\w*((\\%27)|(\'))(\\s|\\+)*((\\%6F)|o|(\\%4F))(\\s|\\+)*((\\%72)|r|(\\%52))/ix"));
		patterns.add(Pattern.compile("/((\\%27)|(\'))(\\s|\\+)*(union)(\\s|\\+)*{command}/ix"));
		patterns.add(Pattern.compile("/exec(\\s|\\+)+(s|x)p\\w+/ix"));
	}
	public List<Pattern> getPatterns()
	{
		return this.patterns;
	}
}
