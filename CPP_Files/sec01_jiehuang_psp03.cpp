/*jiehuang
Collaborators: Prem Patel, Richard Ng
program starts
input values input1 and input2 becomes storage
ask user to input value 1 or 0 for choices credit or cash
if conditions are all valid, enters value into while loop
if conditions are not valid, asks user to re-enter values
if conditions becomes true, entered values are put into formulas to get output
output is outputed onto screen
end program
*/

//I was not able to figure out how to erase the extra text when the program was suppose to 
//to end, it just keeps on repeating "Please enter amount of gas you want:", other than
//that everything else works.


#include <iostream>
#include <iomanip>

using namespace std;

int main(){
	int input1;
	float input2;

	cout << "How will you be paying? [(0) for credit (1) for cash] ";
	cin >> input1;

	while(input1==1 || input1==0){
		cout << "Please enter amount of gas you want: ";
		cin >> input2;

	while(input1==1 && input2>=1){
		cout<< "Your cost is : " << '$' << setprecision(2) << fixed << input2 * 3.021 << endl;
	break;}
	while(input1==0 && input2>=1){
		cout<< "Your cost is : " << '$' << setprecision(2) << fixed << input2 * 3.121 << endl;
	break;}		

		do{
		while(input2<0){
		cout<<"Error: Please enter a valid number."<<endl;
		break;
		}break;}while(input2<0);
		cout<<endl;
	}

	do{
	while(input1>1 || input1<0){
		cout<<"Error: Please enter a valid number."<<endl;
		break;
	}break;}while(input1!=1 || input1!=0);
		cout<<"How will you be paying? [(0) for credit (1) for cash] ";
		cin >> input1;	



	while(input1==1 || input1==0){
		cout << "Please enter amount of gas you want: ";
		cin >> input2;

	while(input1==1 && input2>=1){
		cout<< "Your cost is : " << '$' << setprecision(2) << fixed << input2 * 3.021 << endl;
	break;}
	while(input1==0 && input2>=1){
		cout<< "Your cost is : " << '$' << setprecision(2) << fixed << input2 * 3.121 << endl;
	break;}		

		do{
		while(input2<0){
		cout<<"Error: Please enter a valid number."<<endl;
		break;
		}break;}while(input2<0);
	}

return 0;
}