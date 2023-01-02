/*** @description: Classe para atualizar campo descrição de contas do tipo indústria: Energy
* @testClass: UpdateAccountFieldTest
**/

public class UpdateAccountField {

    public static void updateAccount(List<Account> acctsList) {
        Account[] acctsListQuery = [SELECT Id FROM Account WHERE Industry = 'Energy'];
        for (Account a : acctsListQuery) {
            a.Description = 'Desafio Completo';
        }
        update acctsListQuery;
    }
}



/*trigger UpdateAccountField on Account(after update){
 
    for (Account a : Trigger.new) {
        Account[] acctsListQuery = [SELECT Id FROM Account WHERE Industry = 'Energy'];
            if (acctsListQuery = Null) {
                a.Description = 'Desafio Completo';
            }
        }

    }
*/


