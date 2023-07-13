# mach-core-example-assets: assets used in mach-core examples

This repository contains a few binary assets used in mach-core examples; depended on via the Zig package manager.

## Getting started

### Adding dependency

Create a `build.zig.zon` file in your project (replace `$LATEST_COMMIT` with the latest commit hash):

```
.{
    .name = "mypkg",
    .version = "0.1.0",
    .dependencies = .{
        .mach_ggml = .{
            .url = "https://github.com/hexops/mach-core-example-assets/archive/$LATEST_COMMIT.tar.gz",
        },
    },
}
```

Run `zig build` in your project, and the compiler instruct you to add a `.hash = "..."` field next to `.url`.

Then use the dependency in your `build.zig`:

```zig
...
pub fn build(b: *Build) void {
    ...
    exe.addModule("mach-core-example-assets", b.dependency("font_assets", .{
        .target = target,
        .optimize = optimize,
    }).module("mach-core-example-assets"));
}
```

You may then `const example_assets = @import("mach-core-example-assets");` and refer to the embedded files exposed in `main.zig`.

### Usage

```zig
const example_assets = @import("mach-core-example-assets");

// access the embedded file byte arrays, e.g.
// example_assets.fira_sans_regular_ttf
```

## Join the community

Join the Mach community [on Discord](https://discord.gg/XNG3NZgCqp) to discuss this project, ask questions, get help, etc.

## Issues

Issues are tracked in the [main Mach repository](https://github.com/hexops/mach/issues?q=is%3Aissue+is%3Aopen+label%core).
