/**
 * An apex page controller that exposes the change password functionality
 */
@IsTest public with sharing class DeletCommitCheckTest {
     @IsTest(SeeAllData=true) public static void testDeletCommitCheck() {
        // Instantiate a new controller with all parameters in the page
        DeletCommitCheck controller = new DeletCommitCheck();
        controller.oldPassword = '123456';
        controller.newPassword = 'qwerty1'; 
        controller.verifyNewPassword = 'qwerty1';                
        
        System.assertEquals(controller.changePassword(),null);                           
    }    
}