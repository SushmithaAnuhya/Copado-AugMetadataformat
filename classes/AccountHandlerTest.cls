@isTest
private class AccountHandlerTest {
    @isTest
    static void testCreateAccount_Success() {
        // Arrange
        String accountName = 'Test Account';
        // Act
        Test.startTest();
        Account acc = AccountHandler.createAccount(accountName);
        Test.stopTest();
        // Assert
        System.assertNotEquals(null, acc.Id, 'Account ID should not be null');
        System.assertEquals(accountName, acc.Name, 'Account name should match');
    }
    @isTest
    static void testCreateAccount_EmptyName() {
        // Arrange
        String blankName = '  ';
        // Act & Assert
        try {
            AccountHandler.createAccount(blankName);
            System.assert(false, 'Expected exception for blank name');
        } catch (IllegalArgumentException e) {
            System.assertEquals('Account name cannot be blank', e.getMessage());
        }
    }
    @isTest
    static void testGetAccountById() {
        // Arrange
        Account acc = new Account(Name = 'Fetch Test Account');
        insert acc;
        // Act
        Account fetched = AccountHandler.getAccountById(acc.Id);
        // Assert
        System.assertEquals(acc.Id, fetched.Id);
        System.assertEquals(acc.Name, fetched.Name);
    }
}