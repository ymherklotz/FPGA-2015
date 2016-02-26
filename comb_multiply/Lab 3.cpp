#include <iostream>

unsigned multiply(unsigned op1, unsigned op2);

int main()
{
	unsigned int a = 31;
	unsigned int b = 3;

	unsigned int c = multiply(a, b);

	std::cout << "a: " << a << std::endl
			<< "b: " << b << std::endl
			<< "a*b: " << c << std::endl;
	return 0;
}

// a and b are 5-bit numbers
unsigned multiply(unsigned a, unsigned b)
{
  unsigned r=0;
  // for(unsigned i=0; i<5; i++){ // Loop over 5 bits of a
  //   r=r*2; // Shift r left by one bit
  //   if(a&0x10){ // Test whether a[4] (the MSB) is 1 using bit mask (10000)
  //     r=r+b;
  //   }
  //   a=a*2;  // Shift a left by one bit
  // }
  if (a & 0x10)
  {
  	r += b;
  }
  a *= 2;
  r *= 2;
  if (a & 0x10)
  {
  	r += b;
  }
  a *= 2;
  r *= 2;
  if (a & 0x10)
  {
  	r += b;
  }
  a *= 2;
  r *= 2;
  if (a & 0x10)
  {
  	r += b;
  }
  a *= 2;
  r *= 2;
  if (a & 0x10)
  {
  	r += b;
  }
  a *= 2;
  return r;
}
