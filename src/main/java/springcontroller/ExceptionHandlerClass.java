package springcontroller;

import org.springframework.http.HttpStatus;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;

@ControllerAdvice
public class ExceptionHandlerClass {
	@ResponseStatus(value = HttpStatus.INTERNAL_SERVER_ERROR)
	@ExceptionHandler(value = NullPointerException.class)
	public String handle(Model model) {
		model.addAttribute("msg", "Nullpointer Exception Occured");
		return "jsp_page";

	}

	@ExceptionHandler(value = NumberFormatException.class)
	public String hand(Model model) {
		model.addAttribute("s", "NumberformatException");
		return "jsp_page";

	}

	@ResponseStatus(value = HttpStatus.INTERNAL_SERVER_ERROR)
	@ExceptionHandler(value = Exception.class)
	public String han(Model model) {
		model.addAttribute("m", "Exceptoin occured");
		return "jsp_page";

	}
}
