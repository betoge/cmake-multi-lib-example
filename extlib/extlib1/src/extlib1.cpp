#include <iostream>

#include "extlib1.h"
#include "sync/sync.hpp"

void extlib1::print()
{
    std::cout << "Hello ext-library 1!" << std::endl;

    sync s;
    s.print();
}
