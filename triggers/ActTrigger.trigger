trigger ActTrigger on Account (after insert) {

    if(trigger.isInsert && trigger.isAfter){
        DupliContactHandler.CreateContacts(trigger.new);
}

}