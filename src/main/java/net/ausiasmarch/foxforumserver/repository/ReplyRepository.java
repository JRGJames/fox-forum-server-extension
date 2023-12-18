package net.ausiasmarch.foxforumserver.repository;

import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import net.ausiasmarch.foxforumserver.entity.ReplyEntity;

public interface ReplyRepository extends JpaRepository<ReplyEntity, Long> {

    @Query("SELECT r FROM ReplyEntity r WHERE r.enabled = true AND r.id = :id")
    Optional<ReplyEntity> findByEnabledTrue(@Param("id") Long id);

    @Query("SELECT r FROM ReplyEntity r WHERE r.thread.id = :id AND r.enabled = true")
    Page<ReplyEntity> findAllByThreadIdEnabledTrue(@Param("id") Long id, Pageable pageable);

    Page<ReplyEntity> findByUserId(Long id, Pageable pageable);

    Page<ReplyEntity> findByThreadId(Long id, Pageable pageable);

    @Modifying
    @Query(value = "ALTER TABLE reply AUTO_INCREMENT = 1", nativeQuery = true)
    void resetAutoIncrement();
}
