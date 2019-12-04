// Code generated by `bezier-gen` - start:

vec4 bezier(vec4 cp0, vec4 cp1, vec4 cp2, vec4 cp3, vec4 cp4, vec4 cp5, float t) {
    vec4 p0 = mix(cp0, cp1, t);
    vec4 p1 = mix(cp1, cp2, t);
    vec4 p2 = mix(cp2, cp3, t);
    vec4 p3 = mix(cp3, cp4, t);
    vec4 p4 = mix(cp4, cp5, t);

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

vec4 bezier(vec4 cp0, vec4 cp1, vec4 cp2, vec4 cp3, vec4 cp4, vec4 cp5, vec4 cp6, float t) {
    vec4 p0 = mix(cp0, cp1, t);
    vec4 p1 = mix(cp1, cp2, t);
    vec4 p2 = mix(cp2, cp3, t);
    vec4 p3 = mix(cp3, cp4, t);
    vec4 p4 = mix(cp4, cp5, t);
    vec4 p5 = mix(cp5, cp6, t);

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

vec4 bezier(vec4 cp0, vec4 cp1, vec4 cp2, vec4 cp3, vec4 cp4, vec4 cp5, vec4 cp6, vec4 cp7, float t) {
    vec4 p0 = mix(cp0, cp1, t);
    vec4 p1 = mix(cp1, cp2, t);
    vec4 p2 = mix(cp2, cp3, t);
    vec4 p3 = mix(cp3, cp4, t);
    vec4 p4 = mix(cp4, cp5, t);
    vec4 p5 = mix(cp5, cp6, t);
    vec4 p6 = mix(cp6, cp7, t);

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
