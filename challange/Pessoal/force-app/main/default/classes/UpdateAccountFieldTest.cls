/**
* @description: Classe de teste da classe UpdateAccountField.
**/
@isTest
private class UpdateAccountFieldTest {
    
    @TestSetup
    private static void setup(){

        Account account = new Account(
        Name = 'Test description',
        Industry = 'Energy',
        Email__c = 'teste@classeteste.com'
        );

        insert account;
    }

    @isTest
    private static void updateAccountField(){

        Test.startTest();
            UpdateAccountField.updateAccount(new List<Account>
            ([SELECT Id, Description FROM Account LIMIT 1]));
        Test.stopTest();

        System.AssertEquals('Energy',[SELECT Industry FROM Account LIMIT 1].Industry);

    }
}


