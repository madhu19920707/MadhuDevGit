public class ContactController {
@AuraEnabled(cacheable=true)
    public static List<Contact> getContactList(String searchValue) {
        System.debug('====searchValue======'+searchValue);
        System.debug('====searchValueTest3======'+searchValue);
        return [SELECT Id, Name, Title, Phone, Email FROM Contact  WHERE Name =:searchValue LIMIT 10];
    }
}