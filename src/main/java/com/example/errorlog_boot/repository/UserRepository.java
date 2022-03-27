package com.example.errorlog_boot.repository;

import com.example.errorlog_boot.table.User;
import org.springframework.data.jpa.repository.JpaRepository;

// JpaRepository : SQL 문을 직접 쓰지 않고 -> Java 메소드로 -> 퀴리 실행을 할 수 있게 해줌
// JpaRepository 상속 (인터페이스 : 메소드 집함)
// extends JpaRepository<Entity Type, PK Type>
public interface UserRepository extends JpaRepository<User, Integer> {
}
