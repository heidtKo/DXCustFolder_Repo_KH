@is{!Environment.AccountName}
public class KompalAcc{!Environment.AccountName} {

    @is{!Environment.AccountName} static void testDefaultDescription(){
        Account acc = new Account(Name = 'My {!Environment.AccountName} Account');
        insert acc;
        acc = KompalAcc.setDefaultDescription(acc);
        System.assertEquals('Default description', acc.Description, 'When description is null, it is updated to Default description');

        acc.Description = 'New Description Manual';
        
        acc = KompalAcc.setDefaultDescription(acc);
        System.assertNotEquals('Default description', acc.Description, 'When description is NOT null, it is NOT updated to Default description');
    }

    @is{!Environment.AccountName} static void testDefaultBillingAddress(){
        Account acc = new Account(Name = 'My {!Environment.AccountName} Account');
        insert acc;
        acc = KompalAcc.setDefaultBillingAddress(acc);
        System.assertEquals('Basauri, 6', acc.BillingStreet, 'Default BillingStreet is Basauri, 6');
        System.assertEquals('Madrid', acc.BillingState, 'Default BillingState is Madrid');
        System.assertEquals('28023', acc.BillingPostalCode, 'Default BillingPostalCode is 28023');
    }

    @is{!Environment.AccountName} static void testDefaultShippingAddress(){
        Account acc = new Account(Name = 'My {!Environment.AccountName} Account');
        insert acc;
        acc = KompalAcc.setDefaultShippingAddress(acc);
        System.assertEquals('Basauri, 6', acc.ShippingStreet, 'Default ShippingStreet is Basauri, 6');
        System.assertEquals('Madrid', acc.ShippingState, 'Default Shippingtate is Madrid');
        System.assertEquals('28023', acc.ShippingPostalCode, 'Default ShippingPostalCode is 28023');
    }
    
     @is{!Environment.AccountName} static void testDefaultShippingAddress2(){
        Account acc = new Account(Name = 'My {!Environment.AccountName} Account');
        insert acc;
        acc = KompalAcc.setDefaultShippingAddress2(acc);
        System.assertEquals('Basauri, 6', acc.ShippingStreet, 'Default ShippingStreet is Basauri, 6');
        System.assertEquals('Madrid', acc.ShippingState, 'Default Shippingtate is Madrid');
        System.assertEquals('28023', acc.ShippingPostalCode, 'Default ShippingPostalCode is 28023');
    }
    
     @is{!Environment.AccountName} static void testDefaultShippingAddress3(){
        Account acc = new Account(Name = 'My {!Environment.AccountName} Account');
        insert acc;
        acc = KompalAcc.setDefaultShippingAddress3(acc);
        System.assertEquals('Basauri, 6', acc.ShippingStreet, 'Default ShippingStreet is Basauri, 6');
        System.assertEquals('Madrid', acc.ShippingState, 'Default Shippingtate is Madrid');
        System.assertEquals('28023', acc.ShippingPostalCode, 'Default ShippingPostalCode is 28023');
    }
     @is{!Environment.AccountName} static void testDefaultShippingAddress4(){
        Account acc = new Account(Name = 'My {!Environment.AccountName} Account2');
        insert acc;
        acc = KompalAcc.setDefaultShippingAddress4(acc);
        System.assertEquals('Basauri, 6', acc.ShippingStreet, 'Default ShippingStreet is Basauri, 6');
        System.assertEquals('Madrid', acc.ShippingState, 'Default Shippingtate is Madrid');
        System.assertEquals('28023', acc.ShippingPostalCode, 'Default ShippingPostalCode is 28023');
    }
}