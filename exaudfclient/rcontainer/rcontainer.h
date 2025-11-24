#ifndef RCONTAINER_H
#define RCONTAINER_H

#include "exaudflib/vm/swig_vm.h"
  

using namespace SWIGVMContainers;
using namespace std;

namespace SWIGVMContainers {

class RVMImpl;

class RVM: public SWIGVM {
    public:
        RVM(bool checkOnly);
        virtual ~RVM() {};
        virtual bool run();
        virtual void shutdown();
        virtual const char* singleCall(single_call_function_id_e fn, const ExecutionGraph::ScriptDTO& args);
    private:
        RVMImpl *m_impl;
};
}
#endif // RCONTAINER_H
