#include <iostream>

#include "mes.hpp"
#include "load/load.h"
#include "sublib2/sublib2.h"

void mes::print()
{
    std::cout << "Hello sub-library mes!" << std::endl;

    sublib2 howdy;
    howdy.print();

    load hi;
    hi.print();
}
