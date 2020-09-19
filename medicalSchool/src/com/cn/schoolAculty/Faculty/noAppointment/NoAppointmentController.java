package com.cn.schoolAculty.Faculty.noAppointment;

import java.util.List;

import javax.resource.spi.Connector;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/noAppointment")
public class NoAppointmentController {
	
	@Autowired
	private NoAppointmentService noAppointmentService;
	
	@RequestMapping("/viewAll")
	public @ResponseBody List <NoAppointment> viewAllFun() throws Exception{
		List <NoAppointment> noAppointmentList = noAppointmentService.viewAllFun();	
		return noAppointmentList;
	}
	
	@RequestMapping("/preModify")
	public @ResponseBody NoAppointment preModifyFun(@RequestParam("noAppointmentId") Integer id) throws Exception{
		NoAppointment noAppointment = noAppointmentService.viewByIdFun(id);
		return noAppointment;
	}
	
	@RequestMapping("/modify")
	public @ResponseBody String modifyFun(@RequestBody NoAppointment noAppointment) throws Exception{
		if(noAppointmentService.modifyNoAppointment(noAppointment)){
			return "OK";
		}else{
			return "ERR";
		}
	}
	
	@RequestMapping("/remove")
	public @ResponseBody String removeFun(Integer noAppointmentId) throws Exception{
		if(noAppointmentService.removeNoAppointment(noAppointmentId)){
			return "OK";
		}else{
			return "ERR";
		}
	}

}
