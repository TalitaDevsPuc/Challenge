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
        Email__c = 'classteste@classeteste.com'
        );

        insert account;
    }

    @isTest
    private static void updateAccountField(){

        Test.startTest();
            UpdateAccountField.updateAccount();
        Test.stopTest();

        System.AssertEquals('Desafio Completo',[SELECT Description FROM Account LIMIT 1].Description);

    }

}


