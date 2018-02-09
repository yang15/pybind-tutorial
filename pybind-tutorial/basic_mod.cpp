#include <pybind11/pybind11.h>
#include <pybind11/stl.h>
#include <iostream>

namespace py = pybind11;

void print_arg(int arg)
{
    std::cout << "Integer arg:" << arg << "\n";
}

void print_arg(std::string arg)
{
    std::cout << "String arg: " << arg << "\n";
}

long factorial(long n)
{
    if(n < 0)
        throw std::runtime_error("n must be >= 0");
    long fac = 1;
    for(long i = n; i > 0; i--)
        fac *= i;
    return fac;
}

double dot(const std::vector<double> & v1,
           const std::vector<double> & v2)
{
    if(v1.size() != v2.size())
        throw std::runtime_error("v1 and v2 must be of the same length");
    double d = 0.0;
    for(size_t i = 0; i < v1.size(); i++)
        d += v1[i] * v2[i];
    return d;
}

class MyClass
{
    private:
        int i_;
    public:
        MyClass(int i) : i_(i) { }
        ~MyClass() {std::cout << "distructing ...\n"; }
        
        void print(void)
        {
            std::cout << "i is " << i_ << "\n";
        }

        int get(void)
        {
            return i_;
        }

        int & get_ref(void)
        {
            return i_;
        }

};


PYBIND11_PLUGIN(basic_mod)
{
    py::module m("basic_mod", "Jing's basic pybind11 module");
    m.def("print_arg", static_cast<void(*)(int)>(&print_arg));
    m.def("print_arg", static_cast<void(*)(std::string)>(&print_arg));
    m.def("factorial", &factorial);
    m.def("dot", &dot);

    py::class_<MyClass>(m, "MyClass")
        .def(py::init<int>())
        .def("print", &MyClass::print)
        .def("get", &MyClass::get)
        .def("get_ref", &MyClass::get_ref, py::return_value_policy::reference)
    ;
    return m.ptr();

}
