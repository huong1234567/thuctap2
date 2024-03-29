package com.poly.dao;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.poly.entity.Account;

public interface AccountDAO extends JpaRepository<Account, String> {
	@Query("SELECT c FROM Account c WHERE username = ?1 AND password = ?2")
	// câu truy vấn JPQL để chỉ định điều kiện tìm kiếm
	Account findByUsernameAndPassword(String username, String password);

	Account findByUsername(String username);

	@Query("SELECT c FROM Account c WHERE c.email = ?1")
	//// câu truy vấn JPQL để chỉ định điều kiện tìm kiếm
	public Account findByEmail(String email);

	public Account findByToken(String token);

	@Query(value = "SELECT count(a.username) FROM Accounts a", nativeQuery = true)
	Integer countAllAccount();
}
