/*Jie Huang
DATE: 2/8/2011
NETID:
 jiehuang
COLLABORATORS:Prem Patel, Richard Ng
ALGORITHM PSEUDOCODE


Ask user to input number of scores that will be inputed and save to char array

Validate input and convert to integers
(check that input number of scores 
is not negative or has no invalid characters in it)

Use this to set the size of the array that will hold all the scores entered


While we do not have all of the scores in the array

Get the input

Check if the input has a negative sign first (this is not an integer)

Call your function that checks is the input has a '-' at the beginning and find out

The function result in either true (score is invalid, and we must ask the user to re-enter)
or false (score is valid, and we must next check if all characters are digits)

If function returns true, then the input is invalid because it could potentially be negative

If function returns false, then:

Check if the input contains only digits, and no characters

Call another function to check that all characters are digits

The function will return either false (score is invalid, and we must ask the user to re-enter) or

true (score is valid)

Convert input to integers and check that the score is in the valid range
Call another of your functions to check this
The function will return either false (score is invalid, and we must ask the user to re-enter)

or true (save the score in the array & increment the while-loop counter)

Once array has been filled,
sum scores in array
Send total sum result in message to user

*/


// You will need 3 boolean functions

// 1. Prototype of function that checks to see if the user's input are all digits - this function

// will take a char array argument

// 2. Prototype of function that checks to see if the user's input start with a '-', which would mean that

// it is a negative number, and this is incorrect. This function will take an char array as an argument.

// 3. Prototype of function that checks to see if the integer version of the user's input is within a valid

// range (1 - 105) - this function will take one argument of type int



//37

#include <iostream>
#include <cctype>
#include <string>
#include <cmath>
#include <cstdlib>
using namespace std;

//use of booleans

bool isInt = false;
bool isDigits(char []);
bool notnegative(char []);
bool value(char []);

int main()
{
//declaring variables
	char array[5];
	int arrays;
	double averagescore;
	int sumscores = 0;

//61
//do-while loop	
	do{
	cout<<"How many scores would you like to enter? ";
	cin>>array;
		int k=0;
		while(array[k] != '\0')
		{
			if(isdigit(array[k]))
			{
				isInt = true;
			}
			else
			{
				isInt = false;
				cout<<"You entered an invalid number of scores."<<endl;
				break;
			}
			k++;
		}
	}while(isInt == false);
//if statement
	if(isInt == true)
	{
		arrays = atoi(array);
		
		char scores[10];
		int score[arrays];
		for(int p = 0; p < arrays; p++)
		{
			cout<<"Enter score "<<p+1<<": ";
			cin>>scores;
			
			while(isDigits(scores) != true)
			{
				cout<<"You entered characters in the score. Please retry."<<endl;
				cout<<"Enter score "<<p+1<<endl;
				cin>>scores;
			}

//101
			while(notnegative(scores) != true)
			{
				cout<<"You entered a negative score. Please retry."<<endl;
				cout<<"Enter score "<<p+1<<": ";
				cin>>scores;
			}
			while(value(scores) != true)
			{
				cout<<"You entered an invalid score. Please retry."<<endl;
				cout<<"Enter score "<<p+1<<": ";
				cin>>scores;
			}
		score[p] = atoi(scores);
		}
	}

	for(int q = 0;q < array; q++)
	{
		sumscores = sumscores + arrays[q];
	}
// gives output
	averagescore = sumscores/array;

	cout<<"Total number of scores entered:		"<<array<<endl;
	cout<<"Sum of all scores entered:		"<<sumscores<<endl;
	cout<<"Average of all the scores entered:	"<<averagescore;
return 0;
}


//boolean functions
bool isDigits(char w[])
{
	int s = 0;
	bool choice;

	while(w[s] != '\0')
	{
		if(isdigit(w[s]))
		{
			choice = true;
		}
		else
		{
			choice = false;
			break;
		}
		s++;
	}
	return choice;
}

//152
bool value(char x[])
{
	int num;
	num = atoi(x);

	if(num > 105)
		return false;
	else
		return true;
}

bool notnegative(char y[])
{
	int value;
	value = atoi(y);

	if(value < 0)
		return false;
	else
		return true;
}