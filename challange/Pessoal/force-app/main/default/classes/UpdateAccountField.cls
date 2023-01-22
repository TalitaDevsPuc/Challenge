/*** @description: Classe para atualizar campo descrição de contas do tipo indústria: Energy
* @testClass: UpdateAccountFieldTest
**/

public class UpdateAccountField {

    @future(callout=true)

    public static void updateAccount() {

        Account[] acctsListQuery = [SELECT Id FROM Account WHERE Industry = 'Energy'];
        
        for (Account a : acctsListQuery) {
            a.Description = 'Desafio Completo';
        }
        update acctsListQuery;
    }
}



