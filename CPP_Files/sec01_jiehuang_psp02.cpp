/*jiehuang
collaborators: Richard Ng & Prem Patel
program has initial values x and y
program starts and inputs 1 for x and for each x, increase by 1 each time for 3 times
program then inputs 1 for y and for each y, increase by 1 each time for 3 times using symbol * to appear on the screen
program outputs onto screen
end program
*/

#include <iostream>
using namespace std;

int main(){
	int x;
	int y;

	for(x=1;x<=3;x++){
		for(y=1;y<=x;y++){
		cout<<'*';
		}
	cout<<endl;
	}

return 0;
}