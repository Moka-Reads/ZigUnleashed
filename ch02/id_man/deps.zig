const std = @import("std");
const Pkg = std.build.Pkg;
const FileSource = std.build.FileSource;

pub const pkgs = struct {
    pub const nanoid = Pkg{
        .name = "nanoid",
        .source = FileSource{
            .path = ".gyro/nanoid-SasLuca-1.0.4-astrolabe.pm/pkg/src/nanoid.zig",
        },
    };

    pub fn addAllTo(artifact: *std.build.LibExeObjStep) void {
        artifact.addPackage(pkgs.nanoid);
    }
};
