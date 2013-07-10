package edu.grecruiting.model.student;

import org.hibernate.Session;

import edu.grecruiting.util.HibernateUtil;

public class StudentGroupManager {
	public static StudentGroupEntity getById(int id){
		Session session = HibernateUtil.getCurrentSession();
		session.beginTransaction();
		StudentGroupEntity group = (StudentGroupEntity)session.get(StudentGroupEntity.class, 0);
		session.close();
		return group;
	}
}
