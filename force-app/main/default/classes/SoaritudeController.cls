public without sharing class SoaritudeController {
    public static User userData;

    @AuraEnabled(cacheable=true)
    public static User getUserData(String userId) {
        try {
            if (!String.isEmpty(userId) && User.SObjectType.getDescribe().isAccessible()) {
                userData = [SELECT Id, Name, UserName, Title, ContactId, ProfileId FROM User WHERE Id = :userId];
            }
        } catch (Exception ex) {
            System.debug(ex.getMessage());
            throw new AuraHandledException(ex.getMessage());
        }
        return userData;
    }
}