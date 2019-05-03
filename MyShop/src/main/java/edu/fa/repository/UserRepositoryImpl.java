package edu.fa.repository;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.fa.entities.Users;

@Repository
public class UserRepositoryImpl implements UserRepositorys {
	@Autowired
	SessionFactory sessionFactory;

	@Override
	public Users getUserByUsername(String userName) {

		Users userLoginResult = null;

		try (Session session = sessionFactory.openSession()) {
			Query query = session.createQuery("FROM Users where userName=:userName");
			query.setParameter("userName", userName);
			userLoginResult = (Users) query.uniqueResult();
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
		return userLoginResult;
	}
	
	

}
