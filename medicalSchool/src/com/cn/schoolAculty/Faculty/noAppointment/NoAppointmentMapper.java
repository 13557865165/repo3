package com.cn.schoolAculty.Faculty.noAppointment;

import java.util.List;

public interface NoAppointmentMapper {

	public List<NoAppointment> selectAllFun();

	public NoAppointment selectByIdFun(Integer noAppointmentId);

	public void insertFun(NoAppointment noAppointment);

	public void updateFun(NoAppointment noAppointment) throws Exception;

	public void deleteFun(Integer noAppointmentId);

	public List<NoAppointment> selectByConditionFun(
			NoAppointmentQuery noAppointmentQuery);

	public List<NoAppointment> selectByConditionPageFun(
			NoAppointmentQuery noAppointmentQuery);


}
