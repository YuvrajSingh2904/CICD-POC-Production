public class ContactAddAnkita {
// Create contact
    public static Contact createAccount(String lastname, String phone) {
        Contact con = new Contact();
        con.lastname = lastname;
        con.Phone = phone;
        insert con;
        return con;
}
}