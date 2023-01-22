trigger AccountTrigger on Account (before Insert, after Update) {
    if(trigger.IsBefore){
        if(trigger.IsInsert){
            UpdateAccountField.updateAccount();
        }
    } 
    else if(trigger.IsAfter){         
        if(trigger.IsUpdate){
            UpdateAccountField.updateAccount();
        }
    }  
}
