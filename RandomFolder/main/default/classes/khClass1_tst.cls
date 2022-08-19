@isTest
public with sharing class khClass1_tst {
    public khClass1_tst() {
    }

    @IsTest
    static void methodName(){
        
        Integer t;

        Test.startTest();
        t = khClass1.sumInteger(1);
        Test.stopTest();
        
        System.assertEquals(2, t, 'I think we are wrong');
    }

}
