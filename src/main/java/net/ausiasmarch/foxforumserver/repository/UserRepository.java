package net.ausiasmarch.foxforumserver.repository;

import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import net.ausiasmarch.foxforumserver.entity.UserEntity;

public interface UserRepository extends JpaRepository<UserEntity, Long> {

    @Query("SELECT u FROM UserEntity u WHERE u.enabled = true AND u.id = :id")
    Optional<UserEntity> findByEnabledTrue(@Param("id") Long id);

    @Query("SELECT u FROM UserEntity u WHERE u.enabled")
    Page<UserEntity> findAllByEnabledTrue(Pageable pageable);

    Optional<UserEntity> findByUsername(String username);

    Optional<UserEntity> findByUsernameAndPassword(String username, String password);

    @Query(value = "SELECT u.*,count(r.id) FROM user u, reply r WHERE u.id = r.id_user GROUP BY u.id ORDER BY COUNT(u.id) desc", nativeQuery = true)
    Page<UserEntity> findUsersByRepliesNumberDescFilter(Pageable pageable);

    @Query(value = "SELECT u.*, COUNT(r.id) FROM user u LEFT JOIN reply r ON u.id = r.id_user WHERE u.enabled = true GROUP BY u.id ORDER BY COUNT(u.id) DESC", nativeQuery = true)
    Page<UserEntity> findUsersByRepliesNumberDescFilterEnabledTrue(Pageable pageable);

    @Modifying
    @Query(value = "ALTER TABLE user AUTO_INCREMENT = 1", nativeQuery = true)
    void resetAutoIncrement();
}
