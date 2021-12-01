public with sharing class AccountComponentController {
    public Id cUserId {get; set;}

    public Account getCurrentAccount() {
        return [
            SELECT Id, Name, AccountNumber, Phone, BillingStreet, BillingCity, BillingCountry,Type 
            FROM Account
            WHERE Id =: cUserId
        ];
    }
}
