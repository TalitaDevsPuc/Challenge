/**
* @description: Trigger da classe UpdateAccountField.
**/
trigger AccountTrigger on Account (before Insert, after Update) {
    if(!System.isFuture() && !System.isBatch())

    if(trigger.IsBefore){
        if(trigger.IsInsert){
            UpdateAccountField.updateAccount(Trigger.new);
        }
    } 
    else if(trigger.IsAfter){         
        if(trigger.IsUpdate){
            UpdateAccountField.updateAccount();
        }  
    }
}