package hello;

import java.util.HashMap;
import java.util.Map;

import javax.mail.internet.MimeMessage;

import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.freemarker.FreeMarkerTemplateUtils;
import org.springframework.web.bind.annotation.*;

import freemarker.template.Configuration;
import freemarker.template.Template;

@Controller
public class SimpleEmailController {

    @Autowired
    private JavaMailSender sender;

    @Autowired
    private Configuration freemarkerConfig;


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
    }

    @PostMapping("/sendClientConfirmation")
    @ResponseBody
    public String process(@RequestBody String payload) throws Exception {

            try {
                sendEmail(payload);
                return "Email Sent!";
            } catch (Exception ex) {
                return "Error in sending email: " + ex;
            }
    }
}