import 'dart:math';

class BMI_calculation {
  BMI_calculation({this.height,this.weight});
  final int height;
  final int weight;
  double _bmi;
  String BMI(){
    _bmi = weight/(pow(height/100,2));
    return _bmi.toStringAsFixed(1);
  }
  String result()
  {
    if(_bmi>=25)
    {
      return 'Overweight';
    }
    else if(_bmi>=18.5)
    {
      return 'Normal';
    }
    else{
      return 'Underweight';
    }
  }
  String interpreter()
  {
      if(_bmi>=25)
    {
      return 'You have higher than normal BMI. Exercise more!';
    }
    else if(_bmi>=18.5)
    {
      return 'You have a Normal BMI. Keep it up!';
    }
    else{
      return 'You have lower than normal BMI. You should eat more!';
    }
  }
}