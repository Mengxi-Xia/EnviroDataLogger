package HomeEnviorMonitor.HomeEnviorMonitor;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.stereotype.Controller;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import org.springframework.ui.Model;

import java.util.List;

@Controller
public class SpringController {

    private final DirtService dirtService;
    private final TempAndHumiService tempAndHumiService;

    @Autowired
    public SpringController(DirtService dirtService,TempAndHumiService tempAndHumiService) 
    {
        this.dirtService = dirtService;
        this.tempAndHumiService=tempAndHumiService;
        
    }

    @Autowired
    private ObjectMapper objectMapper;

    @PostMapping("/api/dirt")
    @ResponseBody
    public DirtRecord recordTemperature(@RequestBody DirtRecord record) {
        return dirtService.save(record);
    }

    @GetMapping("/api/dirt")
    @ResponseBody
    public List<DirtRecord> getAllDirtRecords() {
        return dirtService.getAllRecords();
    }

    @GetMapping("/api/dirt/{potname}")
    @ResponseBody
    public List<DirtRecord> getRecordByPotId(@PathVariable String potname)
    {
        return dirtService.getRecordByPotid(potname);
    }

    //Temperature and humidity part

    @PostMapping("/api/tempAndHumi")
    @ResponseBody
    public TempAndHumiRecord recordTempAndHumi(@RequestBody TempAndHumiRecord record)
    {
        return tempAndHumiService.save(record);
    }    

    @GetMapping("/api/tempAndHumi")
    @ResponseBody
    public List<TempAndHumiRecord> getAllTempAndHumiRecord()
    {
        return tempAndHumiService.getAllRecords();
    }

    @GetMapping("/api/tempAndHumi/{siteName}")
    @ResponseBody
    public List<TempAndHumiRecord> getRecordBySiteName(String siteName)
    {
        return tempAndHumiService.getRecordBySiteName(siteName);
    }


    //Below is GETMAPPING for chart
    @GetMapping("/chart/tempAndHumi")
    public String getChartTempAndHumidi(Model model) throws JsonProcessingException
    {
        List<TempAndHumiRecord> tempAndHumiData=tempAndHumiService.getAllRecords();
        String tempAndHumiDataJson = objectMapper.writeValueAsString(tempAndHumiData);
        model.addAttribute("tempAndHumiDataJson", tempAndHumiDataJson);
        return "chart";
        
    }

    @GetMapping("/chart/dirt")
    public String getChartDirt(Model model) throws JsonProcessingException
    {
        List<DirtRecord> dirtData=dirtService.getAllRecords();
        String dirtDataJson = objectMapper.writeValueAsString(dirtData);
        model.addAttribute("dirtDataJson", dirtDataJson);
        return "chart";
    }


}
