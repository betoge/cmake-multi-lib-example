#include <iostream>

#include "sublib2/sublib2.h"
#include "sublib3/sublib3.h"

void sublib2::print()
{
    std::cout << "Hello sub-library 2!" << std::endl;

    sublib3 hello;
    hello.print();
}
