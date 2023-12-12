package net.ausiasmarch.foxforumserver.repository;

import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import net.ausiasmarch.foxforumserver.entity.ThreadEntity;

public interface ThreadRepository extends JpaRepository<ThreadEntity, Long> {

    @Query("SELECT t FROM ThreadEntity t WHERE t.enabled = true AND t.id = :id")
    Optional<ThreadEntity> findByEnabledTrue(@Param("id") Long id);

    Page<ThreadEntity> findByUserId(Long id, Pageable pageable);

    @Query(value = "SELECT t.*,count(r.id) FROM thread t, reply r WHERE t.id = r.id_thread GROUP BY t.id ORDER BY COUNT(r.id) desc", nativeQuery = true)
    Page<ThreadEntity> findThreadsByRepliesNumberDesc(Pageable pageable);

    @Query(value = "SELECT t.*,count(r.id) FROM thread t, reply r WHERE t.id = r.id_thread and t.id_user=$1 GROUP BY t.id ORDER BY COUNT(r.id) desc", nativeQuery = true)
    Page<ThreadEntity> findThreadsByRepliesNumberDescFilterByUserId(Long userId, Pageable pageable);

    @Modifying
    @Query(value = "ALTER TABLE thread AUTO_INCREMENT = 1", nativeQuery = true)
    void resetAutoIncrement();
}
