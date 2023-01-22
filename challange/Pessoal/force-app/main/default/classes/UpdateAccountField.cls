/*** @description: Classe para atualizar campo descrição de contas do tipo indústria: Energy
* @testClass: UpdateAccountFieldTest
**/

public class UpdateAccountField {

    @future

    public static void updateAccount() {

        Account[] acctsListQuery = [SELECT Id FROM Account WHERE Industry = 'Energy'];
        
        for (Account a : acctsListQuery) {
            a.Description = 'Desafio Completo (update)';
        }
        update acctsListQuery;
    }

    public static void updateAccount(List<Account> accounts) {
        
        for (Account acc : accounts) {
            acc.Description = 'Desafio Completo (insert)';
        }
    }
}



