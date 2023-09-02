package com.daos;

import java.util.ArrayList;

import com.models.Doctor;
import com.models.DoctorSlots;
import com.models.Users;

public interface DoctorDao {
	ArrayList<Doctor> getAllDoctors();
	ArrayList<DoctorSlots> getSlotsById(int doc_id); 
	boolean addUser(Users ur);
    boolean verifyUser(String email,String pwd);
}