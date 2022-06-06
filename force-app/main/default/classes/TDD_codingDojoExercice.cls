@IsTest
private with sharing class TDD_codingDojoExercice {
    @SuppressWarnings('PMD.ApexAssertionsShouldIncludeMessage')
    @IsTest
    private static void findAllFactors() {
        System.assertEquals(new List<Integer>(), findAllfactors(null));
    }
}
