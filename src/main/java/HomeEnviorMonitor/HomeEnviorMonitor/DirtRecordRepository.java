package HomeEnviorMonitor.HomeEnviorMonitor;

import org.springframework.data.jpa.repository.JpaRepository;
import java.util.List;

public interface DirtRecordRepository extends JpaRepository<DirtRecord, Long> {
    List<DirtRecord> findByPotName(String potname);
}
