@isTest
private class SoaritudeControllerTest {

    @isTest
    private static void testGetUserData() {
        SetupTestDataClass testData = new SetupTestDataClass();
        testData.createTestUser();

        Test.startTest();
        SoaritudeController.getUserData(testData.testUser.Id);
        Test.stopTest();

        User resultUser = [SELECT FirstName, LastName, Title FROM User WHERE Id = :testData.testUser.Id];
        Assert.isNotNull(resultUser, 'The resultant test user is missing');
        Assert.areEqual(testData.testUser.FirstName, resultUser.FirstName, 'FirstName is not the expected');
        Assert.areEqual(testData.testUser.LastName, resultUser.LastName, 'LastName is not the expected');
        Assert.areEqual(testData.testUser.Title, resultUser.Title, 'Title is not the expected');
    }

    private class SetupTestDataClass {
        public User testUser;

        public void createTestUser() {
            testUser = new User();
            testUser.Username = 'testusername@testemail.com';
            testUser.FirstName = 'TestName';
            testUser.LastName = 'TestLastname';
            testUser.Title = 'TestTitle';
            testUser.Email = 'testusername@testemail.com';
            testUser.Alias = 'TU';
            testUser.ProfileId = '00e6A000000nSUYQA2';
            testUser.TimeZoneSidKey = 'GMT';
            testUser.EmailEncodingKey = 'ISO-8859-1';
            testUser.LocaleSidKey = 'en_US';
            testUser.LanguageLocaleKey = 'en_US';
            insert testUser;
        }
    }
}