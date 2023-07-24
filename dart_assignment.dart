//Question 1.

void main() {
  List a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  for (int x in a) {
    if (x < 5) {
      print(x);
    }
  }
}

//Question 2.
void main() {
  List<int> a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  List<int> b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];

  List commonElements = findCommonElements(a, b);
  print(commonElements);
}

List<int> findCommonElements(List<int> a, List<int> b) {
  Set<int> set1 = a.toSet();
  Set<int> set2 = b.toSet();
  Set<int> intersection = set1.intersection(set2);

  return intersection.toList();
}


//Question 4.
void main() {
  List<int> a = [5, 10, 15, 20, 25];

  List result = getFirstAndLastElements(a);
  print(result);
}

List<int> getFirstAndLastElements(List<int> list) {
 
  List<int> firstAndLast = [list.first, list.last];
  return firstAndLast;
}

//Question 6
void main() {
//Sample List
  List<int> originalList = [1, 2, 2, 3, 3, 3, 4, 4, 4, 4, 5];
 
  
  List<int> newList = removeDuplicates(originalList);
  print(newList); 
}

List<T> removeDuplicates<T>(List<T> list) {
  Set<T> uniqueElements = list.toSet();
  return uniqueElements.toList();
}
