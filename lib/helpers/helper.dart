class Helper {
 static String listToString(List<String> list) {
    String temp = list.toString();
    String tempOne = temp.replaceFirst("[", "", 0); //removed the starting  curly brace
    String tempTwo = tempOne.replaceFirst(
        "]", "", tempOne.length - 1); // removed the ending curly brace
    return tempTwo;
  }

 static List<String> stringToList(String str) {
    var tempStr = str.split(",");
    return tempStr;
  }

 static List<String> stringToListForLocalDB(String str) {
   var tempStr = str.split(", ");
   return tempStr;
 }
}
