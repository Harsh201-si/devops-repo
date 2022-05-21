public class DupliContactHandler {

    Public static void CreateContacts(List<Account> accList){
       list<contact>  lstContact = new List<contact>();
        
        for(Account ac:accList){
            if(ac.NumberofLocations__c >0)
            {
                for(Integer i=1; i<=ac.NumberofLocations__c;i++){
                    Contact con = new Contact();
                    con.AccountId = ac.id;
                    con.LastName = ac.Name + i;
                    lstContact.add(con);
                }
            }   
        }
        
        if(lstContact.size()>0){
            insert lstContact;
        }
        
        
    }
    
    
}