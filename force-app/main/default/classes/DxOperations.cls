public class DxOperations {
    public static Account setDefaultDescription(Account a) {
        a.Description = '{!Environment.AccountName} dev description';
        return a;
    }
}