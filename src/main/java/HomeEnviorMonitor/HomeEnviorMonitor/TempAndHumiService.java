package HomeEnviorMonitor.HomeEnviorMonitor;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;
import java.util.Optional;
import java.time.LocalDateTime;


@Service
public class TempAndHumiService {

    private final TempAndHumiRepository repository;

    @Autowired
    public TempAndHumiService(TempAndHumiRepository repository) {
        this.repository = repository;
    }

    public TempAndHumiRecord save(TempAndHumiRecord record) {
        record.setTimestamp(LocalDateTime.now());
        return repository.save(record);
    }

    public List<TempAndHumiRecord> getAllRecords() {
        return repository.findAll();
    }

    public Optional<TempAndHumiRecord> getRecordById(Long id) {
        return repository.findById(id);
    }

    public List<TempAndHumiRecord> getRecordBySiteName(String siteName)
    {
        return repository.findBysiteName(siteName);
    }

    public void deleteRecord(Long id) {
        repository.deleteById(id);
    }

}
