package springcontroller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.view.RedirectView;

@Controller
public class Formcontroller {
	@RequestMapping("/serch/{userId}")
	public String hu(@PathVariable("userId" )int userId) {
		System.out.println(userId);
		Integer.parseInt("userId");
		return "view";
		
	}
	@RequestMapping("/k")
	public String home() {
		return "huzafa";

	}
	@RequestMapping("/search")
	public RedirectView handler(@RequestParam("querybox") String query) {
		String url=("http://www.google.com/search?q="+query);
		RedirectView redirectView=new RedirectView();
		redirectView.setUrl(url);
		return redirectView;
	}
	@RequestMapping("/try")
	public String Handler() {
		String str=null;
		System.out.println(str.length());
		return "view";
		
	}
}
