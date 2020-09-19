package com.cn.schoolAculty.Faculty.noAppointment;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class NoAppointmentService {

	@Autowired
	private NoAppointmentMapper noAppointmentMapper;
	
	public List<NoAppointment> viewAllFun() {
		return this.noAppointmentMapper.selectAllFun();
	}

	public NoAppointment viewByIdFun(Integer noAppointmentId) {
		return this.noAppointmentMapper.selectByIdFun(noAppointmentId);
	}
	
	public List<NoAppointment> viewByConditionFun(NoAppointmentQuery noAppointmentQuery){
		return this.noAppointmentMapper.selectByConditionFun(noAppointmentQuery);
	}
	
	public List<NoAppointment> viewByConditionPageFun(NoAppointmentQuery noAppointmentQuery){
		return this.noAppointmentMapper.selectByConditionPageFun(noAppointmentQuery);
	}

	public boolean modifyNoAppointment(NoAppointment noAppointment) {
		try {
			if(noAppointment.getNoAppointmentId() == null){
				this.noAppointmentMapper.insertFun(noAppointment);
			}else{
				this.noAppointmentMapper.updateFun(noAppointment);
			}
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	public boolean removeNoAppointment(Integer noAppointmentId) {
		try {
			this.noAppointmentMapper.deleteFun(noAppointmentId);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

}
