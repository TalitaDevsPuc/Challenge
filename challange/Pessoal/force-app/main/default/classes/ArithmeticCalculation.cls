/**
* @description: Classe para realizar cálculos aritméticos
* @testClass: ArithmeticCalculationTest
**/

public class ArithmeticCalculation {
    public Decimal doSum(Decimal numberOne, Decimal numberTwo){
        return numberOne + numberTwo;
    }
    public Decimal doSubtraction(Decimal numberOne, Decimal numberTwo){
        return numberOne - numberTwo;
    }
    public Decimal doMultiplication(Decimal numberOne, Decimal numberTwo){
        return numberOne * numberTwo;
    }
    public Decimal doDivision(Decimal numberOne, Decimal numberTwo){
        return numberOne / numberTwo;
    }
    public Decimal doSquareRoot(Integer numberOne){
        return Math.sqrt(numberOne);
    }
}