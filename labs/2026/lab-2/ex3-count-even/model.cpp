#include <iostream>
using namespace std;

int main(){
	int size=10;
	int  arr[size]={3,4,8,12,1,5,15,17,20,6};
	
	int count=0;
	int i=0;
	while(i<=size-1){
		if(arr[i]%2==0){
			count++;
		}
		i++;
	}
	cout<<"COUNT = "<<count<<endl;
	return 0;
}