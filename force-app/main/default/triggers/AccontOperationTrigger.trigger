trigger AccontOperationTrigger on Account (before insert) {
//updated
for(Account a : Trigger.New) {
        a = AccountOperations.setDefaultDescription(a);
    } 
}