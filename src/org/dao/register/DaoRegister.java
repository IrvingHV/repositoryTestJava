package org.dao.register;

import java.util.List;

import org.modelo.register.Register;

//INTERFACE: NO SE PROGRAMA, SOLO SE AGREGAN LOS METODOS A IMPLEMENTAR
//EXISTE LA HERENCIA MULTIPLE?: NO, PERO SE PUEDE SIMULAR CON LAS INTERFACES
//extends NameClass						implements nameInterface......................n
public interface DaoRegister {

	public void addRegister(Register register);
	public List<Register> listRegister();
	public Register getRegisterById(int id);
	public void deleteRegister(int id);
}
