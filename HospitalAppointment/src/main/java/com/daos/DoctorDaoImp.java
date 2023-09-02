package com.daos;

import java.util.ArrayList;
import com.models.DoctorMapper;
import com.models.DoctorSlots;
import com.models.DoctorSlotsMapper;
import com.models.Users;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import com.daos.DoctorDao;
import com.models.Doctor;

public class DoctorDaoImp implements DoctorDao {
	JdbcTemplate jdbcTemplate;
	
	String SQL_GET_DOCTORS = "select * from mbs_doctors";
	String SQL_GET_SLOTS_BY_ID = "select * from mbs_slots where s_status='Open' and s_docid=?";
	String SQL_INSERT_USER = " insert into mbs_users(fname,lname,email,password,phonenumber) values(?,?,?,?,?)";
	String SQL_VERIFY_USER = "select count(*) from mbs_users where email=? and password=?";
	
	@Autowired
	public DoctorDaoImp(DataSource dataSource) {
		jdbcTemplate = new JdbcTemplate(dataSource);
	}

	@Override
	public ArrayList<Doctor> getAllDoctors() {
		// TODO Auto-generated method stub
		return (ArrayList<Doctor>) jdbcTemplate.query(SQL_GET_DOCTORS, new DoctorMapper());
	}

	@Override
	public ArrayList<DoctorSlots> getSlotsById(int doc_id) {
		return (ArrayList<DoctorSlots>) jdbcTemplate.query(SQL_GET_SLOTS_BY_ID, new Object[] {doc_id},new DoctorSlotsMapper());
	}

	@Override
	public boolean addUser(Users ur) {
		// TODO Auto-generated method stub
		return jdbcTemplate.update(SQL_INSERT_USER,ur.getFname(),ur.getLname(),ur.getEmail(),ur.getPassword(),ur.getPhonenumber())>0;
	}

	@Override
	public boolean verifyUser(String email, String pwd) {
		return jdbcTemplate.queryForObject(SQL_VERIFY_USER,
				new Object[] { email, pwd }, Integer.class)>0;
	}
	

//	public int getPatientId(Patient p) {
//		String ptnName = p.getPtn_name();
//		int ptnAge = p.getPtn_age();
//		String ptnGender = p.getPtn_gender();
//		String ptnMobile = p.getPtn_mobile();
//
//		Integer patientId = jdbcTemplate.queryForObject(SQL_GET_PATIENT,
//				new Object[] { ptnName, ptnAge, ptnGender, ptnMobile }, Integer.class);
//		return patientId != null ? patientId : -1;
//
//	}
}