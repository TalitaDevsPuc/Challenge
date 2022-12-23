/*** @description: Classe para atualizar campo descrição de contas do tipo indústria: Energy
* @testClass: AccountDetailsTest
**/

public class AccountDetails{
    
        for (Account energy : [
                                SELECT Id, 
                                Industry, 
                                Description
                                FROM Account 
                                WHERE Industry =: 'Energy'
                            ])
            AccoutModel model = new AccoutModel (
            Description = 'Desafio Completo',
            );
            update model;

}


