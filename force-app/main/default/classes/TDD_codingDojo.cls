@IsTest
private with sharing class TDD_codingDojo {
    static List<Integer> findAllFactors(Integer myInt) {
        List<Integer> result = new List<Integer>();

        if (myInt == null) {
            return result;
        }
        if (myInt == 0) {
            result.add(0);
            return result;
        }

        if (myInt >= 1) {
            result.add(1);
        }

        for (Integer i = 2; i <= myInt; i++) {
            if (Math.mod(myInt, i) == 0) {
                result.add(i);
                while (Math.mod(myInt, i) == 0) {
                    myInt = myInt / i;
                }
            }
        }

        return result;
    }

    @SuppressWarnings('PMD.ApexAssertionsShouldIncludeMessage')
    @IsTest
    private static void findAllFactors() {
        System.assertEquals(new List<Integer>(), findAllfactors(null));
        System.assertEquals(new List<Integer>{ 0 }, findAllfactors(0));
        System.assertEquals(new List<Integer>{ 1 }, findAllfactors(1));
        System.assertEquals(new List<Integer>{ 1, 2 }, findAllfactors(2));
        System.assertEquals(new List<Integer>{ 1, 3 }, findAllfactors(3));
        System.assertEquals(new List<Integer>{ 1, 2 }, findAllfactors(4));
        System.assertEquals(new List<Integer>{ 1, 5 }, findAllfactors(5));
        System.assertEquals(new List<Integer>{ 1, 2, 3 }, findAllfactors(6));
        System.assertEquals(new List<Integer>{ 1, 7 }, findAllfactors(7));
        System.assertEquals(new List<Integer>{ 1, 2 }, findAllfactors(8));
        System.assertEquals(new List<Integer>{ 1, 3 }, findAllfactors(9));
        System.assertEquals(new List<Integer>{ 1, 2, 5 }, findAllfactors(10));
        System.assertEquals(new List<Integer>{ 1, 2 }, findAllfactors(16));
        System.assertEquals(new List<Integer>{ 1, 2, 3, 5, 7, 11 }, findAllfactors(4620));
    }
}
