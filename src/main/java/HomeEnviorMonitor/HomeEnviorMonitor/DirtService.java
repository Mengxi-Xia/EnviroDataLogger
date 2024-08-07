package HomeEnviorMonitor.HomeEnviorMonitor;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;
import java.util.Optional;
import java.time.LocalDateTime;


@Service
public class DirtService {

    private final DirtRecordRepository repository;

    @Autowired
    public DirtService(DirtRecordRepository repository) {
        this.repository = repository;
    }

    public DirtRecord save(DirtRecord record) {
        record.setTimestamp(LocalDateTime.now());
        return repository.save(record);
    }

    public List<DirtRecord> getAllRecords() {
        return repository.findAll();
    }

    public Optional<DirtRecord> getRecordById(Long id) {
        return repository.findById(id);
    }

    public List<DirtRecord> getRecordByPotid(String potname)
    {
        return repository.findByPotName(potname);
    }

    public void deleteRecord(Long id) {
        repository.deleteById(id);
    }


    public List<DirtRecord> getDirtDataByTimeRange(LocalDateTime startTime, LocalDateTime endTime) {
        return repository.findByTimestampBetween(startTime, endTime);
    }

}
