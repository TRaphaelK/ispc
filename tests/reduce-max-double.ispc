export void f_fu(uniform float RET[], uniform float aFOO[], uniform float b) {
    double v = aFOO[programIndex];
    uniform float m = 42;
    if (v >= 3)
        m = reduce_max(-v);
    RET[programIndex] = m;
}

export void result(uniform float RET[]) { RET[programIndex] = (programCount == 1) ? 42 : -3; }
