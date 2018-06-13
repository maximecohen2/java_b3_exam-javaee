import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(value = "/formulaire", name = "InscriptionForm")
public class ServletInscriptionForm extends HttpServlet {

    private List<Patient> getListPatient(HttpServletRequest request) {
        List<Patient> list;
        list = (List<Patient>)request.getSession().getAttribute("patients");
        if (list == null) {
            return new ArrayList<>();
        } else {
            return list;
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Patient> patients = this.getListPatient(request);
        InscriptionPatient inscriptionPatient = new InscriptionPatient();
        patients.add(inscriptionPatient.inscription(request));
        request.getSession().setAttribute("patients", patients);
        response.sendRedirect(request.getContextPath() + "/");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = getServletContext().getRequestDispatcher("/InscriptionForm.jsp");
        requestDispatcher.include(request, response);
    }
}
