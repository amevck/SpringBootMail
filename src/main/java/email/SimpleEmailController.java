package email;

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
    private EmailService emailService;
    /**
     *
     * @param payload - String json parameters
     * @return - string status
     * @throws Exception
     */
    @PostMapping("/sendClientConfirmation")
    @ResponseBody

    public String process(@RequestBody String payload) throws Exception {

            try {
                emailService.sendEmail(payload);
                return "Email Sent!";
            } catch (Exception ex) {
                return "Error in sending email: " + ex;
            }
    }


}