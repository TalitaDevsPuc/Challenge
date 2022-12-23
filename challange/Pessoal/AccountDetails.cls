/*** @description: Classe para atualizar campo descrição de contas do tipo indústria: industry
* @testClass: AccountDetailsTest
**/

public class AccountDetails(){
    
        for (Account energy : [
                                SELECT Id, 
                                Industry, 
                                Description
                                FROM Account 
                                WHERE Industry =: 'Energy'
                            ])
            AccoutModel model = new Territory2Model (
            Description = 'Desafio Completo',
        );
        update model;

}


