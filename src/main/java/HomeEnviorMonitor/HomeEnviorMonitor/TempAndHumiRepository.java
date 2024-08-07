package HomeEnviorMonitor.HomeEnviorMonitor;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.time.LocalDateTime;
import java.util.List;

public interface TempAndHumiRepository extends JpaRepository<TempAndHumiRecord, Long> {
    List<TempAndHumiRecord> findBysiteName(String siteName);
    List<TempAndHumiRecord> findByTimestampBetween(LocalDateTime startTime, LocalDateTime endTime);

    @Query(value = "SELECT * FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY timestamp) AS row_num FROM temp_and_humi_record WHERE timestamp BETWEEN :startTime AND :endTime) numbered_rows WHERE row_num % :interval = 0", nativeQuery = true)
    List<TempAndHumiRecord> findSampledByTimestampBetween(@Param("startTime") LocalDateTime startTime, @Param("endTime") LocalDateTime endTime, @Param("interval") int interval);
    

    @Query(value = "SELECT COUNT(*) FROM temp_and_humi_record WHERE timestamp BETWEEN :start AND :end", nativeQuery = true)
    long countByTimestampBetween(@Param("start") LocalDateTime start, @Param("end") LocalDateTime end);
}
