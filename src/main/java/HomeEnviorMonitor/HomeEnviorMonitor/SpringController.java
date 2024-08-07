package HomeEnviorMonitor.HomeEnviorMonitor;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.stereotype.Controller;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.datatype.jsr310.JavaTimeModule;

import org.springframework.ui.Model;

import java.nio.charset.StandardCharsets;
import java.time.LocalDateTime;
import java.time.temporal.ChronoUnit;
import java.util.List;
import java.util.Optional;
import java.time.format.DateTimeFormatter;

import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;

@Controller
public class SpringController {

    private final DirtService dirtService;
    private final TempAndHumiService tempAndHumiService;

    private static final DateTimeFormatter DATE_TIME_FORMATTER = DateTimeFormatter.ISO_DATE_TIME;

    @Autowired
    public SpringController(DirtService dirtService,TempAndHumiService tempAndHumiService) 
    {
        this.dirtService = dirtService;
        this.tempAndHumiService=tempAndHumiService;
        
    }

    @Autowired
    private ObjectMapper objectMapper;

    //Temperature and humidity part

    @PostMapping("/api/tempAndHumi")
    @ResponseBody
    public TempAndHumiRecord recordTempAndHumi(@RequestBody TempAndHumiRecord record)
    {
        return tempAndHumiService.save(record);
    }    

    @GetMapping("/api/tempAndHumi")
    @ResponseBody
    public ResponseEntity<String> getTempAndHumiRecords(@RequestParam(required = false) String startTime, @RequestParam(required = false) String endTime) {
        
        List<TempAndHumiRecord> records;
        if (startTime != null && endTime != null) {
            LocalDateTime start = LocalDateTime.parse(startTime, DATE_TIME_FORMATTER);
            LocalDateTime end = LocalDateTime.parse(endTime, DATE_TIME_FORMATTER);
            records = tempAndHumiService.getTempAndHumiDataByTimeRange(start, end);
        
        } else {
            LocalDateTime currentTime = LocalDateTime.now();
            LocalDateTime thirtyMinutesAgo = currentTime.minus(30, ChronoUnit.MINUTES);
            records = tempAndHumiService.getTempAndHumiDataByTimeRange(thirtyMinutesAgo, currentTime);
        }

        String responseBody = serializeToJson(records);
        HttpHeaders headers = new HttpHeaders();
        long contentLength = responseBody.getBytes(StandardCharsets.UTF_8).length;
        headers.setContentLength(contentLength);

        // 打印日志
        System.out.println("Calculated Content-Length: " + contentLength);

        byte[] originalBytes = responseBody.getBytes(StandardCharsets.UTF_8);

        // 设置响应头
        headers.add("X-Original-Size", String.valueOf(originalBytes.length));
        System.out.println("Original size set to header: " + originalBytes.length);

        return new ResponseEntity<>(responseBody, headers, HttpStatus.OK);
    }

    private String serializeToJson(List<TempAndHumiRecord> records) {
        try {
            ObjectMapper objectMapper = new ObjectMapper();
            objectMapper.registerModule(new JavaTimeModule());
            objectMapper.disable(SerializationFeature.WRITE_DATES_AS_TIMESTAMPS);
            return objectMapper.writeValueAsString(records);
        } catch (Exception e) {
            throw new RuntimeException("Failed to serialize records to JSON", e);
        }
    }

    private String serializeToJsonDirt(List<DirtRecord> records) {
        try {
            ObjectMapper objectMapper = new ObjectMapper();
            objectMapper.registerModule(new JavaTimeModule());
            objectMapper.disable(SerializationFeature.WRITE_DATES_AS_TIMESTAMPS);
            return objectMapper.writeValueAsString(records);
        } catch (Exception e) {
            throw new RuntimeException("Failed to serialize records to JSON", e);
        }
    }

    @GetMapping("/api/allTempAndHumi")
    @ResponseBody
    public List<TempAndHumiRecord> getTempAndHumiRecords() 
    {

        return tempAndHumiService.getAllRecords();

    }

    @GetMapping("/api/tempAndHumi/siteName/{siteName}")
    @ResponseBody
    public List<TempAndHumiRecord> getRecordBySiteName(@PathVariable("siteName") String siteName)
    {
        return tempAndHumiService.getRecordBySiteName(siteName);
    }

    @GetMapping("/api/tempAndHumi/ID/{ID}")
    @ResponseBody
    public Optional<TempAndHumiRecord> getRecordByID(@PathVariable("ID") Long ID)
    {
        return tempAndHumiService.getRecordById(ID);
    }


    //Below is GETMAPPING for chart
    @GetMapping("/chart/tempAndHumi")
    public String getChartTempAndHumidi(Model model) throws JsonProcessingException
    {
        List<TempAndHumiRecord> tempAndHumiData=tempAndHumiService.getAllRecords();
        String tempAndHumiDataJson = objectMapper.writeValueAsString(tempAndHumiData);
        model.addAttribute("tempAndHumiDataJson", tempAndHumiDataJson);

        return "tempAndHumiChart";
        
    }

    @GetMapping("/chart/dirt")
    public String getChartDirt(Model model) throws JsonProcessingException
    {
        List<DirtRecord> dirtData=dirtService.getAllRecords();
        String dirtDataJson = objectMapper.writeValueAsString(dirtData);
        model.addAttribute("dirtDataJson", dirtDataJson);
        return "dirtChart";
    }

    @GetMapping("/api/dirt/ID/{ID}")
    @ResponseBody
    public Optional<DirtRecord> getDirtRecordByID(@PathVariable("ID") Long ID)
    {
        return dirtService.getRecordById(ID);
    }

    @GetMapping("/api/allDirt")
    @ResponseBody
    public List<DirtRecord> getAllDirtRecords() 
    {
        return dirtService.getAllRecords();
    }

    @PostMapping("/api/dirt")
    @ResponseBody
    public DirtRecord recordDirt(@RequestBody DirtRecord record)
    {
        return dirtService.save(record);
    }    

    @GetMapping("/api/dirt")
    @ResponseBody
    public ResponseEntity<String> getDirtRecords(@RequestParam(required = false) String startTime, @RequestParam(required = false) String endTime) {
        
        List<DirtRecord> records;
        if (startTime != null && endTime != null) {
            LocalDateTime start = LocalDateTime.parse(startTime, DATE_TIME_FORMATTER);
            LocalDateTime end = LocalDateTime.parse(endTime, DATE_TIME_FORMATTER);
            records = dirtService.getDirtDataByTimeRange(start, end);
        
        } else {
            LocalDateTime currentTime = LocalDateTime.now();
            LocalDateTime thirtyMinutesAgo = currentTime.minus(30, ChronoUnit.MINUTES);
            records = dirtService.getDirtDataByTimeRange(thirtyMinutesAgo, currentTime);
        }

        String responseBody = serializeToJsonDirt(records);
        HttpHeaders headers = new HttpHeaders();
        long contentLength = responseBody.getBytes(StandardCharsets.UTF_8).length;
        headers.setContentLength(contentLength);

        // 打印日志
        System.out.println("Calculated Content-Length: " + contentLength);

        byte[] originalBytes = responseBody.getBytes(StandardCharsets.UTF_8);

        // 设置响应头
        headers.add("X-Original-Size", String.valueOf(originalBytes.length));
        System.out.println("Original size set to header: " + originalBytes.length);

        return new ResponseEntity<>(responseBody, headers, HttpStatus.OK);
    }
}
