package org.dao.register;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.modelo.register.Register;

import com.googlecode.s2hibernate.struts2.plugin.annotations.SessionTarget;
import com.googlecode.s2hibernate.struts2.plugin.annotations.TransactionTarget;

public class DaoImplRegister implements DaoRegister {


	@SessionTarget
	private Session session;
	
	@TransactionTarget
	private Transaction transaction;
	
	
	
	@Override
	public void addRegister(Register register) {
		// TODO Auto-generated method stub
		try {
			session.saveOrUpdate(register);
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("Exception: "+e.getMessage());
		}

	}

	@Override
	@SuppressWarnings("unchecked")
	public List<Register> listRegister() {
		// TODO Auto-generated method stub
		List<Register> list = null;
		try {
			list = (List<Register>) session.createQuery("from Register").list();
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("Exception: "+e.getMessage());
		}
		return list;
	}

	@Override
	public Register getRegisterById(int id) {
		// TODO Auto-generated method stub
		Register register = null;
		try {
			register = (Register) session.get(Register.class, id);
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("Exception: "+e.getMessage());
		}
		return register;
	}

	@Override
	public void deleteRegister(int id) {
		// TODO Auto-generated method stub
		Register register = null;
		try {
			register = (Register) session.get(Register.class, id);
			session.delete(register);
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("Exception: "+e.getMessage());
		}
	}

}
