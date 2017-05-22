package com.niit.modaldao;

import java.util.List;

import com.niit.modaldto.*;

public interface Userdao {
	public void addUser(User user);
	public void updateUser(User user);
	public void deleteUser(int cid);
	public User getuserByUsername(String username);
	public List<Product> displayAll();
}
