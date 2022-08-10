@is{!Environment.AccountName}
private class MySampleApexClass{!Environment.AccountName} {
    @is{!Environment.AccountName} static void testFreezingPoint() {
        Decimal celsius = MySampleApexClass.getCalculatedValue();
        System.assertEquals(11,11);
    }
}