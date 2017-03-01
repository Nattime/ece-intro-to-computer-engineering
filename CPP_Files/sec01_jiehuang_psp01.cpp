/*jiehuang
Collaborators: Prem Patel, Rich Ng
Pseuodocode:
input1 and input2 becomes storage for inputs
program asks user how he/she is paying; 1 for cash and 0 for credit
user's input is stored into input1
then program asks user to input amount of gas he/she wants
input is stored into input2
with the switch cases, if the input1 was for (1) cash, input1 and input2 are put into case 1's formula, then an output appears on screen
if the input1 was for (0) credit, input1 and input2 is switched to case 0 and output appears on screen of price
end program
*/

#include <iostream>
#include <iomanip>
using namespace std;

int main(){
	char input1;
	float input2;

	cout << "How will you be paying? [(0) for credit (1) for cash] ";
	cin >> input1;	
	cout << "Please enter amount of gas you want: ";
	cin >> input2;

	switch (input1){
		case '1':
		cout<< "Your cost is : " << '$' << setprecision(2) << fixed << input2 * 3.021 << endl;
	break;
		case '0':
		cout<< "Your cost is : " << '$' << setprecision(2) << fixed << input2 * 3.121 << endl;
	break;

	}

return 0;
}