#include <iostream>
#include <stdlib.h>
#include <vector>
#include <string>
#include <functional>
using namespace std;

bool siguiente = false;

auto func = [&](int &a, int &b, bool &siguiente, int &res, bool &encontrado)mutable
{
	res = a*b;
	string s = std::to_string(a);
	string s2 = std::to_string(res);

	for (int i = 0; i < s.length(); ++i)
	{
		if ((s2.find(s[i]) != std::string::npos) && (s2.length() == s.length()))
		    siguiente = true;

		else
		{
			encontrado = true;
			siguiente = false;
			break;
		}

	}//Cierre de for

};  //Cierre de función lambda

int main(int argc, const char * argv[])
{
	/*
	//Ejemplos de funcion lambda sencillos
	int a = 0;
	auto func = []() { cout << "Hello world" <<endl; };
	func(); // now call the function

	[](int a) { cout << a << endl; }(8); //Lambda con parámetro constante
	*/

	int a, b;
	int res=0;
	a = 1;
	b = 2;
	bool encontrado = true;
	while (encontrado)
	{
		funcion:
		func(a,b, siguiente, res, encontrado); //llamada funcion lambda
		
		if (siguiente)
		{
			if (b == 5)
				encontrado = false;
			else
			{
				++b;
				siguiente = false;
				goto funcion;
			}
		}
		else
		{
			b = 2;
			++a;
		}
	}

	cout << "El n\243mero es: " << a << endl;

	system("Pause");
	return 0;

}//Cierre de main