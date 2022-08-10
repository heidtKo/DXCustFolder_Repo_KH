@is{!Environment.AccountName}
public class SachinOperations{!Environment.AccountName} {
    @is{!Environment.AccountName} static void testAccountHasDefaultDescription() {       
        // Perform test
        {!Environment.AccountName}.start{!Environment.AccountName}();
        Account acc = new Account(Name='SachinOperation');
        Database.SaveResult result = Database.insert(acc);
        {!Environment.AccountName}.stop{!Environment.AccountName}();
        // Verify
        Account savedAcc = [SELECT Description FROM Account WHERE Id = :result.getId()];
        System.assertEquals('Default description', savedAcc.Description);
    }
}