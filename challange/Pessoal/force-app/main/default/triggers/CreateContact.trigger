trigger CreateContact on Account (after insert) {
    //dml para atuar depois da inserção de conta
    List<Contact> cont = new List<Contact>();
    //cria a lista cont - list só podem ser do mesmo tipo, nesse caso, string
    for(Account a: Trigger.New){
        //trigger.new armazenará os novos valores
        Contact c = new Contact();
        //instanciando uma classe "objeto Contact" chamada c 
        c.LastName=a.Name;
        c.Email=a.Email__c;
        c.Phone=a.Phone;
        //as caracteristicas do objeto
        cont.add(c);
        //adiciona o objeto na lista do objeto conta
    }
    if(!cont.isEmpty()){
       //verifica se não está vazio
 	   insert cont;   
       //insere o objeto na lista, importante está fora do loop para ser usado 1 dml por vez   
    }
}