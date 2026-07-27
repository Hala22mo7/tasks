import 'dart:vmservice_io';

void main(){
  //q1
  for(int i=1;i<=30;i++){
    if(i%3==0){
      print ("fizz");
    } else print(i);
  }
//q2
List<String> fruits =['apple','banana','mango','kiwi'];
for (int i= 0;i<fruits.length;i++){
  print("$i:${fruits[i]}");
}
//q3
List<int> scores =[55,82,90,43,77];
int sum = 0;
for(int i =0;i<scores.length;i++){
  sum += scores[i];
} 
double average =sum / scores.length;
print("Sum =$sum");
print("average =$average");

//q4
Map<String, int> ages={'sara':20,'omar':23,'laila':19,};
for(String name in ages.keys){
  print("$name is${ages[name]}years old");
} 

//q5
List< int> numbers=[12,45,3,89,21,67];
int largest = numbers[0];
for(int i =1; i<numbers.length;i++){
  if(numbers[i]>largest){
    largest =numbers[i];
  }
}
print("largest number=$largest");

//q6
List<Map<String, dynamic>>products =[{'name':'book','price':40},{'name':'pen','price':5},{'name':'bag','price':120}];
int totalPrice =0;
for(int i=0;i<products.length;i++){
  print("${products[i]['name']}:${products[i]['price']}");
  totalPrice +=products[i]['price']as int;
}
print("Total price =$totalPrice");

//bouns q 
List<Map<String, dynamic>>products2 =[ {'name':'book','price':40,'qty':2},{'name':'pen','price':5,'qty':10},{'name':'bag','price':120,'qty':1}];
int totalCost=0;
int highestCost=0;
String highestItem="";
for( int i=0;i<products2.length;i++){
  int cost = products2[i]['price']*products2[i]['qty'];
  totalCost+= cost;
  if(cost>highestCost){
    highestCost=cost;
    highestItem = products2[i]['name'];
  }
}
print("Total Cost=$totalCost");
print("Highest Cost Item=$highestItem");

}