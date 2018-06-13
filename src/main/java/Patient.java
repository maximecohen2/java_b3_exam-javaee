import java.util.Date;

public class Patient {
    
    private char civility;

    private String firstname;

    private String lastname;

    private boolean urgent;

    private Date date;

    public Patient(char civility, String firstname, String lastname, boolean urgent) {
        this.civility = civility;
        this.firstname = firstname;
        this.lastname = lastname;
        this.urgent = urgent;
        this.date = new Date();
    }

    public char getCivility() {
        return civility;
    }

    public String getFirstname() {
        return firstname;
    }

    public String getLastname() {
        return lastname;
    }

    public boolean isUrgent() {
        return urgent;
    }

    public Date getDate() {
        return date;
    }
}
