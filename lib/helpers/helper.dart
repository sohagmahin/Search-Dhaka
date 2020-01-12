class Helper {
 static String listToString(List<String> list) {
    String temp = list.toString();
    String tempOne = temp.replaceFirst("[", "", 0); //removed the curly brace
    String tempTwo = tempOne.replaceFirst(
        "]", "", tempOne.length - 1); // removed the curly brace
    return tempTwo;
  }

 static List<String> stringToList(String str) {
    var tempStr = str.split(", ");//Be careful. coz this "," & this ", " are not same.
    return tempStr;
  }
}
