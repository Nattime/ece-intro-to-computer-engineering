/*jiehuang
collaborators: Richard Ng & Prem Patel
program starts
x1 and factor used as storage
program asks user to input positive integer
integer is stored into x1
factor becomes the factor of x1 input
program determines if input was 1,o or any other number
if input is equal to 1 or 0, output is 1
program adds 1 to y and is multiplied by the value of x1
output of factorial on screen
end program
*/

#include <iostream>
using namespace std;

int factorial(int x);

int main(){
	int x1, factor;

	cout<< "Enter a positive integer: \n";
	cin>>x1;
	factor=factorial(x1);
return 0;
}

int factorial(int x){
	int y=0,factor=1;
	if(x==1 || x==0){cout<<"The factorial is 1."<<endl;
return (1);
}

	else{
	for(y=1;y<=x;y++){
	factor=factor*y;
}
	cout<<"The factorial is "<<factor<<endl;
return(factor);
}
}