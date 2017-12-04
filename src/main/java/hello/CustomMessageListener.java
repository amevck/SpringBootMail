package hello;

import freemarker.template.Configuration;
import freemarker.template.Template;
import org.json.JSONException;
import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.amqp.core.Message;
import org.springframework.amqp.rabbit.annotation.RabbitListener;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;
import org.springframework.ui.freemarker.FreeMarkerTemplateUtils;

import javax.mail.internet.MimeMessage;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;

@Service
public class CustomMessageListener {

    @Autowired
    private JavaMailSender sender;

    @Autowired
    private Configuration freemarkerConfig;

    private static final Logger log = LoggerFactory.getLogger(CustomMessageListener.class);

//    @RabbitListener(queues = Application.QUEUE_GENERIC_NAME)
//    public void receiveMessage(final Message message) throws InterruptedException {
//        TimeUnit.SECONDS.sleep(3);
//        log.info("Received message as generic: {}", message.toString());
//    }

   @RabbitListener(queues = Application.QUEUE_GENERIC_NAME)
    public void receiveMessage( Message message) throws InterruptedException {

        try {

            sendEmail(new String(message.getBody(), "UTF-8").replace("\"{","{").replace("\\","").replace("\"",""));

        } catch (Exception ex) {
            System.out.println(ex);
        }
    }


    private void sendEmail(String payload) throws Exception {
        MimeMessage message = sender.createMimeMessage();

        MimeMessageHelper helper = new MimeMessageHelper(message);

        Map<String, Object> model = new HashMap();
        model.put("user", "Creative");
        JSONObject jsonObj = new JSONObject(payload);
        jsonObj.keys().forEachRemaining(k ->
        {
            try {
                model.put((String) k, jsonObj.get((String) k));
            } catch (JSONException e) {
                e.printStackTrace();
            }
        });

        freemarkerConfig.setClassForTemplateLoading(this.getClass(), "/");

        Template t = freemarkerConfig.getTemplate("clientConfirmation.ftl");
        String text = FreeMarkerTemplateUtils.processTemplateIntoString(t, model);
        helper.setTo((String)jsonObj.get("sentTo"));
        helper.setText(text, true); // set to html
        helper.setSubject("Miracle asia booking confirmation");
        sender.send(message);
        System.out.println("email sent");
    }

}
