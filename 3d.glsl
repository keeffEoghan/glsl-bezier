// Code generated by `bezier-gen` - start:

vec3 bezier(vec3 cp0, vec3 cp1, vec3 cp2, float t) {
    vec3 p0 = mix(cp0, cp1, t);
    vec3 p1 = mix(cp1, cp2, t);

    return mix(p0, p1, t);
}

vec3 bezier(vec3 cp0, vec3 cp1, vec3 cp2, vec3 cp3, float t) {
    vec3 p0 = mix(cp0, cp1, t);
    vec3 p1 = mix(cp1, cp2, t);
    vec3 p2 = mix(cp2, cp3, t);

    p0 = mix(p0, p1, t);
    p1 = mix(p1, p2, t);

    return mix(p0, p1, t);
}

vec3 bezier(vec3 cp0, vec3 cp1, vec3 cp2, vec3 cp3, vec3 cp4, float t) {
    vec3 p0 = mix(cp0, cp1, t);
    vec3 p1 = mix(cp1, cp2, t);
    vec3 p2 = mix(cp2, cp3, t);
    vec3 p3 = mix(cp3, cp4, t);

    p0 = mix(p0, p1, t);
    p1 = mix(p1, p2, t);
    p2 = mix(p2, p3, t);

    p0 = mix(p0, p1, t);
    p1 = mix(p1, p2, t);

    return mix(p0, p1, t);
}

#pragma glslify: export(bezier);

// Code generated by `bezier-gen` - end.
