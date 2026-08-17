//task5
//q1

void main() {
  double rectangleArea(double width, double height) {
      return width * height;
  }
  double area = rectangleArea(5, 10);
  print("Area = $area");

  //q2
  bool isPalindrome(String text) {
  text = text.toLowerCase().replaceAll(" ", "");
  String reversed = text.split('').reversed.join('');
  return text == reversed;
}
  print(isPalindrome("Race car"));
  print(isPalindrome("Hello"));

  //q3
  String buildProfile({
  required String name,
  int age = 20,
  String city = "Cairo",
}) {
  return "Name: $name, Age: $age, City: $city";
}
  print(buildProfile(name: "Ali"));
  print(buildProfile(
    name: "Hala",
    age: 22,
    city: "Menofia"));


    //q4
    List<int> filterNumbers(
    List<int> nums,
    bool Function(int) test,
) {
  List<int> result = [];

  for (int i = 0; i < nums.length; i++) {
    if (test(nums[i])) {
      result.add(nums[i]);
    }
  }

  return result;
}
  List<int> numbers = [3, 6, 8, 11, 15, 20];

  List<int> evenNumbers =
      filterNumbers(numbers, (num) => num % 2 == 0);

  List<int> greaterThanTen =
      filterNumbers(numbers, (num) => num > 10);

  print("Even Numbers = $evenNumbers");

  print("Greater Than 10 = $greaterThanTen");

}
























