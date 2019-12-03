# `bezier-gen`

Bézier curve functions and Node code generator - creates functions with any `mix`-able type/dimension, and any number of control points, for GLSL-like languages.

Made with GLSL in mind, but similar languages may be generated if a suitable `mix` function and behaviour is also provided.

## Usage

### Bézier Functions

This module produces a series of GLSL bézier functions, for each of the given numbers of orders `O`, and overloaded for each of the given types `T`, named `name`, with the signature:
```glsl
T name(T cp0, T cp1, ..., T cp<O-1>, float t);
```

The bézier functions may be called as follows (using functions in the pre-generated `*.glsl` files for example):
```glsl
// 2D 3rd-order bézier function from `bezier-gen/1d.glsl`
float interpolated = bezier(0.0, 1.0, 2.0, 0.5); // 1.0

// 2D 3rd-order bézier function from `bezier-gen/2d.glsl`
vec2 interpolated = bezier(vec2(0.0), vec2(1.0), vec2(2.0), 0.5); // vec2(1.0)
```

The implementations make use of a per-element `mix` function - this assumes GLSL's `mix`, but the name of a different externally-defined function may be passed as the final argument to the generator.

### Generating

You can use the pre-generated `*.glsl` files, or generate your own bézier functions using the generator files:

Using [`bin`](./bin) for command-line:
```bash
# These are equivalent:

# Long form:
bezier-gen/bin --orders 3 4 5 --types float vec2 vec3 vec4 --name bezier --file ./bezier.glsl

# Short form:
bezier-gen/bin -o 3 4 5 -t float vec2 vec3 vec4 -n bezier -f ./bezier.glsl

# Defaults (outputs to console if no `file` file is given):
bezier-gen/bin
```

Using [`index.js`](./index.js) for Node or JavaScript:
```javascript
import { makeBezier, makeBeziers } from 'bezier-gen';

makeBezier(3, 'vec2', 'myBezier') ===
`// Code generated by \`bezier-gen\` - start:

vec2 myBezier(vec2 cp0, vec2 cp1, vec2 cp2, float t) {
    vec2 p0 = mix(cp0, cp1, t);
    vec2 p1 = mix(cp1, cp2, t);

    return mix(p0, p1, t);
}

#pragma glslify: export(myBezier);

// Code generated by \`bezier-gen\` - end.
`

makeBeziers([3, 4], ['float', 'vec2'], 'moreBezier') ===
`// Code generated by \`bezier-gen\` - start:

float moreBezier(float cp0, float cp1, float cp2, float t) {
    float p0 = mix(cp0, cp1, t);
    float p1 = mix(cp1, cp2, t);

    return mix(p0, p1, t);
}

float moreBezier(float cp0, float cp1, float cp2, float cp3, float t) {
    float p0 = mix(cp0, cp1, t);
    float p1 = mix(cp1, cp2, t);
    float p2 = mix(cp2, cp3, t);

    p0 = mix(p0, p1, t);
    p1 = mix(p1, p2, t);

    return mix(p0, p1, t);
}


vec2 moreBezier(vec2 cp0, vec2 cp1, vec2 cp2, float t) {
    vec2 p0 = mix(cp0, cp1, t);
    vec2 p1 = mix(cp1, cp2, t);

    return mix(p0, p1, t);
}

vec2 moreBezier(vec2 cp0, vec2 cp1, vec2 cp2, vec2 cp3, float t) {
    vec2 p0 = mix(cp0, cp1, t);
    vec2 p1 = mix(cp1, cp2, t);
    vec2 p2 = mix(cp2, cp3, t);

    p0 = mix(p0, p1, t);
    p1 = mix(p1, p2, t);

    return mix(p0, p1, t);
}

#pragma glslify: export(moreBezier);

// Code generated by \`bezier-gen\` - end.
`
```

The options for the top-level generators are:
- `orders` (JS), or `--orders`/`-o` (CLI): Array of orders of each bezier curve function.
- `types` (JS), or `--types`/`-t` (CLI): The data type (dimension) of each bezier curve function; may be any GLSL `mix`-able type (`float`, `vec2`, `vec3`, `vec4`).
- `name` (JS), or `--name`/`-n` (CLI): The name to use for the (overloaded) bezier curve function/s.
- `mix` (JS), or `--mix`/`-m` (CLI): The name to use for the per-element interpolation function.
- `pre` (JS), or `--pre` (CLI): Any prefix text to include.
- `suf` (JS), or `--suf` (CLI): Any suffix text to include.
- `file` (JS), or `--file`/`-f` (CLI): The output file path for the generated code.

## See Also

- [`bezier`](https://github.com/hughsk/bezier).
- [`glsl-bezier-curve`](https://github.com/yiwenl/glsl-bezier-curve).
- [_Animated Bézier Curves_](https://www.jasondavies.com/animated-bezier/).
- [This interactive graph](https://www.desmos.com/calculator/cahqdxeshd).
- [This Wikipedia article](https://en.wikipedia.org/wiki/B%C3%A9zier_curve#Constructing_B.C3.A9zier_curves).
