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

    public String sendClientConfirmation(@RequestBody String payload) throws Exception {

            try {
                emailService.sendEmail(payload,"reservationMail.html","Miracle Of Asia booking confirmation");
                return "Email Sent!";
            } catch (Exception ex) {
                return "Error in sending email: " + ex;
            }
    }

    @PostMapping("/sendHotelApproved")
    @ResponseBody

    public String sendHotelApproved(@RequestBody String payload) throws Exception {

        try {
            emailService.sendEmail(payload,"hotelApproved.html","Miracle Of Asia hotel approved");
            return "Email Sent!";
        } catch (Exception ex) {
            return "Error in sending email: " + ex;
        }
    }

    @RequestMapping(value="/test",method = RequestMethod.GET)
    public String test(){

     return    "reservation";
    }



}