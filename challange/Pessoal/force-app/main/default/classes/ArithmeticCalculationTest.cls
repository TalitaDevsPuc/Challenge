/**
* @description: Classe de teste da classe ArithmeticCalculation
**/

@isTest
private class ArithmeticCalculationTest {
    @isTest
    private static void doSumTest(){
        ArithmeticCalculation sum = new ArithmeticCalculation(); 
       	Decimal result = sum.doSum(5,5);
        System.debug(result);
        System.AssertEquals(10,result);
    }
	@isTest
    private static void doSubtractionTest(){
        ArithmeticCalculation subtraction = new ArithmeticCalculation();
        Decimal result = subtraction.doSubtraction(5,1);
        System.debug(result);
        System.AssertEquals(4,result);
    }
    @isTest
    private static void doMultiplicationTest(){
        ArithmeticCalculation multiplication = new ArithmeticCalculation();
        Decimal result = multiplication.doMultiplication(5,5);
        System.debug(result);
        System.assertEquals(25,result);
    }
    @isTest
    private static void doDivisionTest(){
        ArithmeticCalculation division = new ArithmeticCalculation();
        Decimal result = division.doDivision(5,5);
        System.debug(result);
        System.assertEquals(1,result);
    }
    @isTest
    private static void doSquareRootTest(){
        ArithmeticCalculation squareRoot = new ArithmeticCalculation();
        Decimal result = squareRoot.doSquareRoot(25);
        System.debug(result);
        System.assertEquals(5,result);
    }
}