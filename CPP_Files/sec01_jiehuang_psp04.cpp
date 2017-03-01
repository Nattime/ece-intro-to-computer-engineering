/*jiehuang
collaborators: Richard Ng & Prem Patel
program starts
variable x is used as a storage
asks user to input a number; input is stored into x
if the input is positive, decrease counter by 1 from initial x and output all values divisible by 2
if input is negative, increase counter by 1 from x and output all values divisible by 2
output onto screen
end program
*/

#include <iostream>
#include <iomanip>
using namespace std;

int main(){
	int x;

	cout<<"Please enter a number: ";
	cin>>x;

	for(int counter = x; counter>=1;counter--){
		if((counter % 2)==0)
			cout<<counter<<endl;
	}
	for(int counter = x; counter<=-1;counter++){
		if((counter % 2)==0)
			cout<<counter<<endl;
	}

return 0;
}