#include "sublibrary1/sublib1/sublib1.h"
#include "sublibrary1/mes/mes.hpp"
#include "sublibrary1/load/load.h"
#include "sublib2/sublib2.h"
#include "sublib3/sublib3.h"
#include "extlib1/extlib1.h"
#include "extlib1/sync/sync.hpp"

int main(int argc, char *argv[])
{
    sublib1 hi;
    hi.print();

    sublib2 howdy;
    howdy.print();

    sublib3 hello;
    hello.print();

    mes m;
    m.print();

    load l;
    l.print();

    extlib1 e;
    e.print();

    sync s;
    s.print();

    return 0;
}
