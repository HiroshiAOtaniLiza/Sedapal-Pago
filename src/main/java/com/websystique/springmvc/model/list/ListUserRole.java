package com.websystique.springmvc.model.list;

import java.io.Serializable;
import java.util.List;

import com.websystique.springmvc.model.UserRole;

public class ListUserRole implements Serializable{

	private static final long serialVersionUID = 1L;

	List<UserRole> listUserRoles;

	public List<UserRole> getListUserRoles() {
		return listUserRoles;
	}

	public void setListUserRoles(List<UserRole> listUserRoles) {
		this.listUserRoles = listUserRoles;
	}

}
