import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

public class InscriptionPatient {

    private Map<String, String> errors = new HashMap<>();

    public Patient inscription(HttpServletRequest request) {
        char civility = request.getParameter("user_civility").charAt(0);
        String lastname = request.getParameter("user_lastname");
        String firstname = request.getParameter("user_firstname");
        boolean urgent = Boolean.parseBoolean(request.getParameter("user_urgent"));

        if (lastname == null) {
            this.setError("lastname", "champ invalid");
        }
        if (firstname == null) {
            this.setError("firstname", "champ invalid");
        }
        return new Patient(civility, firstname, lastname, urgent);
    }

    public Map<String, String> getErrors() {
        return errors;
    }

    public void setError(String field, String msg) {
        this.errors.put(field, msg);
    }
}
