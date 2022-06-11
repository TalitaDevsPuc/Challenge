trigger sendEmail on Contact (after insert) {
    //dml para atuar depois da inserção do contato
    List<Messaging.SingleEmailMessage> mails = new List<Messaging.SingleEmailMessage>();
    List<String> sendTo = new List<String>();
    //ambos criam a lista de email e de envio
    for(Contact c : trigger.new){
        //trigger.new armazenará os novos valores
        sendTo.add(c.Email);
        //adiciona o e-mail do contato na trigger que guarda os valores
        Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
         //instanciando uma classe "objeto Messaging.SingleEmailMessage"chamado mail
        mail.setToAddresses(sendTo);
        mail.setSubject('Conta criada');
        String body = 'Foi criada a conta '+c.LastName;
        mail.setHtmlBody(body);
        //as caracteristicas do objeto
        mails.add(mail);
        //adiciona o objeto na lista do objeto conta
    }
    Messaging.sendEmail(mails);
    //envia
}