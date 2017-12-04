package hello;

import org.json.JSONException;
import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;

@Service
public class CustomMessageSender {

    private static final Logger log = LoggerFactory.getLogger(CustomMessageSender.class);

    private final RabbitTemplate rabbitTemplate;

    @Autowired
    public CustomMessageSender(final RabbitTemplate rabbitTemplate) {
        this.rabbitTemplate = rabbitTemplate;
    }
    int i = 0;
    JSONObject jobject = new JSONObject();

    public void createMsg(JSONObject jobject) throws JSONException {
        jobject.put("cmId","100");
        jobject.put("user","Hilton");
        jobject.put("invoice_number","100");
        jobject.put("contact_number","100");
        jobject.put("email_address","100");
        jobject.put("remarks","100");
        jobject.put("hotel_name","100");
        jobject.put("hotel_phone1","100");
        jobject.put("hotel_address","100");
        jobject.put("check_in_date","100");
        jobject.put("check_out_date","100");
        jobject.put("special_request","100");
        jobject.put("numberOfRoom","100");
        jobject.put("roomName","100");
        jobject.put("currecny","100");
        jobject.put("rate","100");
        jobject.put("total","100");
        jobject.put("Delux","100");
        jobject.put("booking_currency","100");
        jobject.put("booking_total","100");
        jobject.put("booking_statue","100");
        jobject.put("sentTo","amem.vck@gmail.com");

    }

    String s = "{\"cmId\": 100,\"user\": \"Hilton\",\"invoice_number\":\"1233\",\"contact_number\":\"564654646\", \"email_address\":\"ugdsiugdiug@gmaijsai.com\", \"remarks\":\"adfasf\", \"hotel_name\":\"mount lavinia\", \"hotel_phone1\":\"214214214\", \"hotel_address\":\"8235827580\", \"check_in_date\":\"3529789\", \"check_out_date\":\"8357820570\", \"special_request\":\"238572805708\", \"numberOfRoom\":\"5\", \"roomName\":\"uehguohsg\", \"currecny\":\"adgdjasbg\", \"rate\":\"hgiush\", \"total\":\"sjdvsdgv\", \"Delux\":\"sjbhgjh\", \"booking_currency\":\"jdvnjdabnv\", \"booking_total\":\"asfaf\", \"booking_statue\":\"sdhvosdh\",\"sentTo\":\"amem.vck@gmail.com\"}";

    @Scheduled(fixedDelay = 300L)
    public void sendMessage() throws JSONException {
        JSONObject jobject = new JSONObject();
        this.createMsg(jobject);
        final CustomMessage message = new CustomMessage("Hello there!", i, false);
        log.info("Sending message...");
        rabbitTemplate.convertAndSend(Application.EXCHANGE_NAME, Application.ROUTING_KEY, jobject.toString());
        i++;
    }
}
