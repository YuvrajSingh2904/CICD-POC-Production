@isTest
public class ContactAddAnkitaTest {

    @isTest
    static void testCreateAccount() {
        // Arrange
        String testLastName = 'TestUser';
        String testPhone = '1234567890';

        // Act
        Contact resultContact = ContactAddAnkita.createAccount(testLastName, testPhone);

        // Assert
        System.assertNotEquals(null, resultContact.Id, 'Contact should have been inserted and have an Id.');
        System.assertEquals(testLastName, resultContact.LastName, 'Last name should match the input.');
        System.assertEquals(testPhone, resultContact.Phone, 'Phone should match the input.');

        // Additional query to confirm contact exists in DB
        Contact conFromDB = [SELECT Id, LastName, Phone FROM Contact WHERE Id = :resultContact.Id];
        System.assertEquals(testLastName, conFromDB.LastName, 'DB Last name should match.');
        System.assertEquals(testPhone, conFromDB.Phone, 'DB Phone should match.');
    }
}