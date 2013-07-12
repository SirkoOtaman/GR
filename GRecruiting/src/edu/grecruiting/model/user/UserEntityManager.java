package edu.grecruiting.model.user;

import java.util.List;

import org.hibernate.Session;

import edu.grecruiting.util.HibernateUtil;

public class UserEntityManager {
	public static UserEntity getByLoginPassword(String login, String password){
		Session session = HibernateUtil.getCurrentSession();
		session.beginTransaction();
		@SuppressWarnings("unchecked")
		List<UserEntity> user = session.createQuery("from UserEntity WHERE login='"+login+"' AND password='"+password+"'").list();
		return user.isEmpty()? null: user.get(0);
	
	}
}
