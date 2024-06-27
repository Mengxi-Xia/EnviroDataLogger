package HomeEnviorMonitor.HomeEnviorMonitor;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import java.time.LocalDateTime;

@Entity
public class DirtRecord {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String potName;
    private Double temperature; //Not used, may add later
    private Double mositure;
    private LocalDateTime timestamp;

    // Getters and Setters
    public Double getMositure()
    {
        return mositure;
    }
    
    public void setMositure(Double mositure)
    {
        this.mositure=mositure;
    }

    public String getPotName()
    {
        return potName;
    }

    public void setPotName(String potName)
    {
        this.potName=potName;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Double getTemperature() {
        return temperature;
    }

    public void setTemperature(Double temperature) {
        this.temperature = temperature;
    }

    public LocalDateTime getTimestamp() {
        return timestamp;
    }

    public void setTimestamp(LocalDateTime timestamp) {
        this.timestamp = timestamp;
    }
}
