// Code generated by `bezier-gen` - start:

vec2 bezier(vec2 cp0, vec2 cp1, vec2 cp2, vec2 cp3, vec2 cp4, vec2 cp5, float t) {
    vec2 p0 = mix(cp0, cp1, t);
    vec2 p1 = mix(cp1, cp2, t);
    vec2 p2 = mix(cp2, cp3, t);
    vec2 p3 = mix(cp3, cp4, t);
    vec2 p4 = mix(cp4, cp5, t);

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

vec2 bezier(vec2 cp0, vec2 cp1, vec2 cp2, vec2 cp3, vec2 cp4, vec2 cp5, vec2 cp6, float t) {
    vec2 p0 = mix(cp0, cp1, t);
    vec2 p1 = mix(cp1, cp2, t);
    vec2 p2 = mix(cp2, cp3, t);
    vec2 p3 = mix(cp3, cp4, t);
    vec2 p4 = mix(cp4, cp5, t);
    vec2 p5 = mix(cp5, cp6, t);

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

vec2 bezier(vec2 cp0, vec2 cp1, vec2 cp2, vec2 cp3, vec2 cp4, vec2 cp5, vec2 cp6, vec2 cp7, float t) {
    vec2 p0 = mix(cp0, cp1, t);
    vec2 p1 = mix(cp1, cp2, t);
    vec2 p2 = mix(cp2, cp3, t);
    vec2 p3 = mix(cp3, cp4, t);
    vec2 p4 = mix(cp4, cp5, t);
    vec2 p5 = mix(cp5, cp6, t);
    vec2 p6 = mix(cp6, cp7, t);

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
