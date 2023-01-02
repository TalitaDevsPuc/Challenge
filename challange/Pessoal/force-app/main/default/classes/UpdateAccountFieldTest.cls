/**
* @description: Classe de teste da classe UpdateAccountField.
**/
@isTest
private class UpdateAccountFieldTest {
    
    @TestSetup
    private static void setup(){
        Account conta = new Account();
        conta.Name = 'Test description';
        conta.Industry = 'Energy';
        conta.Email__c = 'teste@classeteste.com';

        insert conta;
    }

    @isTest
    private static void updateAccountField(){
        Account conta  = [SELECT Id, Description FROM Account];
        List<Account> listAccount = new List<Account>();
        listAccount.add(conta);

        Test.startTest();
            UpdateAccountField.updateAccount(listAccount);
        Test.stopTest();
    }
}