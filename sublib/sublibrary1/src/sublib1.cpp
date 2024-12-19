#include <iostream>

#include "sublib1/sublib1.h"
#include "sublib2/sublib2.h"
#include "sublib3/sublib3.h"
#include "mes/mes.hpp"
#include "load/load.h"

void sublib1::print()
{
    std::cout << "Hello sub-library 1!" << std::endl;

    sublib2 howdy;
    howdy.print();

    sublib3 hello;
    hello.print();

    mes m;
    m.print();

    load l;
    l.print();
}
