#include <pybind11/pybind11.h>
#include <pybind11/numpy.h>
#include <iostream>

namespace py = pybind11;

double dot(py::array_t<double> a, py::array_t<double> b)
{
    py::buffer_info a_info = a.request();
    py::buffer_info b_info = b.request();

    if(a_info.ndim != 1)
        throw std::runtime_error("a is not a vector");
    if(b_info.ndim != 1)
        throw std::runtime_error("b is not a vector");
    if(a_info.shape[0] != b_info.shape[0])
        throw std::runtime_error("Lengths of a and b are not equal");

    double d = 0.0;
    size_t len = a_info.shape[0];

    const double * a_data = a.data();
    const double * b_data = b.data();

    size_t a_stride = a_info.strides[0] / sizeof(double);
    size_t b_stride = b_info.strides[0] / sizeof(double);

    for(size_t i = 0; i < len; i++)
        d += a_data[i*a_stride] * b_data[i*b_stride];

    return d;
}

PYBIND11_PLUGIN(numpy_mod)
{
    py::module m("numpy_mod", "Jing's Numpy module");
    m.def("dot", &dot);
    return m.ptr();
}
