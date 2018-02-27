package email;

import freemarker.template.Configuration;
import freemarker.template.Template;
import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;
import org.springframework.ui.freemarker.FreeMarkerTemplateUtils;

import javax.mail.internet.MimeMessage;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by Asanka.E on 2/27/2018.
 */
@Service
public class EmailService {


    @Autowired
    private JavaMailSender sender;

    @Autowired
    private Configuration freemarkerConfig;

    public void sendEmail(String payload) throws Exception {
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
}
