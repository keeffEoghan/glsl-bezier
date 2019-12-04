// Code generated by `bezier-gen` - start:

float bezier(float cp0, float cp1, float cp2, float cp3, float cp4, float cp5, float t) {
    float p0 = mix(cp0, cp1, t);
    float p1 = mix(cp1, cp2, t);
    float p2 = mix(cp2, cp3, t);
    float p3 = mix(cp3, cp4, t);
    float p4 = mix(cp4, cp5, t);

    p0 = mix(p0, p1, t);
    p1 = mix(p1, p2, t);
    p2 = mix(p2, p3, t);
    p3 = mix(p3, p4, t);

    p0 = mix(p0, p1, t);
    p1 = mix(p1, p2, t);
    p2 = mix(p2, p3, t);

    p0 = mix(p0, p1, t);
    p1 = mix(p1, p2, t);

    return mix(p0, p1, t);
}

float bezier(float cp0, float cp1, float cp2, float cp3, float cp4, float cp5, float cp6, float t) {
    float p0 = mix(cp0, cp1, t);
    float p1 = mix(cp1, cp2, t);
    float p2 = mix(cp2, cp3, t);
    float p3 = mix(cp3, cp4, t);
    float p4 = mix(cp4, cp5, t);
    float p5 = mix(cp5, cp6, t);

    p0 = mix(p0, p1, t);
    p1 = mix(p1, p2, t);
    p2 = mix(p2, p3, t);
    p3 = mix(p3, p4, t);
    p4 = mix(p4, p5, t);

    p0 = mix(p0, p1, t);
    p1 = mix(p1, p2, t);
    p2 = mix(p2, p3, t);
    p3 = mix(p3, p4, t);

    p0 = mix(p0, p1, t);
    p1 = mix(p1, p2, t);
    p2 = mix(p2, p3, t);

    p0 = mix(p0, p1, t);
    p1 = mix(p1, p2, t);

    return mix(p0, p1, t);
}

float bezier(float cp0, float cp1, float cp2, float cp3, float cp4, float cp5, float cp6, float cp7, float t) {
    float p0 = mix(cp0, cp1, t);
    float p1 = mix(cp1, cp2, t);
    float p2 = mix(cp2, cp3, t);
    float p3 = mix(cp3, cp4, t);
    float p4 = mix(cp4, cp5, t);
    float p5 = mix(cp5, cp6, t);
    float p6 = mix(cp6, cp7, t);

    p0 = mix(p0, p1, t);
    p1 = mix(p1, p2, t);
    p2 = mix(p2, p3, t);
    p3 = mix(p3, p4, t);
    p4 = mix(p4, p5, t);
    p5 = mix(p5, p6, t);

    p0 = mix(p0, p1, t);
    p1 = mix(p1, p2, t);
    p2 = mix(p2, p3, t);
    p3 = mix(p3, p4, t);
    p4 = mix(p4, p5, t);

    p0 = mix(p0, p1, t);
    p1 = mix(p1, p2, t);
    p2 = mix(p2, p3, t);
    p3 = mix(p3, p4, t);

    p0 = mix(p0, p1, t);
    p1 = mix(p1, p2, t);
    p2 = mix(p2, p3, t);

    p0 = mix(p0, p1, t);
    p1 = mix(p1, p2, t);

    return mix(p0, p1, t);
}

#pragma glslify: export(bezier);

// Code generated by `bezier-gen` - end.