public with sharing class AccountHandler {
    // Method to create an Account with the given name
    public static Account createAccount(String name) {
        if (String.isBlank(name)) {
            throw new IllegalArgumentException('Account name cannot a be blank');
        }
        Account acc = new Account(Name = name);
        insert acc;
        return acc;
    }
    // Method to get Account by Id
    public static Account getAccountById(Id accountId) {
        return [SELECT Id, Name FROM Account WHERE Id = :accountId LIMIT 1];
    }
}