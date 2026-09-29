#include <iostream>
using namespace std;

int main(){
	int a=15;
	int b=10;
	
	if(a>b){
		cout<<"Larger: "<<a<<endl;
		return a;
	}
	else if(a==b){
		cout<<"They are equal"<<endl;
		return 0;
	}	
	
	else{
		cout<<"Larger: "<<b<<endl;
	}
	return 0;
}