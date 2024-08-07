package HomeEnviorMonitor.HomeEnviorMonitor;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.time.LocalDateTime;
import java.util.List;

public interface DirtRecordRepository extends JpaRepository<DirtRecord, Long> {
    List<DirtRecord> findByPotName(String potname);
    List<DirtRecord> findByTimestampBetween(LocalDateTime startTime, LocalDateTime endTime);

    @Query(value = "SELECT * FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY timestamp) as rownum FROM dirt_record WHERE timestamp BETWEEN :startTime AND :endTime) as rowsN WHERE MOD(rownum, :interval) = 0", nativeQuery = true)
    List<DirtRecord> findSampledByTimestampBetween(@Param("startTime") LocalDateTime startTime, @Param("endTime") LocalDateTime endTime, @Param("interval") int interval);

    @Query(value = "SELECT COUNT(*) FROM dirt_record WHERE timestamp BETWEEN :start AND :end", nativeQuery = true)
    long countByTimestampBetween(@Param("start") LocalDateTime start, @Param("end") LocalDateTime end);

}
