//Q.7:Create a map with name, phone keys and store some values to it. Use where to
 //find all keys that have length 4.


void main(){
  Map myuser ={'name':'daddu','phone':'03432613706'};
 print (myuser.keys.where((keys) => keys.length == 4));
  
}