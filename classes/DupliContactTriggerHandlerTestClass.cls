@isTest
// second change
public class DupliContactTriggerHandlerTestClass {
    @isTest
    public static void contactCheck(){
        Account acc = new Account(name='Test Account',NumberOfLocations__c=3);
        Database.insert(acc,false);
        Account ac = [select id,(select name from contacts) from account where name='Test Account'];
        System.assertEquals(3, ac.contacts.size());
    }
}