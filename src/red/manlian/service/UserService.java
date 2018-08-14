package red.manlian.service;

import red.manlian.pojo.Sys_user;
import red.manlian.pojo.User;

public interface UserService {
	User getUserById(String uid);

	String checkUser(Sys_user user);
}
