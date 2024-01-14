pub const __builtin_bswap16 = @import("std").zig.c_builtins.__builtin_bswap16;
pub const __builtin_bswap32 = @import("std").zig.c_builtins.__builtin_bswap32;
pub const __builtin_bswap64 = @import("std").zig.c_builtins.__builtin_bswap64;
pub const __builtin_signbit = @import("std").zig.c_builtins.__builtin_signbit;
pub const __builtin_signbitf = @import("std").zig.c_builtins.__builtin_signbitf;
pub const __builtin_popcount = @import("std").zig.c_builtins.__builtin_popcount;
pub const __builtin_ctz = @import("std").zig.c_builtins.__builtin_ctz;
pub const __builtin_clz = @import("std").zig.c_builtins.__builtin_clz;
pub const __builtin_sqrt = @import("std").zig.c_builtins.__builtin_sqrt;
pub const __builtin_sqrtf = @import("std").zig.c_builtins.__builtin_sqrtf;
pub const __builtin_sin = @import("std").zig.c_builtins.__builtin_sin;
pub const __builtin_sinf = @import("std").zig.c_builtins.__builtin_sinf;
pub const __builtin_cos = @import("std").zig.c_builtins.__builtin_cos;
pub const __builtin_cosf = @import("std").zig.c_builtins.__builtin_cosf;
pub const __builtin_exp = @import("std").zig.c_builtins.__builtin_exp;
pub const __builtin_expf = @import("std").zig.c_builtins.__builtin_expf;
pub const __builtin_exp2 = @import("std").zig.c_builtins.__builtin_exp2;
pub const __builtin_exp2f = @import("std").zig.c_builtins.__builtin_exp2f;
pub const __builtin_log = @import("std").zig.c_builtins.__builtin_log;
pub const __builtin_logf = @import("std").zig.c_builtins.__builtin_logf;
pub const __builtin_log2 = @import("std").zig.c_builtins.__builtin_log2;
pub const __builtin_log2f = @import("std").zig.c_builtins.__builtin_log2f;
pub const __builtin_log10 = @import("std").zig.c_builtins.__builtin_log10;
pub const __builtin_log10f = @import("std").zig.c_builtins.__builtin_log10f;
pub const __builtin_abs = @import("std").zig.c_builtins.__builtin_abs;
pub const __builtin_fabs = @import("std").zig.c_builtins.__builtin_fabs;
pub const __builtin_fabsf = @import("std").zig.c_builtins.__builtin_fabsf;
pub const __builtin_floor = @import("std").zig.c_builtins.__builtin_floor;
pub const __builtin_floorf = @import("std").zig.c_builtins.__builtin_floorf;
pub const __builtin_ceil = @import("std").zig.c_builtins.__builtin_ceil;
pub const __builtin_ceilf = @import("std").zig.c_builtins.__builtin_ceilf;
pub const __builtin_trunc = @import("std").zig.c_builtins.__builtin_trunc;
pub const __builtin_truncf = @import("std").zig.c_builtins.__builtin_truncf;
pub const __builtin_round = @import("std").zig.c_builtins.__builtin_round;
pub const __builtin_roundf = @import("std").zig.c_builtins.__builtin_roundf;
pub const __builtin_strlen = @import("std").zig.c_builtins.__builtin_strlen;
pub const __builtin_strcmp = @import("std").zig.c_builtins.__builtin_strcmp;
pub const __builtin_object_size = @import("std").zig.c_builtins.__builtin_object_size;
pub const __builtin___memset_chk = @import("std").zig.c_builtins.__builtin___memset_chk;
pub const __builtin_memset = @import("std").zig.c_builtins.__builtin_memset;
pub const __builtin___memcpy_chk = @import("std").zig.c_builtins.__builtin___memcpy_chk;
pub const __builtin_memcpy = @import("std").zig.c_builtins.__builtin_memcpy;
pub const __builtin_expect = @import("std").zig.c_builtins.__builtin_expect;
pub const __builtin_nanf = @import("std").zig.c_builtins.__builtin_nanf;
pub const __builtin_huge_valf = @import("std").zig.c_builtins.__builtin_huge_valf;
pub const __builtin_inff = @import("std").zig.c_builtins.__builtin_inff;
pub const __builtin_isnan = @import("std").zig.c_builtins.__builtin_isnan;
pub const __builtin_isinf = @import("std").zig.c_builtins.__builtin_isinf;
pub const __builtin_isinf_sign = @import("std").zig.c_builtins.__builtin_isinf_sign;
pub const __has_builtin = @import("std").zig.c_builtins.__has_builtin;
pub const __builtin_assume = @import("std").zig.c_builtins.__builtin_assume;
pub const __builtin_unreachable = @import("std").zig.c_builtins.__builtin_unreachable;
pub const __builtin_constant_p = @import("std").zig.c_builtins.__builtin_constant_p;
pub const __builtin_mul_overflow = @import("std").zig.c_builtins.__builtin_mul_overflow;
pub const struct___va_list_tag = extern struct {
    gp_offset: c_uint,
    fp_offset: c_uint,
    overflow_arg_area: ?*anyopaque,
    reg_save_area: ?*anyopaque,
};
pub const __builtin_va_list = [1]struct___va_list_tag;
pub const __gnuc_va_list = __builtin_va_list;
pub const __u_char = u8;
pub const __u_short = c_ushort;
pub const __u_int = c_uint;
pub const __u_long = c_ulong;
pub const __int8_t = i8;
pub const __uint8_t = u8;
pub const __int16_t = c_short;
pub const __uint16_t = c_ushort;
pub const __int32_t = c_int;
pub const __uint32_t = c_uint;
pub const __int64_t = c_long;
pub const __uint64_t = c_ulong;
pub const __int_least8_t = __int8_t;
pub const __uint_least8_t = __uint8_t;
pub const __int_least16_t = __int16_t;
pub const __uint_least16_t = __uint16_t;
pub const __int_least32_t = __int32_t;
pub const __uint_least32_t = __uint32_t;
pub const __int_least64_t = __int64_t;
pub const __uint_least64_t = __uint64_t;
pub const __quad_t = c_long;
pub const __u_quad_t = c_ulong;
pub const __intmax_t = c_long;
pub const __uintmax_t = c_ulong;
pub const __dev_t = c_ulong;
pub const __uid_t = c_uint;
pub const __gid_t = c_uint;
pub const __ino_t = c_ulong;
pub const __ino64_t = c_ulong;
pub const __mode_t = c_uint;
pub const __nlink_t = c_ulong;
pub const __off_t = c_long;
pub const __off64_t = c_long;
pub const __pid_t = c_int;
pub const __fsid_t = extern struct {
    __val: [2]c_int,
};
pub const __clock_t = c_long;
pub const __rlim_t = c_ulong;
pub const __rlim64_t = c_ulong;
pub const __id_t = c_uint;
pub const __time_t = c_long;
pub const __useconds_t = c_uint;
pub const __suseconds_t = c_long;
pub const __suseconds64_t = c_long;
pub const __daddr_t = c_int;
pub const __key_t = c_int;
pub const __clockid_t = c_int;
pub const __timer_t = ?*anyopaque;
pub const __blksize_t = c_long;
pub const __blkcnt_t = c_long;
pub const __blkcnt64_t = c_long;
pub const __fsblkcnt_t = c_ulong;
pub const __fsblkcnt64_t = c_ulong;
pub const __fsfilcnt_t = c_ulong;
pub const __fsfilcnt64_t = c_ulong;
pub const __fsword_t = c_long;
pub const __ssize_t = c_long;
pub const __syscall_slong_t = c_long;
pub const __syscall_ulong_t = c_ulong;
pub const __loff_t = __off64_t;
pub const __caddr_t = [*c]u8;
pub const __intptr_t = c_long;
pub const __socklen_t = c_uint;
pub const __sig_atomic_t = c_int;
const union_unnamed_1 = extern union {
    __wch: c_uint,
    __wchb: [4]u8,
};
pub const __mbstate_t = extern struct {
    __count: c_int,
    __value: union_unnamed_1,
};
pub const struct__G_fpos_t = extern struct {
    __pos: __off_t,
    __state: __mbstate_t,
};
pub const __fpos_t = struct__G_fpos_t;
pub const struct__G_fpos64_t = extern struct {
    __pos: __off64_t,
    __state: __mbstate_t,
};
pub const __fpos64_t = struct__G_fpos64_t;
pub const struct__IO_marker = opaque {};
pub const _IO_lock_t = anyopaque;
pub const struct__IO_codecvt = opaque {};
pub const struct__IO_wide_data = opaque {};
pub const struct__IO_FILE = extern struct {
    _flags: c_int,
    _IO_read_ptr: [*c]u8,
    _IO_read_end: [*c]u8,
    _IO_read_base: [*c]u8,
    _IO_write_base: [*c]u8,
    _IO_write_ptr: [*c]u8,
    _IO_write_end: [*c]u8,
    _IO_buf_base: [*c]u8,
    _IO_buf_end: [*c]u8,
    _IO_save_base: [*c]u8,
    _IO_backup_base: [*c]u8,
    _IO_save_end: [*c]u8,
    _markers: ?*struct__IO_marker,
    _chain: [*c]struct__IO_FILE,
    _fileno: c_int,
    _flags2: c_int,
    _old_offset: __off_t,
    _cur_column: c_ushort,
    _vtable_offset: i8,
    _shortbuf: [1]u8,
    _lock: ?*_IO_lock_t,
    _offset: __off64_t,
    _codecvt: ?*struct__IO_codecvt,
    _wide_data: ?*struct__IO_wide_data,
    _freeres_list: [*c]struct__IO_FILE,
    _freeres_buf: ?*anyopaque,
    __pad5: usize,
    _mode: c_int,
    _unused2: [20]u8,
};
pub const __FILE = struct__IO_FILE;
pub const FILE = struct__IO_FILE;
pub const va_list = __gnuc_va_list;
pub const off_t = __off_t;
pub const fpos_t = __fpos_t;
pub extern var stdin: [*c]FILE;
pub extern var stdout: [*c]FILE;
pub extern var stderr: [*c]FILE;
pub extern fn remove(__filename: [*c]const u8) c_int;
pub extern fn rename(__old: [*c]const u8, __new: [*c]const u8) c_int;
pub extern fn renameat(__oldfd: c_int, __old: [*c]const u8, __newfd: c_int, __new: [*c]const u8) c_int;
pub extern fn fclose(__stream: [*c]FILE) c_int;
pub extern fn tmpfile() [*c]FILE;
pub extern fn tmpnam([*c]u8) [*c]u8;
pub extern fn tmpnam_r(__s: [*c]u8) [*c]u8;
pub extern fn tempnam(__dir: [*c]const u8, __pfx: [*c]const u8) [*c]u8;
pub extern fn fflush(__stream: [*c]FILE) c_int;
pub extern fn fflush_unlocked(__stream: [*c]FILE) c_int;
pub extern fn fopen(__filename: [*c]const u8, __modes: [*c]const u8) [*c]FILE;
pub extern fn freopen(noalias __filename: [*c]const u8, noalias __modes: [*c]const u8, noalias __stream: [*c]FILE) [*c]FILE;
pub extern fn fdopen(__fd: c_int, __modes: [*c]const u8) [*c]FILE;
pub extern fn fmemopen(__s: ?*anyopaque, __len: usize, __modes: [*c]const u8) [*c]FILE;
pub extern fn open_memstream(__bufloc: [*c][*c]u8, __sizeloc: [*c]usize) [*c]FILE;
pub extern fn setbuf(noalias __stream: [*c]FILE, noalias __buf: [*c]u8) void;
pub extern fn setvbuf(noalias __stream: [*c]FILE, noalias __buf: [*c]u8, __modes: c_int, __n: usize) c_int;
pub extern fn setbuffer(noalias __stream: [*c]FILE, noalias __buf: [*c]u8, __size: usize) void;
pub extern fn setlinebuf(__stream: [*c]FILE) void;
pub extern fn fprintf(__stream: [*c]FILE, __format: [*c]const u8, ...) c_int;
pub extern fn printf(__format: [*c]const u8, ...) c_int;
pub extern fn sprintf(__s: [*c]u8, __format: [*c]const u8, ...) c_int;
pub extern fn vfprintf(__s: [*c]FILE, __format: [*c]const u8, __arg: [*c]struct___va_list_tag) c_int;
pub extern fn vprintf(__format: [*c]const u8, __arg: [*c]struct___va_list_tag) c_int;
pub extern fn vsprintf(__s: [*c]u8, __format: [*c]const u8, __arg: [*c]struct___va_list_tag) c_int;
pub extern fn snprintf(__s: [*c]u8, __maxlen: c_ulong, __format: [*c]const u8, ...) c_int;
pub extern fn vsnprintf(__s: [*c]u8, __maxlen: c_ulong, __format: [*c]const u8, __arg: [*c]struct___va_list_tag) c_int;
pub extern fn vdprintf(__fd: c_int, noalias __fmt: [*c]const u8, __arg: [*c]struct___va_list_tag) c_int;
pub extern fn dprintf(__fd: c_int, noalias __fmt: [*c]const u8, ...) c_int;
pub extern fn fscanf(noalias __stream: [*c]FILE, noalias __format: [*c]const u8, ...) c_int;
pub extern fn scanf(noalias __format: [*c]const u8, ...) c_int;
pub extern fn sscanf(noalias __s: [*c]const u8, noalias __format: [*c]const u8, ...) c_int;
pub const _Float32 = f32;
pub const _Float64 = f64;
pub const _Float32x = f64;
pub const _Float64x = c_longdouble;
pub extern fn vfscanf(noalias __s: [*c]FILE, noalias __format: [*c]const u8, __arg: [*c]struct___va_list_tag) c_int;
pub extern fn vscanf(noalias __format: [*c]const u8, __arg: [*c]struct___va_list_tag) c_int;
pub extern fn vsscanf(noalias __s: [*c]const u8, noalias __format: [*c]const u8, __arg: [*c]struct___va_list_tag) c_int;
pub extern fn fgetc(__stream: [*c]FILE) c_int;
pub extern fn getc(__stream: [*c]FILE) c_int;
pub extern fn getchar() c_int;
pub extern fn getc_unlocked(__stream: [*c]FILE) c_int;
pub extern fn getchar_unlocked() c_int;
pub extern fn fgetc_unlocked(__stream: [*c]FILE) c_int;
pub extern fn fputc(__c: c_int, __stream: [*c]FILE) c_int;
pub extern fn putc(__c: c_int, __stream: [*c]FILE) c_int;
pub extern fn putchar(__c: c_int) c_int;
pub extern fn fputc_unlocked(__c: c_int, __stream: [*c]FILE) c_int;
pub extern fn putc_unlocked(__c: c_int, __stream: [*c]FILE) c_int;
pub extern fn putchar_unlocked(__c: c_int) c_int;
pub extern fn getw(__stream: [*c]FILE) c_int;
pub extern fn putw(__w: c_int, __stream: [*c]FILE) c_int;
pub extern fn fgets(noalias __s: [*c]u8, __n: c_int, noalias __stream: [*c]FILE) [*c]u8;
pub extern fn __getdelim(noalias __lineptr: [*c][*c]u8, noalias __n: [*c]usize, __delimiter: c_int, noalias __stream: [*c]FILE) __ssize_t;
pub extern fn getdelim(noalias __lineptr: [*c][*c]u8, noalias __n: [*c]usize, __delimiter: c_int, noalias __stream: [*c]FILE) __ssize_t;
pub extern fn getline(noalias __lineptr: [*c][*c]u8, noalias __n: [*c]usize, noalias __stream: [*c]FILE) __ssize_t;
pub extern fn fputs(noalias __s: [*c]const u8, noalias __stream: [*c]FILE) c_int;
pub extern fn puts(__s: [*c]const u8) c_int;
pub extern fn ungetc(__c: c_int, __stream: [*c]FILE) c_int;
pub extern fn fread(__ptr: ?*anyopaque, __size: c_ulong, __n: c_ulong, __stream: [*c]FILE) c_ulong;
pub extern fn fwrite(__ptr: ?*const anyopaque, __size: c_ulong, __n: c_ulong, __s: [*c]FILE) c_ulong;
pub extern fn fread_unlocked(noalias __ptr: ?*anyopaque, __size: usize, __n: usize, noalias __stream: [*c]FILE) usize;
pub extern fn fwrite_unlocked(noalias __ptr: ?*const anyopaque, __size: usize, __n: usize, noalias __stream: [*c]FILE) usize;
pub extern fn fseek(__stream: [*c]FILE, __off: c_long, __whence: c_int) c_int;
pub extern fn ftell(__stream: [*c]FILE) c_long;
pub extern fn rewind(__stream: [*c]FILE) void;
pub extern fn fseeko(__stream: [*c]FILE, __off: __off_t, __whence: c_int) c_int;
pub extern fn ftello(__stream: [*c]FILE) __off_t;
pub extern fn fgetpos(noalias __stream: [*c]FILE, noalias __pos: [*c]fpos_t) c_int;
pub extern fn fsetpos(__stream: [*c]FILE, __pos: [*c]const fpos_t) c_int;
pub extern fn clearerr(__stream: [*c]FILE) void;
pub extern fn feof(__stream: [*c]FILE) c_int;
pub extern fn ferror(__stream: [*c]FILE) c_int;
pub extern fn clearerr_unlocked(__stream: [*c]FILE) void;
pub extern fn feof_unlocked(__stream: [*c]FILE) c_int;
pub extern fn ferror_unlocked(__stream: [*c]FILE) c_int;
pub extern fn perror(__s: [*c]const u8) void;
pub extern fn fileno(__stream: [*c]FILE) c_int;
pub extern fn fileno_unlocked(__stream: [*c]FILE) c_int;
pub extern fn pclose(__stream: [*c]FILE) c_int;
pub extern fn popen(__command: [*c]const u8, __modes: [*c]const u8) [*c]FILE;
pub extern fn ctermid(__s: [*c]u8) [*c]u8;
pub extern fn flockfile(__stream: [*c]FILE) void;
pub extern fn ftrylockfile(__stream: [*c]FILE) c_int;
pub extern fn funlockfile(__stream: [*c]FILE) void;
pub extern fn __uflow([*c]FILE) c_int;
pub extern fn __overflow([*c]FILE, c_int) c_int;
pub const wchar_t = c_int;
pub const div_t = extern struct {
    quot: c_int,
    rem: c_int,
};
pub const ldiv_t = extern struct {
    quot: c_long,
    rem: c_long,
};
pub const lldiv_t = extern struct {
    quot: c_longlong,
    rem: c_longlong,
};
pub extern fn __ctype_get_mb_cur_max() usize;
pub extern fn atof(__nptr: [*c]const u8) f64;
pub extern fn atoi(__nptr: [*c]const u8) c_int;
pub extern fn atol(__nptr: [*c]const u8) c_long;
pub extern fn atoll(__nptr: [*c]const u8) c_longlong;
pub extern fn strtod(__nptr: [*c]const u8, __endptr: [*c][*c]u8) f64;
pub extern fn strtof(__nptr: [*c]const u8, __endptr: [*c][*c]u8) f32;
pub extern fn strtold(__nptr: [*c]const u8, __endptr: [*c][*c]u8) c_longdouble;
pub extern fn strtol(__nptr: [*c]const u8, __endptr: [*c][*c]u8, __base: c_int) c_long;
pub extern fn strtoul(__nptr: [*c]const u8, __endptr: [*c][*c]u8, __base: c_int) c_ulong;
pub extern fn strtoq(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8, __base: c_int) c_longlong;
pub extern fn strtouq(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8, __base: c_int) c_ulonglong;
pub extern fn strtoll(__nptr: [*c]const u8, __endptr: [*c][*c]u8, __base: c_int) c_longlong;
pub extern fn strtoull(__nptr: [*c]const u8, __endptr: [*c][*c]u8, __base: c_int) c_ulonglong;
pub extern fn l64a(__n: c_long) [*c]u8;
pub extern fn a64l(__s: [*c]const u8) c_long;
pub const u_char = __u_char;
pub const u_short = __u_short;
pub const u_int = __u_int;
pub const u_long = __u_long;
pub const quad_t = __quad_t;
pub const u_quad_t = __u_quad_t;
pub const fsid_t = __fsid_t;
pub const loff_t = __loff_t;
pub const ino_t = __ino_t;
pub const dev_t = __dev_t;
pub const gid_t = __gid_t;
pub const mode_t = __mode_t;
pub const nlink_t = __nlink_t;
pub const uid_t = __uid_t;
pub const pid_t = __pid_t;
pub const id_t = __id_t;
pub const daddr_t = __daddr_t;
pub const caddr_t = __caddr_t;
pub const key_t = __key_t;
pub const clock_t = __clock_t;
pub const clockid_t = __clockid_t;
pub const time_t = __time_t;
pub const timer_t = __timer_t;
pub const ulong = c_ulong;
pub const ushort = c_ushort;
pub const uint = c_uint;
pub const u_int8_t = __uint8_t;
pub const u_int16_t = __uint16_t;
pub const u_int32_t = __uint32_t;
pub const u_int64_t = __uint64_t;
pub const register_t = c_long;
pub fn __bswap_16(arg___bsx: __uint16_t) callconv(.C) __uint16_t {
    var __bsx = arg___bsx;
    return @as(__uint16_t, @bitCast(@as(c_short, @truncate(((@as(c_int, @bitCast(@as(c_uint, __bsx))) >> @intCast(8)) & @as(c_int, 255)) | ((@as(c_int, @bitCast(@as(c_uint, __bsx))) & @as(c_int, 255)) << @intCast(8))))));
}
pub fn __bswap_32(arg___bsx: __uint32_t) callconv(.C) __uint32_t {
    var __bsx = arg___bsx;
    return ((((__bsx & @as(c_uint, 4278190080)) >> @intCast(24)) | ((__bsx & @as(c_uint, 16711680)) >> @intCast(8))) | ((__bsx & @as(c_uint, 65280)) << @intCast(8))) | ((__bsx & @as(c_uint, 255)) << @intCast(24));
}
pub fn __bswap_64(arg___bsx: __uint64_t) callconv(.C) __uint64_t {
    var __bsx = arg___bsx;
    return @as(__uint64_t, @bitCast(@as(c_ulong, @truncate(((((((((@as(c_ulonglong, @bitCast(@as(c_ulonglong, __bsx))) & @as(c_ulonglong, 18374686479671623680)) >> @intCast(56)) | ((@as(c_ulonglong, @bitCast(@as(c_ulonglong, __bsx))) & @as(c_ulonglong, 71776119061217280)) >> @intCast(40))) | ((@as(c_ulonglong, @bitCast(@as(c_ulonglong, __bsx))) & @as(c_ulonglong, 280375465082880)) >> @intCast(24))) | ((@as(c_ulonglong, @bitCast(@as(c_ulonglong, __bsx))) & @as(c_ulonglong, 1095216660480)) >> @intCast(8))) | ((@as(c_ulonglong, @bitCast(@as(c_ulonglong, __bsx))) & @as(c_ulonglong, 4278190080)) << @intCast(8))) | ((@as(c_ulonglong, @bitCast(@as(c_ulonglong, __bsx))) & @as(c_ulonglong, 16711680)) << @intCast(24))) | ((@as(c_ulonglong, @bitCast(@as(c_ulonglong, __bsx))) & @as(c_ulonglong, 65280)) << @intCast(40))) | ((@as(c_ulonglong, @bitCast(@as(c_ulonglong, __bsx))) & @as(c_ulonglong, 255)) << @intCast(56))))));
}
pub fn __uint16_identity(arg___x: __uint16_t) callconv(.C) __uint16_t {
    var __x = arg___x;
    return __x;
}
pub fn __uint32_identity(arg___x: __uint32_t) callconv(.C) __uint32_t {
    var __x = arg___x;
    return __x;
}
pub fn __uint64_identity(arg___x: __uint64_t) callconv(.C) __uint64_t {
    var __x = arg___x;
    return __x;
}
pub const __sigset_t = extern struct {
    __val: [16]c_ulong,
};
pub const sigset_t = __sigset_t;
pub const struct_timeval = extern struct {
    tv_sec: __time_t,
    tv_usec: __suseconds_t,
};
pub const struct_timespec = extern struct {
    tv_sec: __time_t,
    tv_nsec: __syscall_slong_t,
};
pub const suseconds_t = __suseconds_t;
pub const __fd_mask = c_long;
pub const fd_set = extern struct {
    __fds_bits: [16]__fd_mask,
};
pub const fd_mask = __fd_mask;
pub extern fn select(__nfds: c_int, noalias __readfds: [*c]fd_set, noalias __writefds: [*c]fd_set, noalias __exceptfds: [*c]fd_set, noalias __timeout: [*c]struct_timeval) c_int;
pub extern fn pselect(__nfds: c_int, noalias __readfds: [*c]fd_set, noalias __writefds: [*c]fd_set, noalias __exceptfds: [*c]fd_set, noalias __timeout: [*c]const struct_timespec, noalias __sigmask: [*c]const __sigset_t) c_int;
pub const blksize_t = __blksize_t;
pub const blkcnt_t = __blkcnt_t;
pub const fsblkcnt_t = __fsblkcnt_t;
pub const fsfilcnt_t = __fsfilcnt_t;
const struct_unnamed_2 = extern struct {
    __low: c_uint,
    __high: c_uint,
};
pub const __atomic_wide_counter = extern union {
    __value64: c_ulonglong,
    __value32: struct_unnamed_2,
};
pub const struct___pthread_internal_list = extern struct {
    __prev: [*c]struct___pthread_internal_list,
    __next: [*c]struct___pthread_internal_list,
};
pub const __pthread_list_t = struct___pthread_internal_list;
pub const struct___pthread_internal_slist = extern struct {
    __next: [*c]struct___pthread_internal_slist,
};
pub const __pthread_slist_t = struct___pthread_internal_slist;
pub const struct___pthread_mutex_s = extern struct {
    __lock: c_int,
    __count: c_uint,
    __owner: c_int,
    __nusers: c_uint,
    __kind: c_int,
    __spins: c_short,
    __elision: c_short,
    __list: __pthread_list_t,
};
pub const struct___pthread_rwlock_arch_t = extern struct {
    __readers: c_uint,
    __writers: c_uint,
    __wrphase_futex: c_uint,
    __writers_futex: c_uint,
    __pad3: c_uint,
    __pad4: c_uint,
    __cur_writer: c_int,
    __shared: c_int,
    __rwelision: i8,
    __pad1: [7]u8,
    __pad2: c_ulong,
    __flags: c_uint,
};
pub const struct___pthread_cond_s = extern struct {
    __wseq: __atomic_wide_counter,
    __g1_start: __atomic_wide_counter,
    __g_refs: [2]c_uint,
    __g_size: [2]c_uint,
    __g1_orig_size: c_uint,
    __wrefs: c_uint,
    __g_signals: [2]c_uint,
};
pub const __tss_t = c_uint;
pub const __thrd_t = c_ulong;
pub const __once_flag = extern struct {
    __data: c_int,
};
pub const pthread_t = c_ulong;
pub const pthread_mutexattr_t = extern union {
    __size: [4]u8,
    __align: c_int,
};
pub const pthread_condattr_t = extern union {
    __size: [4]u8,
    __align: c_int,
};
pub const pthread_key_t = c_uint;
pub const pthread_once_t = c_int;
pub const union_pthread_attr_t = extern union {
    __size: [56]u8,
    __align: c_long,
};
pub const pthread_attr_t = union_pthread_attr_t;
pub const pthread_mutex_t = extern union {
    __data: struct___pthread_mutex_s,
    __size: [40]u8,
    __align: c_long,
};
pub const pthread_cond_t = extern union {
    __data: struct___pthread_cond_s,
    __size: [48]u8,
    __align: c_longlong,
};
pub const pthread_rwlock_t = extern union {
    __data: struct___pthread_rwlock_arch_t,
    __size: [56]u8,
    __align: c_long,
};
pub const pthread_rwlockattr_t = extern union {
    __size: [8]u8,
    __align: c_long,
};
pub const pthread_spinlock_t = c_int;
pub const pthread_barrier_t = extern union {
    __size: [32]u8,
    __align: c_long,
};
pub const pthread_barrierattr_t = extern union {
    __size: [4]u8,
    __align: c_int,
};
pub extern fn random() c_long;
pub extern fn srandom(__seed: c_uint) void;
pub extern fn initstate(__seed: c_uint, __statebuf: [*c]u8, __statelen: usize) [*c]u8;
pub extern fn setstate(__statebuf: [*c]u8) [*c]u8;
pub const struct_random_data = extern struct {
    fptr: [*c]i32,
    rptr: [*c]i32,
    state: [*c]i32,
    rand_type: c_int,
    rand_deg: c_int,
    rand_sep: c_int,
    end_ptr: [*c]i32,
};
pub extern fn random_r(noalias __buf: [*c]struct_random_data, noalias __result: [*c]i32) c_int;
pub extern fn srandom_r(__seed: c_uint, __buf: [*c]struct_random_data) c_int;
pub extern fn initstate_r(__seed: c_uint, noalias __statebuf: [*c]u8, __statelen: usize, noalias __buf: [*c]struct_random_data) c_int;
pub extern fn setstate_r(noalias __statebuf: [*c]u8, noalias __buf: [*c]struct_random_data) c_int;
pub extern fn rand() c_int;
pub extern fn srand(__seed: c_uint) void;
pub extern fn rand_r(__seed: [*c]c_uint) c_int;
pub extern fn drand48() f64;
pub extern fn erand48(__xsubi: [*c]c_ushort) f64;
pub extern fn lrand48() c_long;
pub extern fn nrand48(__xsubi: [*c]c_ushort) c_long;
pub extern fn mrand48() c_long;
pub extern fn jrand48(__xsubi: [*c]c_ushort) c_long;
pub extern fn srand48(__seedval: c_long) void;
pub extern fn seed48(__seed16v: [*c]c_ushort) [*c]c_ushort;
pub extern fn lcong48(__param: [*c]c_ushort) void;
pub const struct_drand48_data = extern struct {
    __x: [3]c_ushort,
    __old_x: [3]c_ushort,
    __c: c_ushort,
    __init: c_ushort,
    __a: c_ulonglong,
};
pub extern fn drand48_r(noalias __buffer: [*c]struct_drand48_data, noalias __result: [*c]f64) c_int;
pub extern fn erand48_r(__xsubi: [*c]c_ushort, noalias __buffer: [*c]struct_drand48_data, noalias __result: [*c]f64) c_int;
pub extern fn lrand48_r(noalias __buffer: [*c]struct_drand48_data, noalias __result: [*c]c_long) c_int;
pub extern fn nrand48_r(__xsubi: [*c]c_ushort, noalias __buffer: [*c]struct_drand48_data, noalias __result: [*c]c_long) c_int;
pub extern fn mrand48_r(noalias __buffer: [*c]struct_drand48_data, noalias __result: [*c]c_long) c_int;
pub extern fn jrand48_r(__xsubi: [*c]c_ushort, noalias __buffer: [*c]struct_drand48_data, noalias __result: [*c]c_long) c_int;
pub extern fn srand48_r(__seedval: c_long, __buffer: [*c]struct_drand48_data) c_int;
pub extern fn seed48_r(__seed16v: [*c]c_ushort, __buffer: [*c]struct_drand48_data) c_int;
pub extern fn lcong48_r(__param: [*c]c_ushort, __buffer: [*c]struct_drand48_data) c_int;
pub extern fn malloc(__size: c_ulong) ?*anyopaque;
pub extern fn calloc(__nmemb: c_ulong, __size: c_ulong) ?*anyopaque;
pub extern fn realloc(__ptr: ?*anyopaque, __size: c_ulong) ?*anyopaque;
pub extern fn free(__ptr: ?*anyopaque) void;
pub extern fn reallocarray(__ptr: ?*anyopaque, __nmemb: usize, __size: usize) ?*anyopaque;
pub extern fn alloca(__size: c_ulong) ?*anyopaque;
pub extern fn valloc(__size: usize) ?*anyopaque;
pub extern fn posix_memalign(__memptr: [*c]?*anyopaque, __alignment: usize, __size: usize) c_int;
pub extern fn aligned_alloc(__alignment: c_ulong, __size: c_ulong) ?*anyopaque;
pub extern fn abort() noreturn;
pub extern fn atexit(__func: ?*const fn () callconv(.C) void) c_int;
pub extern fn at_quick_exit(__func: ?*const fn () callconv(.C) void) c_int;
pub extern fn on_exit(__func: ?*const fn (c_int, ?*anyopaque) callconv(.C) void, __arg: ?*anyopaque) c_int;
pub extern fn exit(__status: c_int) noreturn;
pub extern fn quick_exit(__status: c_int) noreturn;
pub extern fn _Exit(__status: c_int) noreturn;
pub extern fn getenv(__name: [*c]const u8) [*c]u8;
pub extern fn putenv(__string: [*c]u8) c_int;
pub extern fn setenv(__name: [*c]const u8, __value: [*c]const u8, __replace: c_int) c_int;
pub extern fn unsetenv(__name: [*c]const u8) c_int;
pub extern fn clearenv() c_int;
pub extern fn mktemp(__template: [*c]u8) [*c]u8;
pub extern fn mkstemp(__template: [*c]u8) c_int;
pub extern fn mkstemps(__template: [*c]u8, __suffixlen: c_int) c_int;
pub extern fn mkdtemp(__template: [*c]u8) [*c]u8;
pub extern fn system(__command: [*c]const u8) c_int;
pub extern fn realpath(noalias __name: [*c]const u8, noalias __resolved: [*c]u8) [*c]u8;
pub const __compar_fn_t = ?*const fn (?*const anyopaque, ?*const anyopaque) callconv(.C) c_int;
pub extern fn bsearch(__key: ?*const anyopaque, __base: ?*const anyopaque, __nmemb: usize, __size: usize, __compar: __compar_fn_t) ?*anyopaque;
pub extern fn qsort(__base: ?*anyopaque, __nmemb: usize, __size: usize, __compar: __compar_fn_t) void;
pub extern fn abs(__x: c_int) c_int;
pub extern fn labs(__x: c_long) c_long;
pub extern fn llabs(__x: c_longlong) c_longlong;
pub extern fn div(__numer: c_int, __denom: c_int) div_t;
pub extern fn ldiv(__numer: c_long, __denom: c_long) ldiv_t;
pub extern fn lldiv(__numer: c_longlong, __denom: c_longlong) lldiv_t;
pub extern fn ecvt(__value: f64, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int) [*c]u8;
pub extern fn fcvt(__value: f64, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int) [*c]u8;
pub extern fn gcvt(__value: f64, __ndigit: c_int, __buf: [*c]u8) [*c]u8;
pub extern fn qecvt(__value: c_longdouble, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int) [*c]u8;
pub extern fn qfcvt(__value: c_longdouble, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int) [*c]u8;
pub extern fn qgcvt(__value: c_longdouble, __ndigit: c_int, __buf: [*c]u8) [*c]u8;
pub extern fn ecvt_r(__value: f64, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int, noalias __buf: [*c]u8, __len: usize) c_int;
pub extern fn fcvt_r(__value: f64, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int, noalias __buf: [*c]u8, __len: usize) c_int;
pub extern fn qecvt_r(__value: c_longdouble, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int, noalias __buf: [*c]u8, __len: usize) c_int;
pub extern fn qfcvt_r(__value: c_longdouble, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int, noalias __buf: [*c]u8, __len: usize) c_int;
pub extern fn mblen(__s: [*c]const u8, __n: usize) c_int;
pub extern fn mbtowc(noalias __pwc: [*c]wchar_t, noalias __s: [*c]const u8, __n: usize) c_int;
pub extern fn wctomb(__s: [*c]u8, __wchar: wchar_t) c_int;
pub extern fn mbstowcs(noalias __pwcs: [*c]wchar_t, noalias __s: [*c]const u8, __n: usize) usize;
pub extern fn wcstombs(noalias __s: [*c]u8, noalias __pwcs: [*c]const wchar_t, __n: usize) usize;
pub extern fn rpmatch(__response: [*c]const u8) c_int;
pub extern fn getsubopt(noalias __optionp: [*c][*c]u8, noalias __tokens: [*c]const [*c]u8, noalias __valuep: [*c][*c]u8) c_int;
pub extern fn getloadavg(__loadavg: [*c]f64, __nelem: c_int) c_int;
pub const ptrdiff_t = c_long;
pub const max_align_t = extern struct {
    __clang_max_align_nonce1: c_longlong align(8),
    __clang_max_align_nonce2: c_longdouble align(16),
};
pub const __jmp_buf = [8]c_long;
pub const struct___jmp_buf_tag = extern struct {
    __jmpbuf: __jmp_buf,
    __mask_was_saved: c_int,
    __saved_mask: __sigset_t,
};
pub const jmp_buf = [1]struct___jmp_buf_tag;
pub extern fn setjmp(__env: [*c]struct___jmp_buf_tag) c_int;
pub extern fn __sigsetjmp(__env: [*c]struct___jmp_buf_tag, __savemask: c_int) c_int;
pub extern fn _setjmp(__env: [*c]struct___jmp_buf_tag) c_int;
pub extern fn longjmp(__env: [*c]struct___jmp_buf_tag, __val: c_int) noreturn;
pub extern fn _longjmp(__env: [*c]struct___jmp_buf_tag, __val: c_int) noreturn;
pub const sigjmp_buf = [1]struct___jmp_buf_tag;
pub extern fn siglongjmp(__env: [*c]struct___jmp_buf_tag, __val: c_int) noreturn;
pub const struct_tm = extern struct {
    tm_sec: c_int,
    tm_min: c_int,
    tm_hour: c_int,
    tm_mday: c_int,
    tm_mon: c_int,
    tm_year: c_int,
    tm_wday: c_int,
    tm_yday: c_int,
    tm_isdst: c_int,
    tm_gmtoff: c_long,
    tm_zone: [*c]const u8,
};
pub const struct_itimerspec = extern struct {
    it_interval: struct_timespec,
    it_value: struct_timespec,
};
pub const struct_sigevent = opaque {};
pub const struct___locale_data = opaque {};
pub const struct___locale_struct = extern struct {
    __locales: [13]?*struct___locale_data,
    __ctype_b: [*c]const c_ushort,
    __ctype_tolower: [*c]const c_int,
    __ctype_toupper: [*c]const c_int,
    __names: [13][*c]const u8,
};
pub const __locale_t = [*c]struct___locale_struct;
pub const locale_t = __locale_t;
pub extern fn clock() clock_t;
pub extern fn time(__timer: [*c]time_t) time_t;
pub extern fn difftime(__time1: time_t, __time0: time_t) f64;
pub extern fn mktime(__tp: [*c]struct_tm) time_t;
pub extern fn strftime(noalias __s: [*c]u8, __maxsize: usize, noalias __format: [*c]const u8, noalias __tp: [*c]const struct_tm) usize;
pub extern fn strftime_l(noalias __s: [*c]u8, __maxsize: usize, noalias __format: [*c]const u8, noalias __tp: [*c]const struct_tm, __loc: locale_t) usize;
pub extern fn gmtime(__timer: [*c]const time_t) [*c]struct_tm;
pub extern fn localtime(__timer: [*c]const time_t) [*c]struct_tm;
pub extern fn gmtime_r(noalias __timer: [*c]const time_t, noalias __tp: [*c]struct_tm) [*c]struct_tm;
pub extern fn localtime_r(noalias __timer: [*c]const time_t, noalias __tp: [*c]struct_tm) [*c]struct_tm;
pub extern fn asctime(__tp: [*c]const struct_tm) [*c]u8;
pub extern fn ctime(__timer: [*c]const time_t) [*c]u8;
pub extern fn asctime_r(noalias __tp: [*c]const struct_tm, noalias __buf: [*c]u8) [*c]u8;
pub extern fn ctime_r(noalias __timer: [*c]const time_t, noalias __buf: [*c]u8) [*c]u8;
pub extern var __tzname: [2][*c]u8;
pub extern var __daylight: c_int;
pub extern var __timezone: c_long;
pub extern var tzname: [2][*c]u8;
pub extern fn tzset() void;
pub extern var daylight: c_int;
pub extern var timezone: c_long;
pub extern fn timegm(__tp: [*c]struct_tm) time_t;
pub extern fn timelocal(__tp: [*c]struct_tm) time_t;
pub extern fn dysize(__year: c_int) c_int;
pub extern fn nanosleep(__requested_time: [*c]const struct_timespec, __remaining: [*c]struct_timespec) c_int;
pub extern fn clock_getres(__clock_id: clockid_t, __res: [*c]struct_timespec) c_int;
pub extern fn clock_gettime(__clock_id: clockid_t, __tp: [*c]struct_timespec) c_int;
pub extern fn clock_settime(__clock_id: clockid_t, __tp: [*c]const struct_timespec) c_int;
pub extern fn clock_nanosleep(__clock_id: clockid_t, __flags: c_int, __req: [*c]const struct_timespec, __rem: [*c]struct_timespec) c_int;
pub extern fn clock_getcpuclockid(__pid: pid_t, __clock_id: [*c]clockid_t) c_int;
pub extern fn timer_create(__clock_id: clockid_t, noalias __evp: ?*struct_sigevent, noalias __timerid: [*c]timer_t) c_int;
pub extern fn timer_delete(__timerid: timer_t) c_int;
pub extern fn timer_settime(__timerid: timer_t, __flags: c_int, noalias __value: [*c]const struct_itimerspec, noalias __ovalue: [*c]struct_itimerspec) c_int;
pub extern fn timer_gettime(__timerid: timer_t, __value: [*c]struct_itimerspec) c_int;
pub extern fn timer_getoverrun(__timerid: timer_t) c_int;
pub extern fn timespec_get(__ts: [*c]struct_timespec, __base: c_int) c_int;
pub const png_byte = u8;
pub const png_int_16 = c_short;
pub const png_uint_16 = c_ushort;
pub const png_int_32 = c_int;
pub const png_uint_32 = c_uint;
pub const png_size_t = usize;
pub const png_ptrdiff_t = ptrdiff_t;
pub const png_alloc_size_t = usize;
pub const png_fixed_point = png_int_32;
pub const png_voidp = ?*anyopaque;
pub const png_const_voidp = ?*const anyopaque;
pub const png_bytep = [*c]png_byte;
pub const png_const_bytep = [*c]const png_byte;
pub const png_uint_32p = [*c]png_uint_32;
pub const png_const_uint_32p = [*c]const png_uint_32;
pub const png_int_32p = [*c]png_int_32;
pub const png_const_int_32p = [*c]const png_int_32;
pub const png_uint_16p = [*c]png_uint_16;
pub const png_const_uint_16p = [*c]const png_uint_16;
pub const png_int_16p = [*c]png_int_16;
pub const png_const_int_16p = [*c]const png_int_16;
pub const png_charp = [*c]u8;
pub const png_const_charp = [*c]const u8;
pub const png_fixed_point_p = [*c]png_fixed_point;
pub const png_const_fixed_point_p = [*c]const png_fixed_point;
pub const png_size_tp = [*c]usize;
pub const png_const_size_tp = [*c]const usize;
pub const png_FILE_p = [*c]FILE;
pub const png_doublep = [*c]f64;
pub const png_const_doublep = [*c]const f64;
pub const png_bytepp = [*c][*c]png_byte;
pub const png_uint_32pp = [*c][*c]png_uint_32;
pub const png_int_32pp = [*c][*c]png_int_32;
pub const png_uint_16pp = [*c][*c]png_uint_16;
pub const png_int_16pp = [*c][*c]png_int_16;
pub const png_const_charpp = [*c][*c]const u8;
pub const png_charpp = [*c][*c]u8;
pub const png_fixed_point_pp = [*c][*c]png_fixed_point;
pub const png_doublepp = [*c][*c]f64;
pub const png_charppp = [*c][*c][*c]u8;
pub const png_libpng_version_1_6_37 = [*c]u8;
pub const struct_png_struct_def = opaque {};
pub const png_struct = struct_png_struct_def;
pub const png_const_structp = ?*const png_struct;
pub const png_structp = ?*png_struct;
pub const png_structpp = [*c]?*png_struct;
pub const struct_png_info_def = opaque {};
pub const png_info = struct_png_info_def;
pub const png_infop = ?*png_info;
pub const png_const_infop = ?*const png_info;
pub const png_infopp = [*c]?*png_info;
pub const png_structrp = ?*png_struct;
pub const png_const_structrp = ?*const png_struct;
pub const png_inforp = ?*png_info;
pub const png_const_inforp = ?*const png_info;
pub const struct_png_color_struct = extern struct {
    red: png_byte,
    green: png_byte,
    blue: png_byte,
};
pub const png_color = struct_png_color_struct;
pub const png_colorp = [*c]png_color;
pub const png_const_colorp = [*c]const png_color;
pub const png_colorpp = [*c][*c]png_color;
pub const struct_png_color_16_struct = extern struct {
    index: png_byte,
    red: png_uint_16,
    green: png_uint_16,
    blue: png_uint_16,
    gray: png_uint_16,
};
pub const png_color_16 = struct_png_color_16_struct;
pub const png_color_16p = [*c]png_color_16;
pub const png_const_color_16p = [*c]const png_color_16;
pub const png_color_16pp = [*c][*c]png_color_16;
pub const struct_png_color_8_struct = extern struct {
    red: png_byte,
    green: png_byte,
    blue: png_byte,
    gray: png_byte,
    alpha: png_byte,
};
pub const png_color_8 = struct_png_color_8_struct;
pub const png_color_8p = [*c]png_color_8;
pub const png_const_color_8p = [*c]const png_color_8;
pub const png_color_8pp = [*c][*c]png_color_8;
pub const struct_png_sPLT_entry_struct = extern struct {
    red: png_uint_16,
    green: png_uint_16,
    blue: png_uint_16,
    alpha: png_uint_16,
    frequency: png_uint_16,
};
pub const png_sPLT_entry = struct_png_sPLT_entry_struct;
pub const png_sPLT_entryp = [*c]png_sPLT_entry;
pub const png_const_sPLT_entryp = [*c]const png_sPLT_entry;
pub const png_sPLT_entrypp = [*c][*c]png_sPLT_entry;
pub const struct_png_sPLT_struct = extern struct {
    name: png_charp,
    depth: png_byte,
    entries: png_sPLT_entryp,
    nentries: png_int_32,
};
pub const png_sPLT_t = struct_png_sPLT_struct;
pub const png_sPLT_tp = [*c]png_sPLT_t;
pub const png_const_sPLT_tp = [*c]const png_sPLT_t;
pub const png_sPLT_tpp = [*c][*c]png_sPLT_t;
pub const struct_png_text_struct = extern struct {
    compression: c_int,
    key: png_charp,
    text: png_charp,
    text_length: usize,
    itxt_length: usize,
    lang: png_charp,
    lang_key: png_charp,
};
pub const png_text = struct_png_text_struct;
pub const png_textp = [*c]png_text;
pub const png_const_textp = [*c]const png_text;
pub const png_textpp = [*c][*c]png_text;
pub const struct_png_time_struct = extern struct {
    year: png_uint_16,
    month: png_byte,
    day: png_byte,
    hour: png_byte,
    minute: png_byte,
    second: png_byte,
};
pub const png_time = struct_png_time_struct;
pub const png_timep = [*c]png_time;
pub const png_const_timep = [*c]const png_time;
pub const png_timepp = [*c][*c]png_time;
pub const struct_png_unknown_chunk_t = extern struct {
    name: [5]png_byte,
    data: [*c]png_byte,
    size: usize,
    location: png_byte,
};
pub const png_unknown_chunk = struct_png_unknown_chunk_t;
pub const png_unknown_chunkp = [*c]png_unknown_chunk;
pub const png_const_unknown_chunkp = [*c]const png_unknown_chunk;
pub const png_unknown_chunkpp = [*c][*c]png_unknown_chunk;
pub const struct_png_row_info_struct = extern struct {
    width: png_uint_32,
    rowbytes: usize,
    color_type: png_byte,
    bit_depth: png_byte,
    channels: png_byte,
    pixel_depth: png_byte,
};
pub const png_row_info = struct_png_row_info_struct;
pub const png_row_infop = [*c]png_row_info;
pub const png_row_infopp = [*c][*c]png_row_info;
pub const png_error_ptr = ?*const fn (png_structp, png_const_charp) callconv(.C) void;
pub const png_rw_ptr = ?*const fn (png_structp, png_bytep, usize) callconv(.C) void;
pub const png_flush_ptr = ?*const fn (png_structp) callconv(.C) void;
pub const png_read_status_ptr = ?*const fn (png_structp, png_uint_32, c_int) callconv(.C) void;
pub const png_write_status_ptr = ?*const fn (png_structp, png_uint_32, c_int) callconv(.C) void;
pub const png_progressive_info_ptr = ?*const fn (png_structp, png_infop) callconv(.C) void;
pub const png_progressive_end_ptr = ?*const fn (png_structp, png_infop) callconv(.C) void;
pub const png_progressive_frame_ptr = ?*const fn (png_structp, png_uint_32) callconv(.C) void;
pub const png_progressive_row_ptr = ?*const fn (png_structp, png_bytep, png_uint_32, c_int) callconv(.C) void;
pub const png_user_transform_ptr = ?*const fn (png_structp, png_row_infop, png_bytep) callconv(.C) void;
pub const png_user_chunk_ptr = ?*const fn (png_structp, png_unknown_chunkp) callconv(.C) c_int;
pub const png_longjmp_ptr = ?*const fn ([*c]struct___jmp_buf_tag, c_int) callconv(.C) void;
pub const png_malloc_ptr = ?*const fn (png_structp, png_alloc_size_t) callconv(.C) png_voidp;
pub const png_free_ptr = ?*const fn (png_structp, png_voidp) callconv(.C) void;
pub extern fn png_access_version_number() png_uint_32;
pub extern fn png_set_sig_bytes(noalias png_ptr: png_structrp, num_bytes: c_int) void;
pub extern fn png_sig_cmp(sig: png_const_bytep, start: usize, num_to_check: usize) c_int;
pub extern fn png_create_read_struct(user_png_ver: png_const_charp, error_ptr: png_voidp, error_fn: png_error_ptr, warn_fn: png_error_ptr) png_structp;
pub extern fn png_create_write_struct(user_png_ver: png_const_charp, error_ptr: png_voidp, error_fn: png_error_ptr, warn_fn: png_error_ptr) png_structp;
pub extern fn png_get_compression_buffer_size(noalias png_ptr: png_const_structrp) usize;
pub extern fn png_set_compression_buffer_size(noalias png_ptr: png_structrp, size: usize) void;
pub extern fn png_set_longjmp_fn(noalias png_ptr: png_structrp, longjmp_fn: png_longjmp_ptr, jmp_buf_size: usize) [*c]jmp_buf;
pub extern fn png_longjmp(noalias png_ptr: png_const_structrp, val: c_int) noreturn;
pub extern fn png_reset_zstream(noalias png_ptr: png_structrp) c_int;
pub extern fn png_create_read_struct_2(user_png_ver: png_const_charp, error_ptr: png_voidp, error_fn: png_error_ptr, warn_fn: png_error_ptr, mem_ptr: png_voidp, malloc_fn: png_malloc_ptr, free_fn: png_free_ptr) png_structp;
pub extern fn png_create_write_struct_2(user_png_ver: png_const_charp, error_ptr: png_voidp, error_fn: png_error_ptr, warn_fn: png_error_ptr, mem_ptr: png_voidp, malloc_fn: png_malloc_ptr, free_fn: png_free_ptr) png_structp;
pub extern fn png_write_sig(noalias png_ptr: png_structrp) void;
pub extern fn png_write_chunk(noalias png_ptr: png_structrp, chunk_name: png_const_bytep, data: png_const_bytep, length: usize) void;
pub extern fn png_write_chunk_start(noalias png_ptr: png_structrp, chunk_name: png_const_bytep, length: png_uint_32) void;
pub extern fn png_write_chunk_data(noalias png_ptr: png_structrp, data: png_const_bytep, length: usize) void;
pub extern fn png_write_chunk_end(noalias png_ptr: png_structrp) void;
pub extern fn png_create_info_struct(noalias png_ptr: png_const_structrp) png_infop;
pub extern fn png_info_init_3(info_ptr: png_infopp, png_info_struct_size: usize) void;
pub extern fn png_write_info_before_PLTE(noalias png_ptr: png_structrp, noalias info_ptr: png_const_inforp) void;
pub extern fn png_write_info(noalias png_ptr: png_structrp, noalias info_ptr: png_const_inforp) void;
pub extern fn png_read_info(noalias png_ptr: png_structrp, noalias info_ptr: png_inforp) void;
pub extern fn png_convert_to_rfc1123(noalias png_ptr: png_structrp, ptime: png_const_timep) png_const_charp;
pub extern fn png_convert_to_rfc1123_buffer(out: [*c]u8, ptime: png_const_timep) c_int;
pub extern fn png_convert_from_struct_tm(ptime: png_timep, ttime: [*c]const struct_tm) void;
pub extern fn png_convert_from_time_t(ptime: png_timep, ttime: time_t) void;
pub extern fn png_set_expand(noalias png_ptr: png_structrp) void;
pub extern fn png_set_expand_gray_1_2_4_to_8(noalias png_ptr: png_structrp) void;
pub extern fn png_set_palette_to_rgb(noalias png_ptr: png_structrp) void;
pub extern fn png_set_tRNS_to_alpha(noalias png_ptr: png_structrp) void;
pub extern fn png_set_expand_16(noalias png_ptr: png_structrp) void;
pub extern fn png_set_bgr(noalias png_ptr: png_structrp) void;
pub extern fn png_set_gray_to_rgb(noalias png_ptr: png_structrp) void;
pub extern fn png_set_rgb_to_gray(noalias png_ptr: png_structrp, error_action: c_int, red: f64, green: f64) void;
pub extern fn png_set_rgb_to_gray_fixed(noalias png_ptr: png_structrp, error_action: c_int, red: png_fixed_point, green: png_fixed_point) void;
pub extern fn png_get_rgb_to_gray_status(noalias png_ptr: png_const_structrp) png_byte;
pub extern fn png_build_grayscale_palette(bit_depth: c_int, palette: png_colorp) void;
pub extern fn png_set_alpha_mode(noalias png_ptr: png_structrp, mode: c_int, output_gamma: f64) void;
pub extern fn png_set_alpha_mode_fixed(noalias png_ptr: png_structrp, mode: c_int, output_gamma: png_fixed_point) void;
pub extern fn png_set_strip_alpha(noalias png_ptr: png_structrp) void;
pub extern fn png_set_swap_alpha(noalias png_ptr: png_structrp) void;
pub extern fn png_set_invert_alpha(noalias png_ptr: png_structrp) void;
pub extern fn png_set_filler(noalias png_ptr: png_structrp, filler: png_uint_32, flags: c_int) void;
pub extern fn png_set_add_alpha(noalias png_ptr: png_structrp, filler: png_uint_32, flags: c_int) void;
pub extern fn png_set_swap(noalias png_ptr: png_structrp) void;
pub extern fn png_set_packing(noalias png_ptr: png_structrp) void;
pub extern fn png_set_packswap(noalias png_ptr: png_structrp) void;
pub extern fn png_set_shift(noalias png_ptr: png_structrp, true_bits: png_const_color_8p) void;
pub extern fn png_set_interlace_handling(noalias png_ptr: png_structrp) c_int;
pub extern fn png_set_invert_mono(noalias png_ptr: png_structrp) void;
pub extern fn png_set_background(noalias png_ptr: png_structrp, background_color: png_const_color_16p, background_gamma_code: c_int, need_expand: c_int, background_gamma: f64) void;
pub extern fn png_set_background_fixed(noalias png_ptr: png_structrp, background_color: png_const_color_16p, background_gamma_code: c_int, need_expand: c_int, background_gamma: png_fixed_point) void;
pub extern fn png_set_scale_16(noalias png_ptr: png_structrp) void;
pub extern fn png_set_strip_16(noalias png_ptr: png_structrp) void;
pub extern fn png_set_quantize(noalias png_ptr: png_structrp, palette: png_colorp, num_palette: c_int, maximum_colors: c_int, histogram: png_const_uint_16p, full_quantize: c_int) void;
pub extern fn png_set_gamma(noalias png_ptr: png_structrp, screen_gamma: f64, override_file_gamma: f64) void;
pub extern fn png_set_gamma_fixed(noalias png_ptr: png_structrp, screen_gamma: png_fixed_point, override_file_gamma: png_fixed_point) void;
pub extern fn png_set_flush(noalias png_ptr: png_structrp, nrows: c_int) void;
pub extern fn png_write_flush(noalias png_ptr: png_structrp) void;
pub extern fn png_start_read_image(noalias png_ptr: png_structrp) void;
pub extern fn png_read_update_info(noalias png_ptr: png_structrp, noalias info_ptr: png_inforp) void;
pub extern fn png_read_rows(noalias png_ptr: png_structrp, row: png_bytepp, display_row: png_bytepp, num_rows: png_uint_32) void;
pub extern fn png_read_row(noalias png_ptr: png_structrp, row: png_bytep, display_row: png_bytep) void;
pub extern fn png_read_image(noalias png_ptr: png_structrp, image: png_bytepp) void;
pub extern fn png_write_row(noalias png_ptr: png_structrp, row: png_const_bytep) void;
pub extern fn png_write_rows(noalias png_ptr: png_structrp, row: png_bytepp, num_rows: png_uint_32) void;
pub extern fn png_write_image(noalias png_ptr: png_structrp, image: png_bytepp) void;
pub extern fn png_write_end(noalias png_ptr: png_structrp, noalias info_ptr: png_inforp) void;
pub extern fn png_read_end(noalias png_ptr: png_structrp, noalias info_ptr: png_inforp) void;
pub extern fn png_destroy_info_struct(noalias png_ptr: png_const_structrp, info_ptr_ptr: png_infopp) void;
pub extern fn png_destroy_read_struct(png_ptr_ptr: png_structpp, info_ptr_ptr: png_infopp, end_info_ptr_ptr: png_infopp) void;
pub extern fn png_destroy_write_struct(png_ptr_ptr: png_structpp, info_ptr_ptr: png_infopp) void;
pub extern fn png_set_crc_action(noalias png_ptr: png_structrp, crit_action: c_int, ancil_action: c_int) void;
pub extern fn png_set_filter(noalias png_ptr: png_structrp, method: c_int, filters: c_int) void;
pub extern fn png_set_filter_heuristics(noalias png_ptr: png_structrp, heuristic_method: c_int, num_weights: c_int, filter_weights: png_const_doublep, filter_costs: png_const_doublep) void;
pub extern fn png_set_filter_heuristics_fixed(noalias png_ptr: png_structrp, heuristic_method: c_int, num_weights: c_int, filter_weights: png_const_fixed_point_p, filter_costs: png_const_fixed_point_p) void;
pub extern fn png_set_compression_level(noalias png_ptr: png_structrp, level: c_int) void;
pub extern fn png_set_compression_mem_level(noalias png_ptr: png_structrp, mem_level: c_int) void;
pub extern fn png_set_compression_strategy(noalias png_ptr: png_structrp, strategy: c_int) void;
pub extern fn png_set_compression_window_bits(noalias png_ptr: png_structrp, window_bits: c_int) void;
pub extern fn png_set_compression_method(noalias png_ptr: png_structrp, method: c_int) void;
pub extern fn png_set_text_compression_level(noalias png_ptr: png_structrp, level: c_int) void;
pub extern fn png_set_text_compression_mem_level(noalias png_ptr: png_structrp, mem_level: c_int) void;
pub extern fn png_set_text_compression_strategy(noalias png_ptr: png_structrp, strategy: c_int) void;
pub extern fn png_set_text_compression_window_bits(noalias png_ptr: png_structrp, window_bits: c_int) void;
pub extern fn png_set_text_compression_method(noalias png_ptr: png_structrp, method: c_int) void;
pub extern fn png_init_io(noalias png_ptr: png_structrp, fp: png_FILE_p) void;
pub extern fn png_set_error_fn(noalias png_ptr: png_structrp, error_ptr: png_voidp, error_fn: png_error_ptr, warning_fn: png_error_ptr) void;
pub extern fn png_get_error_ptr(noalias png_ptr: png_const_structrp) png_voidp;
pub extern fn png_set_write_fn(noalias png_ptr: png_structrp, io_ptr: png_voidp, write_data_fn: png_rw_ptr, output_flush_fn: png_flush_ptr) void;
pub extern fn png_set_read_fn(noalias png_ptr: png_structrp, io_ptr: png_voidp, read_data_fn: png_rw_ptr) void;
pub extern fn png_get_io_ptr(noalias png_ptr: png_const_structrp) png_voidp;
pub extern fn png_set_read_status_fn(noalias png_ptr: png_structrp, read_row_fn: png_read_status_ptr) void;
pub extern fn png_set_write_status_fn(noalias png_ptr: png_structrp, write_row_fn: png_write_status_ptr) void;
pub extern fn png_set_mem_fn(noalias png_ptr: png_structrp, mem_ptr: png_voidp, malloc_fn: png_malloc_ptr, free_fn: png_free_ptr) void;
pub extern fn png_get_mem_ptr(noalias png_ptr: png_const_structrp) png_voidp;
pub extern fn png_set_read_user_transform_fn(noalias png_ptr: png_structrp, read_user_transform_fn: png_user_transform_ptr) void;
pub extern fn png_set_write_user_transform_fn(noalias png_ptr: png_structrp, write_user_transform_fn: png_user_transform_ptr) void;
pub extern fn png_set_user_transform_info(noalias png_ptr: png_structrp, user_transform_ptr: png_voidp, user_transform_depth: c_int, user_transform_channels: c_int) void;
pub extern fn png_get_user_transform_ptr(noalias png_ptr: png_const_structrp) png_voidp;
pub extern fn png_get_current_row_number(noalias png_const_structrp) png_uint_32;
pub extern fn png_get_current_pass_number(noalias png_const_structrp) png_byte;
pub extern fn png_set_read_user_chunk_fn(noalias png_ptr: png_structrp, user_chunk_ptr: png_voidp, read_user_chunk_fn: png_user_chunk_ptr) void;
pub extern fn png_get_user_chunk_ptr(noalias png_ptr: png_const_structrp) png_voidp;
pub extern fn png_set_progressive_read_fn(noalias png_ptr: png_structrp, progressive_ptr: png_voidp, info_fn: png_progressive_info_ptr, row_fn: png_progressive_row_ptr, end_fn: png_progressive_end_ptr) void;
pub extern fn png_get_progressive_ptr(noalias png_ptr: png_const_structrp) png_voidp;
pub extern fn png_process_data(noalias png_ptr: png_structrp, noalias info_ptr: png_inforp, buffer: png_bytep, buffer_size: usize) void;
pub extern fn png_process_data_pause(noalias png_structrp, save: c_int) usize;
pub extern fn png_process_data_skip(noalias png_structrp) png_uint_32;
pub extern fn png_progressive_combine_row(noalias png_ptr: png_const_structrp, old_row: png_bytep, new_row: png_const_bytep) void;
pub extern fn png_malloc(noalias png_ptr: png_const_structrp, size: png_alloc_size_t) png_voidp;
pub extern fn png_calloc(noalias png_ptr: png_const_structrp, size: png_alloc_size_t) png_voidp;
pub extern fn png_malloc_warn(noalias png_ptr: png_const_structrp, size: png_alloc_size_t) png_voidp;
pub extern fn png_free(noalias png_ptr: png_const_structrp, ptr: png_voidp) void;
pub extern fn png_free_data(noalias png_ptr: png_const_structrp, noalias info_ptr: png_inforp, free_me: png_uint_32, num: c_int) void;
pub extern fn png_data_freer(noalias png_ptr: png_const_structrp, noalias info_ptr: png_inforp, freer: c_int, mask: png_uint_32) void;
pub extern fn png_malloc_default(noalias png_ptr: png_const_structrp, size: png_alloc_size_t) png_voidp;
pub extern fn png_free_default(noalias png_ptr: png_const_structrp, ptr: png_voidp) void;
pub extern fn png_error(noalias png_ptr: png_const_structrp, error_message: png_const_charp) noreturn;
pub extern fn png_chunk_error(noalias png_ptr: png_const_structrp, error_message: png_const_charp) noreturn;
pub extern fn png_warning(noalias png_ptr: png_const_structrp, warning_message: png_const_charp) void;
pub extern fn png_chunk_warning(noalias png_ptr: png_const_structrp, warning_message: png_const_charp) void;
pub extern fn png_benign_error(noalias png_ptr: png_const_structrp, warning_message: png_const_charp) void;
pub extern fn png_chunk_benign_error(noalias png_ptr: png_const_structrp, warning_message: png_const_charp) void;
pub extern fn png_set_benign_errors(noalias png_ptr: png_structrp, allowed: c_int) void;
pub extern fn png_get_valid(noalias png_ptr: png_const_structrp, noalias info_ptr: png_const_inforp, flag: png_uint_32) png_uint_32;
pub extern fn png_get_rowbytes(noalias png_ptr: png_const_structrp, noalias info_ptr: png_const_inforp) usize;
pub extern fn png_get_rows(noalias png_ptr: png_const_structrp, noalias info_ptr: png_const_inforp) png_bytepp;
pub extern fn png_set_rows(noalias png_ptr: png_const_structrp, noalias info_ptr: png_inforp, row_pointers: png_bytepp) void;
pub extern fn png_get_channels(noalias png_ptr: png_const_structrp, noalias info_ptr: png_const_inforp) png_byte;
pub extern fn png_get_image_width(noalias png_ptr: png_const_structrp, noalias info_ptr: png_const_inforp) png_uint_32;
pub extern fn png_get_image_height(noalias png_ptr: png_const_structrp, noalias info_ptr: png_const_inforp) png_uint_32;
pub extern fn png_get_bit_depth(noalias png_ptr: png_const_structrp, noalias info_ptr: png_const_inforp) png_byte;
pub extern fn png_get_color_type(noalias png_ptr: png_const_structrp, noalias info_ptr: png_const_inforp) png_byte;
pub extern fn png_get_filter_type(noalias png_ptr: png_const_structrp, noalias info_ptr: png_const_inforp) png_byte;
pub extern fn png_get_interlace_type(noalias png_ptr: png_const_structrp, noalias info_ptr: png_const_inforp) png_byte;
pub extern fn png_get_compression_type(noalias png_ptr: png_const_structrp, noalias info_ptr: png_const_inforp) png_byte;
pub extern fn png_get_pixels_per_meter(noalias png_ptr: png_const_structrp, noalias info_ptr: png_const_inforp) png_uint_32;
pub extern fn png_get_x_pixels_per_meter(noalias png_ptr: png_const_structrp, noalias info_ptr: png_const_inforp) png_uint_32;
pub extern fn png_get_y_pixels_per_meter(noalias png_ptr: png_const_structrp, noalias info_ptr: png_const_inforp) png_uint_32;
pub extern fn png_get_pixel_aspect_ratio(noalias png_ptr: png_const_structrp, noalias info_ptr: png_const_inforp) f32;
pub extern fn png_get_pixel_aspect_ratio_fixed(noalias png_ptr: png_const_structrp, noalias info_ptr: png_const_inforp) png_fixed_point;
pub extern fn png_get_x_offset_pixels(noalias png_ptr: png_const_structrp, noalias info_ptr: png_const_inforp) png_int_32;
pub extern fn png_get_y_offset_pixels(noalias png_ptr: png_const_structrp, noalias info_ptr: png_const_inforp) png_int_32;
pub extern fn png_get_x_offset_microns(noalias png_ptr: png_const_structrp, noalias info_ptr: png_const_inforp) png_int_32;
pub extern fn png_get_y_offset_microns(noalias png_ptr: png_const_structrp, noalias info_ptr: png_const_inforp) png_int_32;
pub extern fn png_get_signature(noalias png_ptr: png_const_structrp, noalias info_ptr: png_const_inforp) png_const_bytep;
pub extern fn png_get_bKGD(noalias png_ptr: png_const_structrp, noalias info_ptr: png_inforp, background: [*c]png_color_16p) png_uint_32;
pub extern fn png_set_bKGD(noalias png_ptr: png_const_structrp, noalias info_ptr: png_inforp, background: png_const_color_16p) void;
pub extern fn png_get_cHRM(noalias png_ptr: png_const_structrp, noalias info_ptr: png_const_inforp, white_x: [*c]f64, white_y: [*c]f64, red_x: [*c]f64, red_y: [*c]f64, green_x: [*c]f64, green_y: [*c]f64, blue_x: [*c]f64, blue_y: [*c]f64) png_uint_32;
pub extern fn png_get_cHRM_XYZ(noalias png_ptr: png_const_structrp, noalias info_ptr: png_const_inforp, red_X: [*c]f64, red_Y: [*c]f64, red_Z: [*c]f64, green_X: [*c]f64, green_Y: [*c]f64, green_Z: [*c]f64, blue_X: [*c]f64, blue_Y: [*c]f64, blue_Z: [*c]f64) png_uint_32;
pub extern fn png_get_cHRM_fixed(noalias png_ptr: png_const_structrp, noalias info_ptr: png_const_inforp, int_white_x: [*c]png_fixed_point, int_white_y: [*c]png_fixed_point, int_red_x: [*c]png_fixed_point, int_red_y: [*c]png_fixed_point, int_green_x: [*c]png_fixed_point, int_green_y: [*c]png_fixed_point, int_blue_x: [*c]png_fixed_point, int_blue_y: [*c]png_fixed_point) png_uint_32;
pub extern fn png_get_cHRM_XYZ_fixed(noalias png_ptr: png_const_structrp, noalias info_ptr: png_const_inforp, int_red_X: [*c]png_fixed_point, int_red_Y: [*c]png_fixed_point, int_red_Z: [*c]png_fixed_point, int_green_X: [*c]png_fixed_point, int_green_Y: [*c]png_fixed_point, int_green_Z: [*c]png_fixed_point, int_blue_X: [*c]png_fixed_point, int_blue_Y: [*c]png_fixed_point, int_blue_Z: [*c]png_fixed_point) png_uint_32;
pub extern fn png_set_cHRM(noalias png_ptr: png_const_structrp, noalias info_ptr: png_inforp, white_x: f64, white_y: f64, red_x: f64, red_y: f64, green_x: f64, green_y: f64, blue_x: f64, blue_y: f64) void;
pub extern fn png_set_cHRM_XYZ(noalias png_ptr: png_const_structrp, noalias info_ptr: png_inforp, red_X: f64, red_Y: f64, red_Z: f64, green_X: f64, green_Y: f64, green_Z: f64, blue_X: f64, blue_Y: f64, blue_Z: f64) void;
pub extern fn png_set_cHRM_fixed(noalias png_ptr: png_const_structrp, noalias info_ptr: png_inforp, int_white_x: png_fixed_point, int_white_y: png_fixed_point, int_red_x: png_fixed_point, int_red_y: png_fixed_point, int_green_x: png_fixed_point, int_green_y: png_fixed_point, int_blue_x: png_fixed_point, int_blue_y: png_fixed_point) void;
pub extern fn png_set_cHRM_XYZ_fixed(noalias png_ptr: png_const_structrp, noalias info_ptr: png_inforp, int_red_X: png_fixed_point, int_red_Y: png_fixed_point, int_red_Z: png_fixed_point, int_green_X: png_fixed_point, int_green_Y: png_fixed_point, int_green_Z: png_fixed_point, int_blue_X: png_fixed_point, int_blue_Y: png_fixed_point, int_blue_Z: png_fixed_point) void;
pub extern fn png_get_eXIf(noalias png_ptr: png_const_structrp, noalias info_ptr: png_inforp, exif: [*c]png_bytep) png_uint_32;
pub extern fn png_set_eXIf(noalias png_ptr: png_const_structrp, noalias info_ptr: png_inforp, exif: png_bytep) void;
pub extern fn png_get_eXIf_1(noalias png_ptr: png_const_structrp, noalias info_ptr: png_const_inforp, num_exif: [*c]png_uint_32, exif: [*c]png_bytep) png_uint_32;
pub extern fn png_set_eXIf_1(noalias png_ptr: png_const_structrp, noalias info_ptr: png_inforp, num_exif: png_uint_32, exif: png_bytep) void;
pub extern fn png_get_gAMA(noalias png_ptr: png_const_structrp, noalias info_ptr: png_const_inforp, file_gamma: [*c]f64) png_uint_32;
pub extern fn png_get_gAMA_fixed(noalias png_ptr: png_const_structrp, noalias info_ptr: png_const_inforp, int_file_gamma: [*c]png_fixed_point) png_uint_32;
pub extern fn png_set_gAMA(noalias png_ptr: png_const_structrp, noalias info_ptr: png_inforp, file_gamma: f64) void;
pub extern fn png_set_gAMA_fixed(noalias png_ptr: png_const_structrp, noalias info_ptr: png_inforp, int_file_gamma: png_fixed_point) void;
pub extern fn png_get_hIST(noalias png_ptr: png_const_structrp, noalias info_ptr: png_inforp, hist: [*c]png_uint_16p) png_uint_32;
pub extern fn png_set_hIST(noalias png_ptr: png_const_structrp, noalias info_ptr: png_inforp, hist: png_const_uint_16p) void;
pub extern fn png_get_IHDR(noalias png_ptr: png_const_structrp, noalias info_ptr: png_const_inforp, width: [*c]png_uint_32, height: [*c]png_uint_32, bit_depth: [*c]c_int, color_type: [*c]c_int, interlace_method: [*c]c_int, compression_method: [*c]c_int, filter_method: [*c]c_int) png_uint_32;
pub extern fn png_set_IHDR(noalias png_ptr: png_const_structrp, noalias info_ptr: png_inforp, width: png_uint_32, height: png_uint_32, bit_depth: c_int, color_type: c_int, interlace_method: c_int, compression_method: c_int, filter_method: c_int) void;
pub extern fn png_get_oFFs(noalias png_ptr: png_const_structrp, noalias info_ptr: png_const_inforp, offset_x: [*c]png_int_32, offset_y: [*c]png_int_32, unit_type: [*c]c_int) png_uint_32;
pub extern fn png_set_oFFs(noalias png_ptr: png_const_structrp, noalias info_ptr: png_inforp, offset_x: png_int_32, offset_y: png_int_32, unit_type: c_int) void;
pub extern fn png_get_pCAL(noalias png_ptr: png_const_structrp, noalias info_ptr: png_inforp, purpose: [*c]png_charp, X0: [*c]png_int_32, X1: [*c]png_int_32, @"type": [*c]c_int, nparams: [*c]c_int, units: [*c]png_charp, params: [*c]png_charpp) png_uint_32;
pub extern fn png_set_pCAL(noalias png_ptr: png_const_structrp, noalias info_ptr: png_inforp, purpose: png_const_charp, X0: png_int_32, X1: png_int_32, @"type": c_int, nparams: c_int, units: png_const_charp, params: png_charpp) void;
pub extern fn png_get_pHYs(noalias png_ptr: png_const_structrp, noalias info_ptr: png_const_inforp, res_x: [*c]png_uint_32, res_y: [*c]png_uint_32, unit_type: [*c]c_int) png_uint_32;
pub extern fn png_set_pHYs(noalias png_ptr: png_const_structrp, noalias info_ptr: png_inforp, res_x: png_uint_32, res_y: png_uint_32, unit_type: c_int) void;
pub extern fn png_get_PLTE(noalias png_ptr: png_const_structrp, noalias info_ptr: png_inforp, palette: [*c]png_colorp, num_palette: [*c]c_int) png_uint_32;
pub extern fn png_set_PLTE(noalias png_ptr: png_structrp, noalias info_ptr: png_inforp, palette: png_const_colorp, num_palette: c_int) void;
pub extern fn png_get_sBIT(noalias png_ptr: png_const_structrp, noalias info_ptr: png_inforp, sig_bit: [*c]png_color_8p) png_uint_32;
pub extern fn png_set_sBIT(noalias png_ptr: png_const_structrp, noalias info_ptr: png_inforp, sig_bit: png_const_color_8p) void;
pub extern fn png_get_sRGB(noalias png_ptr: png_const_structrp, noalias info_ptr: png_const_inforp, file_srgb_intent: [*c]c_int) png_uint_32;
pub extern fn png_set_sRGB(noalias png_ptr: png_const_structrp, noalias info_ptr: png_inforp, srgb_intent: c_int) void;
pub extern fn png_set_sRGB_gAMA_and_cHRM(noalias png_ptr: png_const_structrp, noalias info_ptr: png_inforp, srgb_intent: c_int) void;
pub extern fn png_get_iCCP(noalias png_ptr: png_const_structrp, noalias info_ptr: png_inforp, name: png_charpp, compression_type: [*c]c_int, profile: png_bytepp, proflen: [*c]png_uint_32) png_uint_32;
pub extern fn png_set_iCCP(noalias png_ptr: png_const_structrp, noalias info_ptr: png_inforp, name: png_const_charp, compression_type: c_int, profile: png_const_bytep, proflen: png_uint_32) void;
pub extern fn png_get_sPLT(noalias png_ptr: png_const_structrp, noalias info_ptr: png_inforp, entries: png_sPLT_tpp) c_int;
pub extern fn png_set_sPLT(noalias png_ptr: png_const_structrp, noalias info_ptr: png_inforp, entries: png_const_sPLT_tp, nentries: c_int) void;
pub extern fn png_get_text(noalias png_ptr: png_const_structrp, noalias info_ptr: png_inforp, text_ptr: [*c]png_textp, num_text: [*c]c_int) c_int;
pub extern fn png_set_text(noalias png_ptr: png_const_structrp, noalias info_ptr: png_inforp, text_ptr: png_const_textp, num_text: c_int) void;
pub extern fn png_get_tIME(noalias png_ptr: png_const_structrp, noalias info_ptr: png_inforp, mod_time: [*c]png_timep) png_uint_32;
pub extern fn png_set_tIME(noalias png_ptr: png_const_structrp, noalias info_ptr: png_inforp, mod_time: png_const_timep) void;
pub extern fn png_get_tRNS(noalias png_ptr: png_const_structrp, noalias info_ptr: png_inforp, trans_alpha: [*c]png_bytep, num_trans: [*c]c_int, trans_color: [*c]png_color_16p) png_uint_32;
pub extern fn png_set_tRNS(noalias png_ptr: png_structrp, noalias info_ptr: png_inforp, trans_alpha: png_const_bytep, num_trans: c_int, trans_color: png_const_color_16p) void;
pub extern fn png_get_sCAL(noalias png_ptr: png_const_structrp, noalias info_ptr: png_const_inforp, unit: [*c]c_int, width: [*c]f64, height: [*c]f64) png_uint_32;
pub extern fn png_get_sCAL_fixed(noalias png_ptr: png_const_structrp, noalias info_ptr: png_const_inforp, unit: [*c]c_int, width: [*c]png_fixed_point, height: [*c]png_fixed_point) png_uint_32;
pub extern fn png_get_sCAL_s(noalias png_ptr: png_const_structrp, noalias info_ptr: png_const_inforp, unit: [*c]c_int, swidth: png_charpp, sheight: png_charpp) png_uint_32;
pub extern fn png_set_sCAL(noalias png_ptr: png_const_structrp, noalias info_ptr: png_inforp, unit: c_int, width: f64, height: f64) void;
pub extern fn png_set_sCAL_fixed(noalias png_ptr: png_const_structrp, noalias info_ptr: png_inforp, unit: c_int, width: png_fixed_point, height: png_fixed_point) void;
pub extern fn png_set_sCAL_s(noalias png_ptr: png_const_structrp, noalias info_ptr: png_inforp, unit: c_int, swidth: png_const_charp, sheight: png_const_charp) void;
pub extern fn png_set_keep_unknown_chunks(noalias png_ptr: png_structrp, keep: c_int, chunk_list: png_const_bytep, num_chunks: c_int) void;
pub extern fn png_handle_as_unknown(noalias png_ptr: png_const_structrp, chunk_name: png_const_bytep) c_int;
pub extern fn png_set_unknown_chunks(noalias png_ptr: png_const_structrp, noalias info_ptr: png_inforp, unknowns: png_const_unknown_chunkp, num_unknowns: c_int) void;
pub extern fn png_set_unknown_chunk_location(noalias png_ptr: png_const_structrp, noalias info_ptr: png_inforp, chunk: c_int, location: c_int) void;
pub extern fn png_get_unknown_chunks(noalias png_ptr: png_const_structrp, noalias info_ptr: png_inforp, entries: png_unknown_chunkpp) c_int;
pub extern fn png_set_invalid(noalias png_ptr: png_const_structrp, noalias info_ptr: png_inforp, mask: c_int) void;
pub extern fn png_read_png(noalias png_ptr: png_structrp, noalias info_ptr: png_inforp, transforms: c_int, params: png_voidp) void;
pub extern fn png_write_png(noalias png_ptr: png_structrp, noalias info_ptr: png_inforp, transforms: c_int, params: png_voidp) void;
pub extern fn png_get_copyright(noalias png_ptr: png_const_structrp) png_const_charp;
pub extern fn png_get_header_ver(noalias png_ptr: png_const_structrp) png_const_charp;
pub extern fn png_get_header_version(noalias png_ptr: png_const_structrp) png_const_charp;
pub extern fn png_get_libpng_ver(noalias png_ptr: png_const_structrp) png_const_charp;
pub extern fn png_permit_mng_features(noalias png_ptr: png_structrp, mng_features_permitted: png_uint_32) png_uint_32;
pub extern fn png_set_user_limits(noalias png_ptr: png_structrp, user_width_max: png_uint_32, user_height_max: png_uint_32) void;
pub extern fn png_get_user_width_max(noalias png_ptr: png_const_structrp) png_uint_32;
pub extern fn png_get_user_height_max(noalias png_ptr: png_const_structrp) png_uint_32;
pub extern fn png_set_chunk_cache_max(noalias png_ptr: png_structrp, user_chunk_cache_max: png_uint_32) void;
pub extern fn png_get_chunk_cache_max(noalias png_ptr: png_const_structrp) png_uint_32;
pub extern fn png_set_chunk_malloc_max(noalias png_ptr: png_structrp, user_chunk_cache_max: png_alloc_size_t) void;
pub extern fn png_get_chunk_malloc_max(noalias png_ptr: png_const_structrp) png_alloc_size_t;
pub extern fn png_get_pixels_per_inch(noalias png_ptr: png_const_structrp, noalias info_ptr: png_const_inforp) png_uint_32;
pub extern fn png_get_x_pixels_per_inch(noalias png_ptr: png_const_structrp, noalias info_ptr: png_const_inforp) png_uint_32;
pub extern fn png_get_y_pixels_per_inch(noalias png_ptr: png_const_structrp, noalias info_ptr: png_const_inforp) png_uint_32;
pub extern fn png_get_x_offset_inches(noalias png_ptr: png_const_structrp, noalias info_ptr: png_const_inforp) f32;
pub extern fn png_get_x_offset_inches_fixed(noalias png_ptr: png_const_structrp, noalias info_ptr: png_const_inforp) png_fixed_point;
pub extern fn png_get_y_offset_inches(noalias png_ptr: png_const_structrp, noalias info_ptr: png_const_inforp) f32;
pub extern fn png_get_y_offset_inches_fixed(noalias png_ptr: png_const_structrp, noalias info_ptr: png_const_inforp) png_fixed_point;
pub extern fn png_get_pHYs_dpi(noalias png_ptr: png_const_structrp, noalias info_ptr: png_const_inforp, res_x: [*c]png_uint_32, res_y: [*c]png_uint_32, unit_type: [*c]c_int) png_uint_32;
pub extern fn png_get_io_state(noalias png_ptr: png_const_structrp) png_uint_32;
pub extern fn png_get_io_chunk_type(noalias png_ptr: png_const_structrp) png_uint_32;
pub extern fn png_get_uint_32(buf: png_const_bytep) png_uint_32;
pub extern fn png_get_uint_16(buf: png_const_bytep) png_uint_16;
pub extern fn png_get_int_32(buf: png_const_bytep) png_int_32;
pub extern fn png_get_uint_31(noalias png_ptr: png_const_structrp, buf: png_const_bytep) png_uint_32;
pub extern fn png_save_uint_32(buf: png_bytep, i: png_uint_32) void;
pub extern fn png_save_int_32(buf: png_bytep, i: png_int_32) void;
pub extern fn png_save_uint_16(buf: png_bytep, i: c_uint) void;
pub extern fn png_set_check_for_invalid_index(noalias png_ptr: png_structrp, allowed: c_int) void;
pub extern fn png_get_palette_max(png_ptr: png_const_structp, info_ptr: png_const_infop) c_int;
pub const struct_png_control = opaque {};
pub const png_controlp = ?*struct_png_control;
pub const png_image = extern struct {
    @"opaque": png_controlp,
    version: png_uint_32,
    width: png_uint_32,
    height: png_uint_32,
    format: png_uint_32,
    flags: png_uint_32,
    colormap_entries: png_uint_32,
    warning_or_error: png_uint_32,
    message: [64]u8,
};
pub const png_imagep = [*c]png_image;
pub extern fn png_image_begin_read_from_file(image: png_imagep, file_name: [*c]const u8) c_int;
pub extern fn png_image_begin_read_from_stdio(image: png_imagep, file: [*c]FILE) c_int;
pub extern fn png_image_begin_read_from_memory(image: png_imagep, memory: png_const_voidp, size: usize) c_int;
pub extern fn png_image_finish_read(image: png_imagep, background: png_const_colorp, buffer: ?*anyopaque, row_stride: png_int_32, colormap: ?*anyopaque) c_int;
pub extern fn png_image_free(image: png_imagep) void;
pub extern fn png_image_write_to_file(image: png_imagep, file: [*c]const u8, convert_to_8bit: c_int, buffer: ?*const anyopaque, row_stride: png_int_32, colormap: ?*const anyopaque) c_int;
pub extern fn png_image_write_to_stdio(image: png_imagep, file: [*c]FILE, convert_to_8_bit: c_int, buffer: ?*const anyopaque, row_stride: png_int_32, colormap: ?*const anyopaque) c_int;
pub extern fn png_image_write_to_memory(image: png_imagep, memory: ?*anyopaque, noalias memory_bytes: [*c]png_alloc_size_t, convert_to_8_bit: c_int, buffer: ?*const anyopaque, row_stride: png_int_32, colormap: ?*const anyopaque) c_int;
pub extern fn png_set_option(noalias png_ptr: png_structrp, option: c_int, onoff: c_int) c_int;
pub extern fn png_get_acTL(png_ptr: png_structp, info_ptr: png_infop, num_frames: [*c]png_uint_32, num_plays: [*c]png_uint_32) png_uint_32;
pub extern fn png_set_acTL(png_ptr: png_structp, info_ptr: png_infop, num_frames: png_uint_32, num_plays: png_uint_32) png_uint_32;
pub extern fn png_get_num_frames(png_ptr: png_structp, info_ptr: png_infop) png_uint_32;
pub extern fn png_get_num_plays(png_ptr: png_structp, info_ptr: png_infop) png_uint_32;
pub extern fn png_get_next_frame_fcTL(png_ptr: png_structp, info_ptr: png_infop, width: [*c]png_uint_32, height: [*c]png_uint_32, x_offset: [*c]png_uint_32, y_offset: [*c]png_uint_32, delay_num: [*c]png_uint_16, delay_den: [*c]png_uint_16, dispose_op: [*c]png_byte, blend_op: [*c]png_byte) png_uint_32;
pub extern fn png_set_next_frame_fcTL(png_ptr: png_structp, info_ptr: png_infop, width: png_uint_32, height: png_uint_32, x_offset: png_uint_32, y_offset: png_uint_32, delay_num: png_uint_16, delay_den: png_uint_16, dispose_op: png_byte, blend_op: png_byte) png_uint_32;
pub extern fn png_get_next_frame_width(png_ptr: png_structp, info_ptr: png_infop) png_uint_32;
pub extern fn png_get_next_frame_height(png_ptr: png_structp, info_ptr: png_infop) png_uint_32;
pub extern fn png_get_next_frame_x_offset(png_ptr: png_structp, info_ptr: png_infop) png_uint_32;
pub extern fn png_get_next_frame_y_offset(png_ptr: png_structp, info_ptr: png_infop) png_uint_32;
pub extern fn png_get_next_frame_delay_num(png_ptr: png_structp, info_ptr: png_infop) png_uint_16;
pub extern fn png_get_next_frame_delay_den(png_ptr: png_structp, info_ptr: png_infop) png_uint_16;
pub extern fn png_get_next_frame_dispose_op(png_ptr: png_structp, info_ptr: png_infop) png_byte;
pub extern fn png_get_next_frame_blend_op(png_ptr: png_structp, info_ptr: png_infop) png_byte;
pub extern fn png_get_first_frame_is_hidden(png_ptr: png_structp, info_ptr: png_infop) png_byte;
pub extern fn png_set_first_frame_is_hidden(png_ptr: png_structp, info_ptr: png_infop, is_hidden: png_byte) png_uint_32;
pub extern fn png_read_frame_head(png_ptr: png_structp, info_ptr: png_infop) void;
pub extern fn png_set_progressive_frame_fn(png_ptr: png_structp, frame_info_fn: png_progressive_frame_ptr, frame_end_fn: png_progressive_frame_ptr) void;
pub extern fn png_write_frame_head(png_ptr: png_structp, info_ptr: png_infop, row_pointers: png_bytepp, width: png_uint_32, height: png_uint_32, x_offset: png_uint_32, y_offset: png_uint_32, delay_num: png_uint_16, delay_den: png_uint_16, dispose_op: png_byte, blend_op: png_byte) void;
pub extern fn png_write_frame_tail(png_ptr: png_structp, info_ptr: png_infop) void;
pub export fn get_image_info(arg_filename: [*c]const u8, arg_width: [*c]c_int, arg_height: [*c]c_int, arg_color_type: [*c]c_int, arg_bit_depth: [*c]c_int) void {
    var filename = arg_filename;
    var width = arg_width;
    var height = arg_height;
    var color_type = arg_color_type;
    var bit_depth = arg_bit_depth;
    var fp: [*c]FILE = fopen(filename, "rb");
    if (!(fp != null)) {
        _ = fprintf(stderr, "Error: Couldn't open %s for reading\n", filename);
        abort();
    }
    var header: [8]png_byte = undefined;
    _ = fread(@as(?*anyopaque, @ptrCast(@as([*c]png_byte, @ptrCast(@alignCast(&header))))), @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))), @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 8)))), fp);
    if (png_sig_cmp(@as([*c]png_byte, @ptrCast(@alignCast(&header))), @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))), @as(usize, @bitCast(@as(c_long, @as(c_int, 8))))) != 0) {
        _ = fprintf(stderr, "Error: %s is not a valid PNG file\n", filename);
        _ = fclose(fp);
        abort();
    }
    var png: png_structp = png_create_read_struct("1.6.37", @as(?*anyopaque, @ptrFromInt(@as(c_int, 0))), null, null);
    if (!(png != null)) {
        _ = fprintf(stderr, "Error: Couldn't create read struct\n");
        _ = fclose(fp);
        abort();
    }
    var info: png_infop = png_create_info_struct(png);
    if (!(info != null)) {
        _ = fprintf(stderr, "Error: Couldn't create info struct\n");
        png_destroy_read_struct(&png, null, null);
        _ = fclose(fp);
        abort();
    }
    if (_setjmp(@as([*c]struct___jmp_buf_tag, @ptrCast(@alignCast(&png_set_longjmp_fn(png, @as(png_longjmp_ptr, @ptrCast(@alignCast(&longjmp))), @sizeOf(jmp_buf)).*)))) != 0) {
        _ = fprintf(stderr, "Error: An error occurred during PNG file reading\n");
        png_destroy_read_struct(&png, &info, null);
        _ = fclose(fp);
        abort();
    }
    png_init_io(png, fp);
    png_set_sig_bytes(png, @as(c_int, 8));
    png_read_info(png, info);
    width.* = @as(c_int, @bitCast(png_get_image_width(png, info)));
    height.* = @as(c_int, @bitCast(png_get_image_height(png, info)));
    color_type.* = @as(c_int, @bitCast(@as(c_uint, png_get_color_type(png, info))));
    bit_depth.* = @as(c_int, @bitCast(@as(c_uint, png_get_bit_depth(png, info))));
    png_destroy_read_struct(&png, &info, null);
    _ = fclose(fp);
}
pub export fn main(arg_argc: c_int, arg_argv: [*c][*c]u8) c_int {
    var argc = arg_argc;
    var argv = arg_argv;
    if (argc != @as(c_int, 2)) {
        _ = fprintf(stderr, "Usage: %s <input_png_file>\n", argv[@as(c_uint, @intCast(@as(c_int, 0)))]);
        return 1;
    }
    var input_filename: [*c]const u8 = argv[@as(c_uint, @intCast(@as(c_int, 1)))];
    var width: c_int = undefined;
    var height: c_int = undefined;
    var color_type: c_int = undefined;
    var bit_depth: c_int = undefined;
    get_image_info(input_filename, &width, &height, &color_type, &bit_depth);
    _ = printf("Width: %d, Height: %d, Color Type: %d, Bit Depth: %d\n", width, height, color_type, bit_depth);
    return 0;
}
pub const __INTMAX_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `L`"); // (no file):80:9
pub const __UINTMAX_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `UL`"); // (no file):86:9
pub const __FLT16_DENORM_MIN__ = @compileError("unable to translate C expr: unexpected token 'IntegerLiteral'"); // (no file):109:9
pub const __FLT16_EPSILON__ = @compileError("unable to translate C expr: unexpected token 'IntegerLiteral'"); // (no file):113:9
pub const __FLT16_MAX__ = @compileError("unable to translate C expr: unexpected token 'IntegerLiteral'"); // (no file):119:9
pub const __FLT16_MIN__ = @compileError("unable to translate C expr: unexpected token 'IntegerLiteral'"); // (no file):122:9
pub const __INT64_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `L`"); // (no file):183:9
pub const __UINT32_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `U`"); // (no file):205:9
pub const __UINT64_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `UL`"); // (no file):213:9
pub const __seg_gs = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // (no file):342:9
pub const __seg_fs = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // (no file):343:9
pub const __GLIBC_USE = @compileError("unable to translate macro: undefined identifier `__GLIBC_USE_`"); // /usr/include/features.h:186:9
pub const __glibc_has_attribute = @compileError("unable to translate macro: undefined identifier `__has_attribute`"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:45:10
pub const __glibc_has_extension = @compileError("unable to translate macro: undefined identifier `__has_extension`"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:55:10
pub const __THROW = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:79:11
pub const __THROWNL = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:80:11
pub const __NTH = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:81:11
pub const __NTHNL = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:82:11
pub const __CONCAT = @compileError("unable to translate C expr: unexpected token '##'"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:124:9
pub const __STRING = @compileError("unable to translate C expr: unexpected token '#'"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:125:9
pub const __glibc_unsigned_or_positive = @compileError("unable to translate macro: undefined identifier `__typeof`"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:160:9
pub const __glibc_fortify = @compileError("unable to translate C expr: expected ')' instead got '...'"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:185:9
pub const __glibc_fortify_n = @compileError("unable to translate C expr: expected ')' instead got '...'"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:195:9
pub const __warnattr = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:207:10
pub const __errordecl = @compileError("unable to translate C expr: unexpected token 'extern'"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:208:10
pub const __flexarr = @compileError("unable to translate C expr: unexpected token '['"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:216:10
pub const __REDIRECT = @compileError("unable to translate macro: undefined identifier `__asm__`"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:247:10
pub const __REDIRECT_NTH = @compileError("unable to translate macro: undefined identifier `__asm__`"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:254:11
pub const __REDIRECT_NTHNL = @compileError("unable to translate macro: undefined identifier `__asm__`"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:256:11
pub const __ASMNAME2 = @compileError("unable to translate C expr: unexpected token 'Identifier'"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:260:10
pub const __attribute_malloc__ = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:281:10
pub const __attribute_alloc_size__ = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:292:10
pub const __attribute_alloc_align__ = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:298:10
pub const __attribute_pure__ = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:308:10
pub const __attribute_const__ = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:315:10
pub const __attribute_maybe_unused__ = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:321:10
pub const __attribute_used__ = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:330:10
pub const __attribute_noinline__ = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:331:10
pub const __attribute_deprecated__ = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:339:10
pub const __attribute_deprecated_msg__ = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:349:10
pub const __attribute_format_arg__ = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:362:10
pub const __attribute_format_strfmon__ = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:372:10
pub const __attribute_nonnull__ = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:384:11
pub const __returns_nonnull = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:397:10
pub const __attribute_warn_unused_result__ = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:406:10
pub const __always_inline = @compileError("unable to translate macro: undefined identifier `__inline`"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:424:10
pub const __attribute_artificial__ = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:433:10
pub const __extern_inline = @compileError("unable to translate macro: undefined identifier `__inline`"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:451:11
pub const __extern_always_inline = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:452:11
pub const __restrict_arr = @compileError("unable to translate macro: undefined identifier `__restrict`"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:495:10
pub const __attribute_copy__ = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:544:10
pub const __LDBL_REDIR2_DECL = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:620:10
pub const __LDBL_REDIR_DECL = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:621:10
pub const __glibc_macro_warning1 = @compileError("unable to translate macro: undefined identifier `_Pragma`"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:635:10
pub const __glibc_macro_warning = @compileError("unable to translate macro: undefined identifier `GCC`"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:636:10
pub const __fortified_attr_access = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:681:11
pub const __attr_access = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:682:11
pub const __attr_access_none = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:683:11
pub const __attr_dealloc = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:693:10
pub const __attribute_returns_twice__ = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:700:10
pub const __STD_TYPE = @compileError("unable to translate C expr: unexpected token 'typedef'"); // /usr/include/x86_64-linux-gnu/bits/types.h:137:10
pub const __FSID_T_TYPE = @compileError("unable to translate macro: undefined identifier `__val`"); // /usr/include/x86_64-linux-gnu/bits/typesizes.h:73:9
pub const __getc_unlocked_body = @compileError("TODO postfix inc/dec expr"); // /usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h:102:9
pub const __putc_unlocked_body = @compileError("TODO postfix inc/dec expr"); // /usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h:106:9
pub const __CFLOAT32 = @compileError("unable to translate: TODO _Complex"); // /usr/include/x86_64-linux-gnu/bits/floatn-common.h:149:12
pub const __CFLOAT64 = @compileError("unable to translate: TODO _Complex"); // /usr/include/x86_64-linux-gnu/bits/floatn-common.h:160:13
pub const __CFLOAT32X = @compileError("unable to translate: TODO _Complex"); // /usr/include/x86_64-linux-gnu/bits/floatn-common.h:169:12
pub const __CFLOAT64X = @compileError("unable to translate: TODO _Complex"); // /usr/include/x86_64-linux-gnu/bits/floatn-common.h:178:13
pub const __builtin_nansf32 = @compileError("unable to translate macro: undefined identifier `__builtin_nansf`"); // /usr/include/x86_64-linux-gnu/bits/floatn-common.h:221:12
pub const __builtin_huge_valf64 = @compileError("unable to translate macro: undefined identifier `__builtin_huge_val`"); // /usr/include/x86_64-linux-gnu/bits/floatn-common.h:255:13
pub const __builtin_inff64 = @compileError("unable to translate macro: undefined identifier `__builtin_inf`"); // /usr/include/x86_64-linux-gnu/bits/floatn-common.h:256:13
pub const __builtin_nanf64 = @compileError("unable to translate macro: undefined identifier `__builtin_nan`"); // /usr/include/x86_64-linux-gnu/bits/floatn-common.h:257:13
pub const __builtin_nansf64 = @compileError("unable to translate macro: undefined identifier `__builtin_nans`"); // /usr/include/x86_64-linux-gnu/bits/floatn-common.h:258:13
pub const __builtin_huge_valf32x = @compileError("unable to translate macro: undefined identifier `__builtin_huge_val`"); // /usr/include/x86_64-linux-gnu/bits/floatn-common.h:272:12
pub const __builtin_inff32x = @compileError("unable to translate macro: undefined identifier `__builtin_inf`"); // /usr/include/x86_64-linux-gnu/bits/floatn-common.h:273:12
pub const __builtin_nanf32x = @compileError("unable to translate macro: undefined identifier `__builtin_nan`"); // /usr/include/x86_64-linux-gnu/bits/floatn-common.h:274:12
pub const __builtin_nansf32x = @compileError("unable to translate macro: undefined identifier `__builtin_nans`"); // /usr/include/x86_64-linux-gnu/bits/floatn-common.h:275:12
pub const __builtin_huge_valf64x = @compileError("unable to translate macro: undefined identifier `__builtin_huge_vall`"); // /usr/include/x86_64-linux-gnu/bits/floatn-common.h:289:13
pub const __builtin_inff64x = @compileError("unable to translate macro: undefined identifier `__builtin_infl`"); // /usr/include/x86_64-linux-gnu/bits/floatn-common.h:290:13
pub const __builtin_nanf64x = @compileError("unable to translate macro: undefined identifier `__builtin_nanl`"); // /usr/include/x86_64-linux-gnu/bits/floatn-common.h:291:13
pub const __builtin_nansf64x = @compileError("unable to translate macro: undefined identifier `__builtin_nansl`"); // /usr/include/x86_64-linux-gnu/bits/floatn-common.h:292:13
pub const __FD_ZERO = @compileError("unable to translate macro: undefined identifier `__i`"); // /usr/include/x86_64-linux-gnu/bits/select.h:25:9
pub const __FD_SET = @compileError("unable to translate C expr: expected ')' instead got '|='"); // /usr/include/x86_64-linux-gnu/bits/select.h:32:9
pub const __FD_CLR = @compileError("unable to translate C expr: expected ')' instead got '&='"); // /usr/include/x86_64-linux-gnu/bits/select.h:34:9
pub const __PTHREAD_MUTEX_INITIALIZER = @compileError("unable to translate C expr: unexpected token '{'"); // /usr/include/x86_64-linux-gnu/bits/struct_mutex.h:56:10
pub const __PTHREAD_RWLOCK_ELISION_EXTRA = @compileError("unable to translate C expr: unexpected token '{'"); // /usr/include/x86_64-linux-gnu/bits/struct_rwlock.h:40:11
pub const __ONCE_FLAG_INIT = @compileError("unable to translate C expr: unexpected token '{'"); // /usr/include/x86_64-linux-gnu/bits/thread-shared-types.h:113:9
pub const PNG_LINKAGE_API = @compileError("unable to translate C expr: unexpected token 'extern'"); // /usr/include/pnglibconf.h:197:9
pub const PNG_LINKAGE_CALLBACK = @compileError("unable to translate C expr: unexpected token 'extern'"); // /usr/include/pnglibconf.h:198:9
pub const PNG_LINKAGE_DATA = @compileError("unable to translate C expr: unexpected token 'extern'"); // /usr/include/pnglibconf.h:199:9
pub const PNG_LINKAGE_FUNCTION = @compileError("unable to translate C expr: unexpected token 'extern'"); // /usr/include/pnglibconf.h:200:9
pub const offsetof = @compileError("unable to translate macro: undefined identifier `__builtin_offsetof`"); // /snap/zig/8241/lib/include/stddef.h:111:9
pub const PNG_CONST = @compileError("unable to translate C expr: unexpected token 'const'"); // /usr/include/pngconf.h:64:9
pub const PNG_REMOVED = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /usr/include/pngconf.h:315:11
pub const PNG_CALLBACK = @compileError("unable to translate C expr: unexpected token 'Identifier'"); // /usr/include/pngconf.h:319:11
pub const PNG_USE_RESULT = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/pngconf.h:345:15
pub const PNG_NORETURN = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/pngconf.h:348:15
pub const PNG_ALLOCATED = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/pngconf.h:351:15
pub const PNG_DEPRECATED = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/pngconf.h:354:15
pub const PNG_PRIVATE = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/pngconf.h:359:19
pub const PNG_RESTRICT = @compileError("unable to translate macro: undefined identifier `__restrict`"); // /usr/include/pngconf.h:365:15
pub const PNG_FP_EXPORT = @compileError("unable to translate C expr: unexpected token ';'"); // /usr/include/pngconf.h:450:14
pub const PNG_FIXED_EXPORT = @compileError("unable to translate C expr: unexpected token ';'"); // /usr/include/pngconf.h:458:14
pub const png_composite = @compileError("unable to translate macro: undefined identifier `temp`"); // /usr/include/png.h:2533:11
pub const png_composite_16 = @compileError("unable to translate macro: undefined identifier `temp`"); // /usr/include/png.h:2542:11
pub const __llvm__ = @as(c_int, 1);
pub const __clang__ = @as(c_int, 1);
pub const __clang_major__ = @as(c_int, 16);
pub const __clang_minor__ = @as(c_int, 0);
pub const __clang_patchlevel__ = @as(c_int, 6);
pub const __clang_version__ = "16.0.6 (https://github.com/ziglang/zig-bootstrap 1dda86241204c4649f668d46b6a37feed707c7b4)";
pub const __GNUC__ = @as(c_int, 4);
pub const __GNUC_MINOR__ = @as(c_int, 2);
pub const __GNUC_PATCHLEVEL__ = @as(c_int, 1);
pub const __GXX_ABI_VERSION = @as(c_int, 1002);
pub const __ATOMIC_RELAXED = @as(c_int, 0);
pub const __ATOMIC_CONSUME = @as(c_int, 1);
pub const __ATOMIC_ACQUIRE = @as(c_int, 2);
pub const __ATOMIC_RELEASE = @as(c_int, 3);
pub const __ATOMIC_ACQ_REL = @as(c_int, 4);
pub const __ATOMIC_SEQ_CST = @as(c_int, 5);
pub const __OPENCL_MEMORY_SCOPE_WORK_ITEM = @as(c_int, 0);
pub const __OPENCL_MEMORY_SCOPE_WORK_GROUP = @as(c_int, 1);
pub const __OPENCL_MEMORY_SCOPE_DEVICE = @as(c_int, 2);
pub const __OPENCL_MEMORY_SCOPE_ALL_SVM_DEVICES = @as(c_int, 3);
pub const __OPENCL_MEMORY_SCOPE_SUB_GROUP = @as(c_int, 4);
pub const __PRAGMA_REDEFINE_EXTNAME = @as(c_int, 1);
pub const __VERSION__ = "Clang 16.0.6 (https://github.com/ziglang/zig-bootstrap 1dda86241204c4649f668d46b6a37feed707c7b4)";
pub const __OBJC_BOOL_IS_BOOL = @as(c_int, 0);
pub const __CONSTANT_CFSTRINGS__ = @as(c_int, 1);
pub const __clang_literal_encoding__ = "UTF-8";
pub const __clang_wide_literal_encoding__ = "UTF-32";
pub const __ORDER_LITTLE_ENDIAN__ = @as(c_int, 1234);
pub const __ORDER_BIG_ENDIAN__ = @as(c_int, 4321);
pub const __ORDER_PDP_ENDIAN__ = @as(c_int, 3412);
pub const __BYTE_ORDER__ = __ORDER_LITTLE_ENDIAN__;
pub const __LITTLE_ENDIAN__ = @as(c_int, 1);
pub const _LP64 = @as(c_int, 1);
pub const __LP64__ = @as(c_int, 1);
pub const __CHAR_BIT__ = @as(c_int, 8);
pub const __BOOL_WIDTH__ = @as(c_int, 8);
pub const __SHRT_WIDTH__ = @as(c_int, 16);
pub const __INT_WIDTH__ = @as(c_int, 32);
pub const __LONG_WIDTH__ = @as(c_int, 64);
pub const __LLONG_WIDTH__ = @as(c_int, 64);
pub const __BITINT_MAXWIDTH__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 8388608, .decimal);
pub const __SCHAR_MAX__ = @as(c_int, 127);
pub const __SHRT_MAX__ = @as(c_int, 32767);
pub const __INT_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __LONG_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __LONG_LONG_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __WCHAR_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __WCHAR_WIDTH__ = @as(c_int, 32);
pub const __WINT_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __WINT_WIDTH__ = @as(c_int, 32);
pub const __INTMAX_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INTMAX_WIDTH__ = @as(c_int, 64);
pub const __SIZE_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __SIZE_WIDTH__ = @as(c_int, 64);
pub const __UINTMAX_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINTMAX_WIDTH__ = @as(c_int, 64);
pub const __PTRDIFF_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __PTRDIFF_WIDTH__ = @as(c_int, 64);
pub const __INTPTR_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INTPTR_WIDTH__ = @as(c_int, 64);
pub const __UINTPTR_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINTPTR_WIDTH__ = @as(c_int, 64);
pub const __SIZEOF_DOUBLE__ = @as(c_int, 8);
pub const __SIZEOF_FLOAT__ = @as(c_int, 4);
pub const __SIZEOF_INT__ = @as(c_int, 4);
pub const __SIZEOF_LONG__ = @as(c_int, 8);
pub const __SIZEOF_LONG_DOUBLE__ = @as(c_int, 16);
pub const __SIZEOF_LONG_LONG__ = @as(c_int, 8);
pub const __SIZEOF_POINTER__ = @as(c_int, 8);
pub const __SIZEOF_SHORT__ = @as(c_int, 2);
pub const __SIZEOF_PTRDIFF_T__ = @as(c_int, 8);
pub const __SIZEOF_SIZE_T__ = @as(c_int, 8);
pub const __SIZEOF_WCHAR_T__ = @as(c_int, 4);
pub const __SIZEOF_WINT_T__ = @as(c_int, 4);
pub const __SIZEOF_INT128__ = @as(c_int, 16);
pub const __INTMAX_TYPE__ = c_long;
pub const __INTMAX_FMTd__ = "ld";
pub const __INTMAX_FMTi__ = "li";
pub const __UINTMAX_TYPE__ = c_ulong;
pub const __UINTMAX_FMTo__ = "lo";
pub const __UINTMAX_FMTu__ = "lu";
pub const __UINTMAX_FMTx__ = "lx";
pub const __UINTMAX_FMTX__ = "lX";
pub const __PTRDIFF_TYPE__ = c_long;
pub const __PTRDIFF_FMTd__ = "ld";
pub const __PTRDIFF_FMTi__ = "li";
pub const __INTPTR_TYPE__ = c_long;
pub const __INTPTR_FMTd__ = "ld";
pub const __INTPTR_FMTi__ = "li";
pub const __SIZE_TYPE__ = c_ulong;
pub const __SIZE_FMTo__ = "lo";
pub const __SIZE_FMTu__ = "lu";
pub const __SIZE_FMTx__ = "lx";
pub const __SIZE_FMTX__ = "lX";
pub const __WCHAR_TYPE__ = c_int;
pub const __WINT_TYPE__ = c_uint;
pub const __SIG_ATOMIC_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __SIG_ATOMIC_WIDTH__ = @as(c_int, 32);
pub const __CHAR16_TYPE__ = c_ushort;
pub const __CHAR32_TYPE__ = c_uint;
pub const __UINTPTR_TYPE__ = c_ulong;
pub const __UINTPTR_FMTo__ = "lo";
pub const __UINTPTR_FMTu__ = "lu";
pub const __UINTPTR_FMTx__ = "lx";
pub const __UINTPTR_FMTX__ = "lX";
pub const __FLT16_HAS_DENORM__ = @as(c_int, 1);
pub const __FLT16_DIG__ = @as(c_int, 3);
pub const __FLT16_DECIMAL_DIG__ = @as(c_int, 5);
pub const __FLT16_HAS_INFINITY__ = @as(c_int, 1);
pub const __FLT16_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __FLT16_MANT_DIG__ = @as(c_int, 11);
pub const __FLT16_MAX_10_EXP__ = @as(c_int, 4);
pub const __FLT16_MAX_EXP__ = @as(c_int, 16);
pub const __FLT16_MIN_10_EXP__ = -@as(c_int, 4);
pub const __FLT16_MIN_EXP__ = -@as(c_int, 13);
pub const __FLT_DENORM_MIN__ = @as(f32, 1.40129846e-45);
pub const __FLT_HAS_DENORM__ = @as(c_int, 1);
pub const __FLT_DIG__ = @as(c_int, 6);
pub const __FLT_DECIMAL_DIG__ = @as(c_int, 9);
pub const __FLT_EPSILON__ = @as(f32, 1.19209290e-7);
pub const __FLT_HAS_INFINITY__ = @as(c_int, 1);
pub const __FLT_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __FLT_MANT_DIG__ = @as(c_int, 24);
pub const __FLT_MAX_10_EXP__ = @as(c_int, 38);
pub const __FLT_MAX_EXP__ = @as(c_int, 128);
pub const __FLT_MAX__ = @as(f32, 3.40282347e+38);
pub const __FLT_MIN_10_EXP__ = -@as(c_int, 37);
pub const __FLT_MIN_EXP__ = -@as(c_int, 125);
pub const __FLT_MIN__ = @as(f32, 1.17549435e-38);
pub const __DBL_DENORM_MIN__ = @as(f64, 4.9406564584124654e-324);
pub const __DBL_HAS_DENORM__ = @as(c_int, 1);
pub const __DBL_DIG__ = @as(c_int, 15);
pub const __DBL_DECIMAL_DIG__ = @as(c_int, 17);
pub const __DBL_EPSILON__ = @as(f64, 2.2204460492503131e-16);
pub const __DBL_HAS_INFINITY__ = @as(c_int, 1);
pub const __DBL_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __DBL_MANT_DIG__ = @as(c_int, 53);
pub const __DBL_MAX_10_EXP__ = @as(c_int, 308);
pub const __DBL_MAX_EXP__ = @as(c_int, 1024);
pub const __DBL_MAX__ = @as(f64, 1.7976931348623157e+308);
pub const __DBL_MIN_10_EXP__ = -@as(c_int, 307);
pub const __DBL_MIN_EXP__ = -@as(c_int, 1021);
pub const __DBL_MIN__ = @as(f64, 2.2250738585072014e-308);
pub const __LDBL_DENORM_MIN__ = @as(c_longdouble, 3.64519953188247460253e-4951);
pub const __LDBL_HAS_DENORM__ = @as(c_int, 1);
pub const __LDBL_DIG__ = @as(c_int, 18);
pub const __LDBL_DECIMAL_DIG__ = @as(c_int, 21);
pub const __LDBL_EPSILON__ = @as(c_longdouble, 1.08420217248550443401e-19);
pub const __LDBL_HAS_INFINITY__ = @as(c_int, 1);
pub const __LDBL_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __LDBL_MANT_DIG__ = @as(c_int, 64);
pub const __LDBL_MAX_10_EXP__ = @as(c_int, 4932);
pub const __LDBL_MAX_EXP__ = @as(c_int, 16384);
pub const __LDBL_MAX__ = @as(c_longdouble, 1.18973149535723176502e+4932);
pub const __LDBL_MIN_10_EXP__ = -@as(c_int, 4931);
pub const __LDBL_MIN_EXP__ = -@as(c_int, 16381);
pub const __LDBL_MIN__ = @as(c_longdouble, 3.36210314311209350626e-4932);
pub const __POINTER_WIDTH__ = @as(c_int, 64);
pub const __BIGGEST_ALIGNMENT__ = @as(c_int, 16);
pub const __WINT_UNSIGNED__ = @as(c_int, 1);
pub const __INT8_TYPE__ = i8;
pub const __INT8_FMTd__ = "hhd";
pub const __INT8_FMTi__ = "hhi";
pub const __INT8_C_SUFFIX__ = "";
pub const __INT16_TYPE__ = c_short;
pub const __INT16_FMTd__ = "hd";
pub const __INT16_FMTi__ = "hi";
pub const __INT16_C_SUFFIX__ = "";
pub const __INT32_TYPE__ = c_int;
pub const __INT32_FMTd__ = "d";
pub const __INT32_FMTi__ = "i";
pub const __INT32_C_SUFFIX__ = "";
pub const __INT64_TYPE__ = c_long;
pub const __INT64_FMTd__ = "ld";
pub const __INT64_FMTi__ = "li";
pub const __UINT8_TYPE__ = u8;
pub const __UINT8_FMTo__ = "hho";
pub const __UINT8_FMTu__ = "hhu";
pub const __UINT8_FMTx__ = "hhx";
pub const __UINT8_FMTX__ = "hhX";
pub const __UINT8_C_SUFFIX__ = "";
pub const __UINT8_MAX__ = @as(c_int, 255);
pub const __INT8_MAX__ = @as(c_int, 127);
pub const __UINT16_TYPE__ = c_ushort;
pub const __UINT16_FMTo__ = "ho";
pub const __UINT16_FMTu__ = "hu";
pub const __UINT16_FMTx__ = "hx";
pub const __UINT16_FMTX__ = "hX";
pub const __UINT16_C_SUFFIX__ = "";
pub const __UINT16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __INT16_MAX__ = @as(c_int, 32767);
pub const __UINT32_TYPE__ = c_uint;
pub const __UINT32_FMTo__ = "o";
pub const __UINT32_FMTu__ = "u";
pub const __UINT32_FMTx__ = "x";
pub const __UINT32_FMTX__ = "X";
pub const __UINT32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __INT32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __UINT64_TYPE__ = c_ulong;
pub const __UINT64_FMTo__ = "lo";
pub const __UINT64_FMTu__ = "lu";
pub const __UINT64_FMTx__ = "lx";
pub const __UINT64_FMTX__ = "lX";
pub const __UINT64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __INT64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INT_LEAST8_TYPE__ = i8;
pub const __INT_LEAST8_MAX__ = @as(c_int, 127);
pub const __INT_LEAST8_WIDTH__ = @as(c_int, 8);
pub const __INT_LEAST8_FMTd__ = "hhd";
pub const __INT_LEAST8_FMTi__ = "hhi";
pub const __UINT_LEAST8_TYPE__ = u8;
pub const __UINT_LEAST8_MAX__ = @as(c_int, 255);
pub const __UINT_LEAST8_FMTo__ = "hho";
pub const __UINT_LEAST8_FMTu__ = "hhu";
pub const __UINT_LEAST8_FMTx__ = "hhx";
pub const __UINT_LEAST8_FMTX__ = "hhX";
pub const __INT_LEAST16_TYPE__ = c_short;
pub const __INT_LEAST16_MAX__ = @as(c_int, 32767);
pub const __INT_LEAST16_WIDTH__ = @as(c_int, 16);
pub const __INT_LEAST16_FMTd__ = "hd";
pub const __INT_LEAST16_FMTi__ = "hi";
pub const __UINT_LEAST16_TYPE__ = c_ushort;
pub const __UINT_LEAST16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __UINT_LEAST16_FMTo__ = "ho";
pub const __UINT_LEAST16_FMTu__ = "hu";
pub const __UINT_LEAST16_FMTx__ = "hx";
pub const __UINT_LEAST16_FMTX__ = "hX";
pub const __INT_LEAST32_TYPE__ = c_int;
pub const __INT_LEAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_LEAST32_WIDTH__ = @as(c_int, 32);
pub const __INT_LEAST32_FMTd__ = "d";
pub const __INT_LEAST32_FMTi__ = "i";
pub const __UINT_LEAST32_TYPE__ = c_uint;
pub const __UINT_LEAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __UINT_LEAST32_FMTo__ = "o";
pub const __UINT_LEAST32_FMTu__ = "u";
pub const __UINT_LEAST32_FMTx__ = "x";
pub const __UINT_LEAST32_FMTX__ = "X";
pub const __INT_LEAST64_TYPE__ = c_long;
pub const __INT_LEAST64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INT_LEAST64_WIDTH__ = @as(c_int, 64);
pub const __INT_LEAST64_FMTd__ = "ld";
pub const __INT_LEAST64_FMTi__ = "li";
pub const __UINT_LEAST64_TYPE__ = c_ulong;
pub const __UINT_LEAST64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINT_LEAST64_FMTo__ = "lo";
pub const __UINT_LEAST64_FMTu__ = "lu";
pub const __UINT_LEAST64_FMTx__ = "lx";
pub const __UINT_LEAST64_FMTX__ = "lX";
pub const __INT_FAST8_TYPE__ = i8;
pub const __INT_FAST8_MAX__ = @as(c_int, 127);
pub const __INT_FAST8_WIDTH__ = @as(c_int, 8);
pub const __INT_FAST8_FMTd__ = "hhd";
pub const __INT_FAST8_FMTi__ = "hhi";
pub const __UINT_FAST8_TYPE__ = u8;
pub const __UINT_FAST8_MAX__ = @as(c_int, 255);
pub const __UINT_FAST8_FMTo__ = "hho";
pub const __UINT_FAST8_FMTu__ = "hhu";
pub const __UINT_FAST8_FMTx__ = "hhx";
pub const __UINT_FAST8_FMTX__ = "hhX";
pub const __INT_FAST16_TYPE__ = c_short;
pub const __INT_FAST16_MAX__ = @as(c_int, 32767);
pub const __INT_FAST16_WIDTH__ = @as(c_int, 16);
pub const __INT_FAST16_FMTd__ = "hd";
pub const __INT_FAST16_FMTi__ = "hi";
pub const __UINT_FAST16_TYPE__ = c_ushort;
pub const __UINT_FAST16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __UINT_FAST16_FMTo__ = "ho";
pub const __UINT_FAST16_FMTu__ = "hu";
pub const __UINT_FAST16_FMTx__ = "hx";
pub const __UINT_FAST16_FMTX__ = "hX";
pub const __INT_FAST32_TYPE__ = c_int;
pub const __INT_FAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_FAST32_WIDTH__ = @as(c_int, 32);
pub const __INT_FAST32_FMTd__ = "d";
pub const __INT_FAST32_FMTi__ = "i";
pub const __UINT_FAST32_TYPE__ = c_uint;
pub const __UINT_FAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __UINT_FAST32_FMTo__ = "o";
pub const __UINT_FAST32_FMTu__ = "u";
pub const __UINT_FAST32_FMTx__ = "x";
pub const __UINT_FAST32_FMTX__ = "X";
pub const __INT_FAST64_TYPE__ = c_long;
pub const __INT_FAST64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INT_FAST64_WIDTH__ = @as(c_int, 64);
pub const __INT_FAST64_FMTd__ = "ld";
pub const __INT_FAST64_FMTi__ = "li";
pub const __UINT_FAST64_TYPE__ = c_ulong;
pub const __UINT_FAST64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINT_FAST64_FMTo__ = "lo";
pub const __UINT_FAST64_FMTu__ = "lu";
pub const __UINT_FAST64_FMTx__ = "lx";
pub const __UINT_FAST64_FMTX__ = "lX";
pub const __USER_LABEL_PREFIX__ = "";
pub const __FINITE_MATH_ONLY__ = @as(c_int, 0);
pub const __GNUC_STDC_INLINE__ = @as(c_int, 1);
pub const __GCC_ATOMIC_TEST_AND_SET_TRUEVAL = @as(c_int, 1);
pub const __CLANG_ATOMIC_BOOL_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR16_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR32_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_WCHAR_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_SHORT_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_INT_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_LONG_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_LLONG_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_POINTER_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_BOOL_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR16_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR32_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_WCHAR_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_SHORT_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_INT_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_LONG_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_LLONG_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_POINTER_LOCK_FREE = @as(c_int, 2);
pub const __NO_INLINE__ = @as(c_int, 1);
pub const __PIC__ = @as(c_int, 2);
pub const __pic__ = @as(c_int, 2);
pub const __FLT_RADIX__ = @as(c_int, 2);
pub const __DECIMAL_DIG__ = __LDBL_DECIMAL_DIG__;
pub const __SSP_STRONG__ = @as(c_int, 2);
pub const __GCC_ASM_FLAG_OUTPUTS__ = @as(c_int, 1);
pub const __code_model_small__ = @as(c_int, 1);
pub const __amd64__ = @as(c_int, 1);
pub const __amd64 = @as(c_int, 1);
pub const __x86_64 = @as(c_int, 1);
pub const __x86_64__ = @as(c_int, 1);
pub const __SEG_GS = @as(c_int, 1);
pub const __SEG_FS = @as(c_int, 1);
pub const __znver3 = @as(c_int, 1);
pub const __znver3__ = @as(c_int, 1);
pub const __tune_znver3__ = @as(c_int, 1);
pub const __REGISTER_PREFIX__ = "";
pub const __NO_MATH_INLINES = @as(c_int, 1);
pub const __AES__ = @as(c_int, 1);
pub const __VAES__ = @as(c_int, 1);
pub const __PCLMUL__ = @as(c_int, 1);
pub const __VPCLMULQDQ__ = @as(c_int, 1);
pub const __LAHF_SAHF__ = @as(c_int, 1);
pub const __LZCNT__ = @as(c_int, 1);
pub const __RDRND__ = @as(c_int, 1);
pub const __FSGSBASE__ = @as(c_int, 1);
pub const __BMI__ = @as(c_int, 1);
pub const __BMI2__ = @as(c_int, 1);
pub const __POPCNT__ = @as(c_int, 1);
pub const __PRFCHW__ = @as(c_int, 1);
pub const __RDSEED__ = @as(c_int, 1);
pub const __ADX__ = @as(c_int, 1);
pub const __MWAITX__ = @as(c_int, 1);
pub const __MOVBE__ = @as(c_int, 1);
pub const __SSE4A__ = @as(c_int, 1);
pub const __FMA__ = @as(c_int, 1);
pub const __F16C__ = @as(c_int, 1);
pub const __SHA__ = @as(c_int, 1);
pub const __FXSR__ = @as(c_int, 1);
pub const __XSAVE__ = @as(c_int, 1);
pub const __XSAVEOPT__ = @as(c_int, 1);
pub const __XSAVEC__ = @as(c_int, 1);
pub const __XSAVES__ = @as(c_int, 1);
pub const __PKU__ = @as(c_int, 1);
pub const __CLFLUSHOPT__ = @as(c_int, 1);
pub const __CLWB__ = @as(c_int, 1);
pub const __WBNOINVD__ = @as(c_int, 1);
pub const __SHSTK__ = @as(c_int, 1);
pub const __CLZERO__ = @as(c_int, 1);
pub const __RDPID__ = @as(c_int, 1);
pub const __RDPRU__ = @as(c_int, 1);
pub const __INVPCID__ = @as(c_int, 1);
pub const __CRC32__ = @as(c_int, 1);
pub const __AVX2__ = @as(c_int, 1);
pub const __AVX__ = @as(c_int, 1);
pub const __SSE4_2__ = @as(c_int, 1);
pub const __SSE4_1__ = @as(c_int, 1);
pub const __SSSE3__ = @as(c_int, 1);
pub const __SSE3__ = @as(c_int, 1);
pub const __SSE2__ = @as(c_int, 1);
pub const __SSE2_MATH__ = @as(c_int, 1);
pub const __SSE__ = @as(c_int, 1);
pub const __SSE_MATH__ = @as(c_int, 1);
pub const __MMX__ = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_16 = @as(c_int, 1);
pub const __SIZEOF_FLOAT128__ = @as(c_int, 16);
pub const unix = @as(c_int, 1);
pub const __unix = @as(c_int, 1);
pub const __unix__ = @as(c_int, 1);
pub const linux = @as(c_int, 1);
pub const __linux = @as(c_int, 1);
pub const __linux__ = @as(c_int, 1);
pub const __ELF__ = @as(c_int, 1);
pub const __gnu_linux__ = @as(c_int, 1);
pub const __FLOAT128__ = @as(c_int, 1);
pub const __STDC__ = @as(c_int, 1);
pub const __STDC_HOSTED__ = @as(c_int, 1);
pub const __STDC_VERSION__ = @as(c_long, 201710);
pub const __STDC_UTF_16__ = @as(c_int, 1);
pub const __STDC_UTF_32__ = @as(c_int, 1);
pub const __GLIBC_MINOR__ = @as(c_int, 19);
pub const _DEBUG = @as(c_int, 1);
pub const __GCC_HAVE_DWARF2_CFI_ASM = @as(c_int, 1);
pub const _STDIO_H = @as(c_int, 1);
pub const __GLIBC_INTERNAL_STARTING_HEADER_IMPLEMENTATION = "";
pub const _FEATURES_H = @as(c_int, 1);
pub const __KERNEL_STRICT_NAMES = "";
pub inline fn __GNUC_PREREQ(maj: anytype, min: anytype) @TypeOf(((__GNUC__ << @as(c_int, 16)) + __GNUC_MINOR__) >= ((maj << @as(c_int, 16)) + min)) {
    return ((__GNUC__ << @as(c_int, 16)) + __GNUC_MINOR__) >= ((maj << @as(c_int, 16)) + min);
}
pub inline fn __glibc_clang_prereq(maj: anytype, min: anytype) @TypeOf(((__clang_major__ << @as(c_int, 16)) + __clang_minor__) >= ((maj << @as(c_int, 16)) + min)) {
    return ((__clang_major__ << @as(c_int, 16)) + __clang_minor__) >= ((maj << @as(c_int, 16)) + min);
}
pub const _DEFAULT_SOURCE = @as(c_int, 1);
pub const __GLIBC_USE_ISOC2X = @as(c_int, 0);
pub const __USE_ISOC11 = @as(c_int, 1);
pub const __USE_ISOC99 = @as(c_int, 1);
pub const __USE_ISOC95 = @as(c_int, 1);
pub const __USE_POSIX_IMPLICITLY = @as(c_int, 1);
pub const _POSIX_SOURCE = @as(c_int, 1);
pub const _POSIX_C_SOURCE = @as(c_long, 200809);
pub const __USE_POSIX = @as(c_int, 1);
pub const __USE_POSIX2 = @as(c_int, 1);
pub const __USE_POSIX199309 = @as(c_int, 1);
pub const __USE_POSIX199506 = @as(c_int, 1);
pub const __USE_XOPEN2K = @as(c_int, 1);
pub const __USE_XOPEN2K8 = @as(c_int, 1);
pub const _ATFILE_SOURCE = @as(c_int, 1);
pub const __WORDSIZE = @as(c_int, 64);
pub const __WORDSIZE_TIME64_COMPAT32 = @as(c_int, 1);
pub const __SYSCALL_WORDSIZE = @as(c_int, 64);
pub const __TIMESIZE = __WORDSIZE;
pub const __USE_MISC = @as(c_int, 1);
pub const __USE_ATFILE = @as(c_int, 1);
pub const __USE_FORTIFY_LEVEL = @as(c_int, 0);
pub const __GLIBC_USE_DEPRECATED_GETS = @as(c_int, 0);
pub const __GLIBC_USE_DEPRECATED_SCANF = @as(c_int, 0);
pub const _STDC_PREDEF_H = @as(c_int, 1);
pub const __STDC_IEC_559__ = @as(c_int, 1);
pub const __STDC_IEC_60559_BFP__ = @as(c_long, 201404);
pub const __STDC_IEC_559_COMPLEX__ = @as(c_int, 1);
pub const __STDC_IEC_60559_COMPLEX__ = @as(c_long, 201404);
pub const __STDC_ISO_10646__ = @as(c_long, 201706);
pub const __GNU_LIBRARY__ = @as(c_int, 6);
pub const __GLIBC__ = @as(c_int, 2);
pub inline fn __GLIBC_PREREQ(maj: anytype, min: anytype) @TypeOf(((__GLIBC__ << @as(c_int, 16)) + __GLIBC_MINOR__) >= ((maj << @as(c_int, 16)) + min)) {
    return ((__GLIBC__ << @as(c_int, 16)) + __GLIBC_MINOR__) >= ((maj << @as(c_int, 16)) + min);
}
pub const _SYS_CDEFS_H = @as(c_int, 1);
pub inline fn __glibc_has_builtin(name: anytype) @TypeOf(__has_builtin(name)) {
    return __has_builtin(name);
}
pub const __LEAF = "";
pub const __LEAF_ATTR = "";
pub inline fn __P(args: anytype) @TypeOf(args) {
    return args;
}
pub inline fn __PMT(args: anytype) @TypeOf(args) {
    return args;
}
pub const __ptr_t = ?*anyopaque;
pub const __BEGIN_DECLS = "";
pub const __END_DECLS = "";
pub inline fn __bos(ptr: anytype) @TypeOf(__builtin_object_size(ptr, __USE_FORTIFY_LEVEL > @as(c_int, 1))) {
    return __builtin_object_size(ptr, __USE_FORTIFY_LEVEL > @as(c_int, 1));
}
pub inline fn __bos0(ptr: anytype) @TypeOf(__builtin_object_size(ptr, @as(c_int, 0))) {
    return __builtin_object_size(ptr, @as(c_int, 0));
}
pub inline fn __glibc_objsize0(__o: anytype) @TypeOf(__bos0(__o)) {
    return __bos0(__o);
}
pub inline fn __glibc_objsize(__o: anytype) @TypeOf(__bos(__o)) {
    return __bos(__o);
}
pub inline fn __glibc_safe_len_cond(__l: anytype, __s: anytype, __osz: anytype) @TypeOf(__l <= @import("std").zig.c_translation.MacroArithmetic.div(__osz, __s)) {
    return __l <= @import("std").zig.c_translation.MacroArithmetic.div(__osz, __s);
}
pub inline fn __glibc_safe_or_unknown_len(__l: anytype, __s: anytype, __osz: anytype) @TypeOf(((__glibc_unsigned_or_positive(__l) != 0) and (__builtin_constant_p(__glibc_safe_len_cond(__SIZE_TYPE__(__l), __s, __osz)) != 0)) and (__glibc_safe_len_cond(__SIZE_TYPE__(__l), __s, __osz) != 0)) {
    return ((__glibc_unsigned_or_positive(__l) != 0) and (__builtin_constant_p(__glibc_safe_len_cond(__SIZE_TYPE__(__l), __s, __osz)) != 0)) and (__glibc_safe_len_cond(__SIZE_TYPE__(__l), __s, __osz) != 0);
}
pub inline fn __glibc_unsafe_len(__l: anytype, __s: anytype, __osz: anytype) @TypeOf(((__glibc_unsigned_or_positive(__l) != 0) and (__builtin_constant_p(__glibc_safe_len_cond(__SIZE_TYPE__(__l), __s, __osz)) != 0)) and !(__glibc_safe_len_cond(__SIZE_TYPE__(__l), __s, __osz) != 0)) {
    return ((__glibc_unsigned_or_positive(__l) != 0) and (__builtin_constant_p(__glibc_safe_len_cond(__SIZE_TYPE__(__l), __s, __osz)) != 0)) and !(__glibc_safe_len_cond(__SIZE_TYPE__(__l), __s, __osz) != 0);
}
pub const __glibc_c99_flexarr_available = @as(c_int, 1);
pub inline fn __ASMNAME(cname: anytype) @TypeOf(__ASMNAME2(__USER_LABEL_PREFIX__, cname)) {
    return __ASMNAME2(__USER_LABEL_PREFIX__, cname);
}
pub inline fn __nonnull(params: anytype) @TypeOf(__attribute_nonnull__(params)) {
    return __attribute_nonnull__(params);
}
pub const __wur = "";
pub const __fortify_function = __extern_always_inline ++ __attribute_artificial__;
pub inline fn __glibc_unlikely(cond: anytype) @TypeOf(__builtin_expect(cond, @as(c_int, 0))) {
    return __builtin_expect(cond, @as(c_int, 0));
}
pub inline fn __glibc_likely(cond: anytype) @TypeOf(__builtin_expect(cond, @as(c_int, 1))) {
    return __builtin_expect(cond, @as(c_int, 1));
}
pub const __attribute_nonstring__ = "";
pub const __LDOUBLE_REDIRECTS_TO_FLOAT128_ABI = @as(c_int, 0);
pub inline fn __LDBL_REDIR1(name: anytype, proto: anytype, alias: anytype) @TypeOf(name ++ proto) {
    _ = @TypeOf(alias);
    return name ++ proto;
}
pub inline fn __LDBL_REDIR(name: anytype, proto: anytype) @TypeOf(name ++ proto) {
    return name ++ proto;
}
pub inline fn __LDBL_REDIR1_NTH(name: anytype, proto: anytype, alias: anytype) @TypeOf(name ++ proto ++ __THROW) {
    _ = @TypeOf(alias);
    return name ++ proto ++ __THROW;
}
pub inline fn __LDBL_REDIR_NTH(name: anytype, proto: anytype) @TypeOf(name ++ proto ++ __THROW) {
    return name ++ proto ++ __THROW;
}
pub inline fn __REDIRECT_LDBL(name: anytype, proto: anytype, alias: anytype) @TypeOf(__REDIRECT(name, proto, alias)) {
    return __REDIRECT(name, proto, alias);
}
pub inline fn __REDIRECT_NTH_LDBL(name: anytype, proto: anytype, alias: anytype) @TypeOf(__REDIRECT_NTH(name, proto, alias)) {
    return __REDIRECT_NTH(name, proto, alias);
}
pub const __HAVE_GENERIC_SELECTION = @as(c_int, 1);
pub const __attr_dealloc_free = "";
pub const __stub___compat_bdflush = "";
pub const __stub_chflags = "";
pub const __stub_fchflags = "";
pub const __stub_gtty = "";
pub const __stub_revoke = "";
pub const __stub_setlogin = "";
pub const __stub_sigreturn = "";
pub const __stub_stty = "";
pub const __GLIBC_USE_LIB_EXT2 = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_BFP_EXT = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_BFP_EXT_C2X = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_EXT = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_FUNCS_EXT = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_FUNCS_EXT_C2X = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_TYPES_EXT = @as(c_int, 0);
pub const __need_size_t = "";
pub const __need_NULL = "";
pub const _SIZE_T = "";
pub const NULL = @import("std").zig.c_translation.cast(?*anyopaque, @as(c_int, 0));
pub const __need___va_list = "";
pub const __GNUC_VA_LIST = "";
pub const _BITS_TYPES_H = @as(c_int, 1);
pub const __S16_TYPE = c_short;
pub const __U16_TYPE = c_ushort;
pub const __S32_TYPE = c_int;
pub const __U32_TYPE = c_uint;
pub const __SLONGWORD_TYPE = c_long;
pub const __ULONGWORD_TYPE = c_ulong;
pub const __SQUAD_TYPE = c_long;
pub const __UQUAD_TYPE = c_ulong;
pub const __SWORD_TYPE = c_long;
pub const __UWORD_TYPE = c_ulong;
pub const __SLONG32_TYPE = c_int;
pub const __ULONG32_TYPE = c_uint;
pub const __S64_TYPE = c_long;
pub const __U64_TYPE = c_ulong;
pub const _BITS_TYPESIZES_H = @as(c_int, 1);
pub const __SYSCALL_SLONG_TYPE = __SLONGWORD_TYPE;
pub const __SYSCALL_ULONG_TYPE = __ULONGWORD_TYPE;
pub const __DEV_T_TYPE = __UQUAD_TYPE;
pub const __UID_T_TYPE = __U32_TYPE;
pub const __GID_T_TYPE = __U32_TYPE;
pub const __INO_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __INO64_T_TYPE = __UQUAD_TYPE;
pub const __MODE_T_TYPE = __U32_TYPE;
pub const __NLINK_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __FSWORD_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __OFF_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __OFF64_T_TYPE = __SQUAD_TYPE;
pub const __PID_T_TYPE = __S32_TYPE;
pub const __RLIM_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __RLIM64_T_TYPE = __UQUAD_TYPE;
pub const __BLKCNT_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __BLKCNT64_T_TYPE = __SQUAD_TYPE;
pub const __FSBLKCNT_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __FSBLKCNT64_T_TYPE = __UQUAD_TYPE;
pub const __FSFILCNT_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __FSFILCNT64_T_TYPE = __UQUAD_TYPE;
pub const __ID_T_TYPE = __U32_TYPE;
pub const __CLOCK_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __TIME_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __USECONDS_T_TYPE = __U32_TYPE;
pub const __SUSECONDS_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __SUSECONDS64_T_TYPE = __SQUAD_TYPE;
pub const __DADDR_T_TYPE = __S32_TYPE;
pub const __KEY_T_TYPE = __S32_TYPE;
pub const __CLOCKID_T_TYPE = __S32_TYPE;
pub const __TIMER_T_TYPE = ?*anyopaque;
pub const __BLKSIZE_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __SSIZE_T_TYPE = __SWORD_TYPE;
pub const __CPU_MASK_TYPE = __SYSCALL_ULONG_TYPE;
pub const __OFF_T_MATCHES_OFF64_T = @as(c_int, 1);
pub const __INO_T_MATCHES_INO64_T = @as(c_int, 1);
pub const __RLIM_T_MATCHES_RLIM64_T = @as(c_int, 1);
pub const __STATFS_MATCHES_STATFS64 = @as(c_int, 1);
pub const __KERNEL_OLD_TIMEVAL_MATCHES_TIMEVAL64 = @as(c_int, 1);
pub const __FD_SETSIZE = @as(c_int, 1024);
pub const _BITS_TIME64_H = @as(c_int, 1);
pub const __TIME64_T_TYPE = __TIME_T_TYPE;
pub const _____fpos_t_defined = @as(c_int, 1);
pub const ____mbstate_t_defined = @as(c_int, 1);
pub const _____fpos64_t_defined = @as(c_int, 1);
pub const ____FILE_defined = @as(c_int, 1);
pub const __FILE_defined = @as(c_int, 1);
pub const __struct_FILE_defined = @as(c_int, 1);
pub const _IO_EOF_SEEN = @as(c_int, 0x0010);
pub inline fn __feof_unlocked_body(_fp: anytype) @TypeOf((_fp.*._flags & _IO_EOF_SEEN) != @as(c_int, 0)) {
    return (_fp.*._flags & _IO_EOF_SEEN) != @as(c_int, 0);
}
pub const _IO_ERR_SEEN = @as(c_int, 0x0020);
pub inline fn __ferror_unlocked_body(_fp: anytype) @TypeOf((_fp.*._flags & _IO_ERR_SEEN) != @as(c_int, 0)) {
    return (_fp.*._flags & _IO_ERR_SEEN) != @as(c_int, 0);
}
pub const _IO_USER_LOCK = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8000, .hexadecimal);
pub const _VA_LIST_DEFINED = "";
pub const __off_t_defined = "";
pub const __ssize_t_defined = "";
pub const _IOFBF = @as(c_int, 0);
pub const _IOLBF = @as(c_int, 1);
pub const _IONBF = @as(c_int, 2);
pub const BUFSIZ = @as(c_int, 8192);
pub const EOF = -@as(c_int, 1);
pub const SEEK_SET = @as(c_int, 0);
pub const SEEK_CUR = @as(c_int, 1);
pub const SEEK_END = @as(c_int, 2);
pub const P_tmpdir = "/tmp";
pub const _BITS_STDIO_LIM_H = @as(c_int, 1);
pub const L_tmpnam = @as(c_int, 20);
pub const TMP_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 238328, .decimal);
pub const FILENAME_MAX = @as(c_int, 4096);
pub const L_ctermid = @as(c_int, 9);
pub const FOPEN_MAX = @as(c_int, 16);
pub const __attr_dealloc_fclose = __attr_dealloc(fclose, @as(c_int, 1));
pub const _BITS_FLOATN_H = "";
pub const __HAVE_FLOAT128 = @as(c_int, 0);
pub const __HAVE_DISTINCT_FLOAT128 = @as(c_int, 0);
pub const __HAVE_FLOAT64X = @as(c_int, 1);
pub const __HAVE_FLOAT64X_LONG_DOUBLE = @as(c_int, 1);
pub const _BITS_FLOATN_COMMON_H = "";
pub const __HAVE_FLOAT16 = @as(c_int, 0);
pub const __HAVE_FLOAT32 = @as(c_int, 1);
pub const __HAVE_FLOAT64 = @as(c_int, 1);
pub const __HAVE_FLOAT32X = @as(c_int, 1);
pub const __HAVE_FLOAT128X = @as(c_int, 0);
pub const __HAVE_DISTINCT_FLOAT16 = __HAVE_FLOAT16;
pub const __HAVE_DISTINCT_FLOAT32 = @as(c_int, 0);
pub const __HAVE_DISTINCT_FLOAT64 = @as(c_int, 0);
pub const __HAVE_DISTINCT_FLOAT32X = @as(c_int, 0);
pub const __HAVE_DISTINCT_FLOAT64X = @as(c_int, 0);
pub const __HAVE_DISTINCT_FLOAT128X = __HAVE_FLOAT128X;
pub const __HAVE_FLOAT128_UNLIKE_LDBL = (__HAVE_DISTINCT_FLOAT128 != 0) and (__LDBL_MANT_DIG__ != @as(c_int, 113));
pub const __HAVE_FLOATN_NOT_TYPEDEF = @as(c_int, 0);
pub const __f32 = @import("std").zig.c_translation.Macros.F_SUFFIX;
pub inline fn __f64(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __f32x(x: anytype) @TypeOf(x) {
    return x;
}
pub const __f64x = @import("std").zig.c_translation.Macros.L_SUFFIX;
pub inline fn __builtin_huge_valf32() @TypeOf(__builtin_huge_valf()) {
    return __builtin_huge_valf();
}
pub inline fn __builtin_inff32() @TypeOf(__builtin_inff()) {
    return __builtin_inff();
}
pub inline fn __builtin_nanf32(x: anytype) @TypeOf(__builtin_nanf(x)) {
    return __builtin_nanf(x);
}
pub const __need_wchar_t = "";
pub const _WCHAR_T = "";
pub const _STDLIB_H = @as(c_int, 1);
pub const WNOHANG = @as(c_int, 1);
pub const WUNTRACED = @as(c_int, 2);
pub const WSTOPPED = @as(c_int, 2);
pub const WEXITED = @as(c_int, 4);
pub const WCONTINUED = @as(c_int, 8);
pub const WNOWAIT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x01000000, .hexadecimal);
pub const __WNOTHREAD = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x20000000, .hexadecimal);
pub const __WALL = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x40000000, .hexadecimal);
pub const __WCLONE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x80000000, .hexadecimal);
pub inline fn __WEXITSTATUS(status: anytype) @TypeOf((status & @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff00, .hexadecimal)) >> @as(c_int, 8)) {
    return (status & @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff00, .hexadecimal)) >> @as(c_int, 8);
}
pub inline fn __WTERMSIG(status: anytype) @TypeOf(status & @as(c_int, 0x7f)) {
    return status & @as(c_int, 0x7f);
}
pub inline fn __WSTOPSIG(status: anytype) @TypeOf(__WEXITSTATUS(status)) {
    return __WEXITSTATUS(status);
}
pub inline fn __WIFEXITED(status: anytype) @TypeOf(__WTERMSIG(status) == @as(c_int, 0)) {
    return __WTERMSIG(status) == @as(c_int, 0);
}
pub inline fn __WIFSIGNALED(status: anytype) @TypeOf((@import("std").zig.c_translation.cast(i8, (status & @as(c_int, 0x7f)) + @as(c_int, 1)) >> @as(c_int, 1)) > @as(c_int, 0)) {
    return (@import("std").zig.c_translation.cast(i8, (status & @as(c_int, 0x7f)) + @as(c_int, 1)) >> @as(c_int, 1)) > @as(c_int, 0);
}
pub inline fn __WIFSTOPPED(status: anytype) @TypeOf((status & @as(c_int, 0xff)) == @as(c_int, 0x7f)) {
    return (status & @as(c_int, 0xff)) == @as(c_int, 0x7f);
}
pub inline fn __WIFCONTINUED(status: anytype) @TypeOf(status == __W_CONTINUED) {
    return status == __W_CONTINUED;
}
pub inline fn __WCOREDUMP(status: anytype) @TypeOf(status & __WCOREFLAG) {
    return status & __WCOREFLAG;
}
pub inline fn __W_EXITCODE(ret: anytype, sig: anytype) @TypeOf((ret << @as(c_int, 8)) | sig) {
    return (ret << @as(c_int, 8)) | sig;
}
pub inline fn __W_STOPCODE(sig: anytype) @TypeOf((sig << @as(c_int, 8)) | @as(c_int, 0x7f)) {
    return (sig << @as(c_int, 8)) | @as(c_int, 0x7f);
}
pub const __W_CONTINUED = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffff, .hexadecimal);
pub const __WCOREFLAG = @as(c_int, 0x80);
pub inline fn WEXITSTATUS(status: anytype) @TypeOf(__WEXITSTATUS(status)) {
    return __WEXITSTATUS(status);
}
pub inline fn WTERMSIG(status: anytype) @TypeOf(__WTERMSIG(status)) {
    return __WTERMSIG(status);
}
pub inline fn WSTOPSIG(status: anytype) @TypeOf(__WSTOPSIG(status)) {
    return __WSTOPSIG(status);
}
pub inline fn WIFEXITED(status: anytype) @TypeOf(__WIFEXITED(status)) {
    return __WIFEXITED(status);
}
pub inline fn WIFSIGNALED(status: anytype) @TypeOf(__WIFSIGNALED(status)) {
    return __WIFSIGNALED(status);
}
pub inline fn WIFSTOPPED(status: anytype) @TypeOf(__WIFSTOPPED(status)) {
    return __WIFSTOPPED(status);
}
pub inline fn WIFCONTINUED(status: anytype) @TypeOf(__WIFCONTINUED(status)) {
    return __WIFCONTINUED(status);
}
pub const __ldiv_t_defined = @as(c_int, 1);
pub const __lldiv_t_defined = @as(c_int, 1);
pub const RAND_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const EXIT_FAILURE = @as(c_int, 1);
pub const EXIT_SUCCESS = @as(c_int, 0);
pub const MB_CUR_MAX = __ctype_get_mb_cur_max();
pub const _SYS_TYPES_H = @as(c_int, 1);
pub const __u_char_defined = "";
pub const __ino_t_defined = "";
pub const __dev_t_defined = "";
pub const __gid_t_defined = "";
pub const __mode_t_defined = "";
pub const __nlink_t_defined = "";
pub const __uid_t_defined = "";
pub const __pid_t_defined = "";
pub const __id_t_defined = "";
pub const __daddr_t_defined = "";
pub const __key_t_defined = "";
pub const __clock_t_defined = @as(c_int, 1);
pub const __clockid_t_defined = @as(c_int, 1);
pub const __time_t_defined = @as(c_int, 1);
pub const __timer_t_defined = @as(c_int, 1);
pub const _BITS_STDINT_INTN_H = @as(c_int, 1);
pub const __BIT_TYPES_DEFINED__ = @as(c_int, 1);
pub const _ENDIAN_H = @as(c_int, 1);
pub const _BITS_ENDIAN_H = @as(c_int, 1);
pub const __LITTLE_ENDIAN = @as(c_int, 1234);
pub const __BIG_ENDIAN = @as(c_int, 4321);
pub const __PDP_ENDIAN = @as(c_int, 3412);
pub const _BITS_ENDIANNESS_H = @as(c_int, 1);
pub const __BYTE_ORDER = __LITTLE_ENDIAN;
pub const __FLOAT_WORD_ORDER = __BYTE_ORDER;
pub inline fn __LONG_LONG_PAIR(HI: anytype, LO: anytype) @TypeOf(HI) {
    return blk: {
        _ = @TypeOf(LO);
        break :blk HI;
    };
}
pub const LITTLE_ENDIAN = __LITTLE_ENDIAN;
pub const BIG_ENDIAN = __BIG_ENDIAN;
pub const PDP_ENDIAN = __PDP_ENDIAN;
pub const BYTE_ORDER = __BYTE_ORDER;
pub const _BITS_BYTESWAP_H = @as(c_int, 1);
pub inline fn __bswap_constant_16(x: anytype) __uint16_t {
    return @import("std").zig.c_translation.cast(__uint16_t, ((x >> @as(c_int, 8)) & @as(c_int, 0xff)) | ((x & @as(c_int, 0xff)) << @as(c_int, 8)));
}
pub inline fn __bswap_constant_32(x: anytype) @TypeOf(((((x & @import("std").zig.c_translation.promoteIntLiteral(c_uint, 0xff000000, .hexadecimal)) >> @as(c_int, 24)) | ((x & @import("std").zig.c_translation.promoteIntLiteral(c_uint, 0x00ff0000, .hexadecimal)) >> @as(c_int, 8))) | ((x & @as(c_uint, 0x0000ff00)) << @as(c_int, 8))) | ((x & @as(c_uint, 0x000000ff)) << @as(c_int, 24))) {
    return ((((x & @import("std").zig.c_translation.promoteIntLiteral(c_uint, 0xff000000, .hexadecimal)) >> @as(c_int, 24)) | ((x & @import("std").zig.c_translation.promoteIntLiteral(c_uint, 0x00ff0000, .hexadecimal)) >> @as(c_int, 8))) | ((x & @as(c_uint, 0x0000ff00)) << @as(c_int, 8))) | ((x & @as(c_uint, 0x000000ff)) << @as(c_int, 24));
}
pub inline fn __bswap_constant_64(x: anytype) @TypeOf(((((((((x & @as(c_ulonglong, 0xff00000000000000)) >> @as(c_int, 56)) | ((x & @as(c_ulonglong, 0x00ff000000000000)) >> @as(c_int, 40))) | ((x & @as(c_ulonglong, 0x0000ff0000000000)) >> @as(c_int, 24))) | ((x & @as(c_ulonglong, 0x000000ff00000000)) >> @as(c_int, 8))) | ((x & @as(c_ulonglong, 0x00000000ff000000)) << @as(c_int, 8))) | ((x & @as(c_ulonglong, 0x0000000000ff0000)) << @as(c_int, 24))) | ((x & @as(c_ulonglong, 0x000000000000ff00)) << @as(c_int, 40))) | ((x & @as(c_ulonglong, 0x00000000000000ff)) << @as(c_int, 56))) {
    return ((((((((x & @as(c_ulonglong, 0xff00000000000000)) >> @as(c_int, 56)) | ((x & @as(c_ulonglong, 0x00ff000000000000)) >> @as(c_int, 40))) | ((x & @as(c_ulonglong, 0x0000ff0000000000)) >> @as(c_int, 24))) | ((x & @as(c_ulonglong, 0x000000ff00000000)) >> @as(c_int, 8))) | ((x & @as(c_ulonglong, 0x00000000ff000000)) << @as(c_int, 8))) | ((x & @as(c_ulonglong, 0x0000000000ff0000)) << @as(c_int, 24))) | ((x & @as(c_ulonglong, 0x000000000000ff00)) << @as(c_int, 40))) | ((x & @as(c_ulonglong, 0x00000000000000ff)) << @as(c_int, 56));
}
pub const _BITS_UINTN_IDENTITY_H = @as(c_int, 1);
pub inline fn htobe16(x: anytype) @TypeOf(__bswap_16(x)) {
    return __bswap_16(x);
}
pub inline fn htole16(x: anytype) @TypeOf(__uint16_identity(x)) {
    return __uint16_identity(x);
}
pub inline fn be16toh(x: anytype) @TypeOf(__bswap_16(x)) {
    return __bswap_16(x);
}
pub inline fn le16toh(x: anytype) @TypeOf(__uint16_identity(x)) {
    return __uint16_identity(x);
}
pub inline fn htobe32(x: anytype) @TypeOf(__bswap_32(x)) {
    return __bswap_32(x);
}
pub inline fn htole32(x: anytype) @TypeOf(__uint32_identity(x)) {
    return __uint32_identity(x);
}
pub inline fn be32toh(x: anytype) @TypeOf(__bswap_32(x)) {
    return __bswap_32(x);
}
pub inline fn le32toh(x: anytype) @TypeOf(__uint32_identity(x)) {
    return __uint32_identity(x);
}
pub inline fn htobe64(x: anytype) @TypeOf(__bswap_64(x)) {
    return __bswap_64(x);
}
pub inline fn htole64(x: anytype) @TypeOf(__uint64_identity(x)) {
    return __uint64_identity(x);
}
pub inline fn be64toh(x: anytype) @TypeOf(__bswap_64(x)) {
    return __bswap_64(x);
}
pub inline fn le64toh(x: anytype) @TypeOf(__uint64_identity(x)) {
    return __uint64_identity(x);
}
pub const _SYS_SELECT_H = @as(c_int, 1);
pub inline fn __FD_ISSET(d: anytype, s: anytype) @TypeOf((__FDS_BITS(s)[@as(usize, @intCast(__FD_ELT(d)))] & __FD_MASK(d)) != @as(c_int, 0)) {
    return (__FDS_BITS(s)[@as(usize, @intCast(__FD_ELT(d)))] & __FD_MASK(d)) != @as(c_int, 0);
}
pub const __sigset_t_defined = @as(c_int, 1);
pub const ____sigset_t_defined = "";
pub const _SIGSET_NWORDS = @import("std").zig.c_translation.MacroArithmetic.div(@as(c_int, 1024), @as(c_int, 8) * @import("std").zig.c_translation.sizeof(c_ulong));
pub const __timeval_defined = @as(c_int, 1);
pub const _STRUCT_TIMESPEC = @as(c_int, 1);
pub const __suseconds_t_defined = "";
pub const __NFDBITS = @as(c_int, 8) * @import("std").zig.c_translation.cast(c_int, @import("std").zig.c_translation.sizeof(__fd_mask));
pub inline fn __FD_ELT(d: anytype) @TypeOf(@import("std").zig.c_translation.MacroArithmetic.div(d, __NFDBITS)) {
    return @import("std").zig.c_translation.MacroArithmetic.div(d, __NFDBITS);
}
pub inline fn __FD_MASK(d: anytype) __fd_mask {
    return @import("std").zig.c_translation.cast(__fd_mask, @as(c_ulong, 1) << @import("std").zig.c_translation.MacroArithmetic.rem(d, __NFDBITS));
}
pub inline fn __FDS_BITS(set: anytype) @TypeOf(set.*.__fds_bits) {
    return set.*.__fds_bits;
}
pub const FD_SETSIZE = __FD_SETSIZE;
pub const NFDBITS = __NFDBITS;
pub inline fn FD_SET(fd: anytype, fdsetp: anytype) @TypeOf(__FD_SET(fd, fdsetp)) {
    return __FD_SET(fd, fdsetp);
}
pub inline fn FD_CLR(fd: anytype, fdsetp: anytype) @TypeOf(__FD_CLR(fd, fdsetp)) {
    return __FD_CLR(fd, fdsetp);
}
pub inline fn FD_ISSET(fd: anytype, fdsetp: anytype) @TypeOf(__FD_ISSET(fd, fdsetp)) {
    return __FD_ISSET(fd, fdsetp);
}
pub inline fn FD_ZERO(fdsetp: anytype) @TypeOf(__FD_ZERO(fdsetp)) {
    return __FD_ZERO(fdsetp);
}
pub const __blksize_t_defined = "";
pub const __blkcnt_t_defined = "";
pub const __fsblkcnt_t_defined = "";
pub const __fsfilcnt_t_defined = "";
pub const _BITS_PTHREADTYPES_COMMON_H = @as(c_int, 1);
pub const _THREAD_SHARED_TYPES_H = @as(c_int, 1);
pub const _BITS_PTHREADTYPES_ARCH_H = @as(c_int, 1);
pub const __SIZEOF_PTHREAD_MUTEX_T = @as(c_int, 40);
pub const __SIZEOF_PTHREAD_ATTR_T = @as(c_int, 56);
pub const __SIZEOF_PTHREAD_RWLOCK_T = @as(c_int, 56);
pub const __SIZEOF_PTHREAD_BARRIER_T = @as(c_int, 32);
pub const __SIZEOF_PTHREAD_MUTEXATTR_T = @as(c_int, 4);
pub const __SIZEOF_PTHREAD_COND_T = @as(c_int, 48);
pub const __SIZEOF_PTHREAD_CONDATTR_T = @as(c_int, 4);
pub const __SIZEOF_PTHREAD_RWLOCKATTR_T = @as(c_int, 8);
pub const __SIZEOF_PTHREAD_BARRIERATTR_T = @as(c_int, 4);
pub const __LOCK_ALIGNMENT = "";
pub const __ONCE_ALIGNMENT = "";
pub const _BITS_ATOMIC_WIDE_COUNTER_H = "";
pub const _THREAD_MUTEX_INTERNAL_H = @as(c_int, 1);
pub const __PTHREAD_MUTEX_HAVE_PREV = @as(c_int, 1);
pub const _RWLOCK_INTERNAL_H = "";
pub inline fn __PTHREAD_RWLOCK_INITIALIZER(__flags: anytype) @TypeOf(__flags) {
    return blk: {
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @TypeOf(__PTHREAD_RWLOCK_ELISION_EXTRA);
        _ = @as(c_int, 0);
        break :blk __flags;
    };
}
pub const __have_pthread_attr_t = @as(c_int, 1);
pub const _ALLOCA_H = @as(c_int, 1);
pub const __COMPAR_FN_T = "";
pub const PNG_H = "";
pub const PNG_LIBPNG_VER_STRING = "1.6.37";
pub const PNG_HEADER_VERSION_STRING = " libpng version 1.6.37 - April 14, 2019\n";
pub const PNG_LIBPNG_VER_SONUM = @as(c_int, 16);
pub const PNG_LIBPNG_VER_DLLNUM = @as(c_int, 16);
pub const PNG_LIBPNG_VER_MAJOR = @as(c_int, 1);
pub const PNG_LIBPNG_VER_MINOR = @as(c_int, 6);
pub const PNG_LIBPNG_VER_RELEASE = @as(c_int, 37);
pub const PNG_LIBPNG_VER_BUILD = @as(c_int, 0);
pub const PNG_LIBPNG_BUILD_ALPHA = @as(c_int, 1);
pub const PNG_LIBPNG_BUILD_BETA = @as(c_int, 2);
pub const PNG_LIBPNG_BUILD_RC = @as(c_int, 3);
pub const PNG_LIBPNG_BUILD_STABLE = @as(c_int, 4);
pub const PNG_LIBPNG_BUILD_RELEASE_STATUS_MASK = @as(c_int, 7);
pub const PNG_LIBPNG_BUILD_PATCH = @as(c_int, 8);
pub const PNG_LIBPNG_BUILD_PRIVATE = @as(c_int, 16);
pub const PNG_LIBPNG_BUILD_SPECIAL = @as(c_int, 32);
pub const PNG_LIBPNG_BUILD_BASE_TYPE = PNG_LIBPNG_BUILD_STABLE;
pub const PNG_LIBPNG_VER = @as(c_int, 10637);
pub const PNGLCONF_H = "";
pub const PNG_16BIT_SUPPORTED = "";
pub const PNG_ALIGNED_MEMORY_SUPPORTED = "";
pub const PNG_BENIGN_ERRORS_SUPPORTED = "";
pub const PNG_BENIGN_READ_ERRORS_SUPPORTED = "";
pub const PNG_BUILD_GRAYSCALE_PALETTE_SUPPORTED = "";
pub const PNG_CHECK_FOR_INVALID_INDEX_SUPPORTED = "";
pub const PNG_COLORSPACE_SUPPORTED = "";
pub const PNG_CONSOLE_IO_SUPPORTED = "";
pub const PNG_CONVERT_tIME_SUPPORTED = "";
pub const PNG_EASY_ACCESS_SUPPORTED = "";
pub const PNG_ERROR_TEXT_SUPPORTED = "";
pub const PNG_FIXED_POINT_SUPPORTED = "";
pub const PNG_FLOATING_ARITHMETIC_SUPPORTED = "";
pub const PNG_FLOATING_POINT_SUPPORTED = "";
pub const PNG_FORMAT_AFIRST_SUPPORTED = "";
pub const PNG_FORMAT_BGR_SUPPORTED = "";
pub const PNG_GAMMA_SUPPORTED = "";
pub const PNG_GET_PALETTE_MAX_SUPPORTED = "";
pub const PNG_HANDLE_AS_UNKNOWN_SUPPORTED = "";
pub const PNG_INCH_CONVERSIONS_SUPPORTED = "";
pub const PNG_INFO_IMAGE_SUPPORTED = "";
pub const PNG_IO_STATE_SUPPORTED = "";
pub const PNG_MNG_FEATURES_SUPPORTED = "";
pub const PNG_POINTER_INDEXING_SUPPORTED = "";
pub const PNG_PROGRESSIVE_READ_SUPPORTED = "";
pub const PNG_READ_16BIT_SUPPORTED = "";
pub const PNG_READ_ALPHA_MODE_SUPPORTED = "";
pub const PNG_READ_ANCILLARY_CHUNKS_SUPPORTED = "";
pub const PNG_READ_BACKGROUND_SUPPORTED = "";
pub const PNG_READ_BGR_SUPPORTED = "";
pub const PNG_READ_CHECK_FOR_INVALID_INDEX_SUPPORTED = "";
pub const PNG_READ_COMPOSITE_NODIV_SUPPORTED = "";
pub const PNG_READ_COMPRESSED_TEXT_SUPPORTED = "";
pub const PNG_READ_EXPAND_16_SUPPORTED = "";
pub const PNG_READ_EXPAND_SUPPORTED = "";
pub const PNG_READ_FILLER_SUPPORTED = "";
pub const PNG_READ_GAMMA_SUPPORTED = "";
pub const PNG_READ_GET_PALETTE_MAX_SUPPORTED = "";
pub const PNG_READ_GRAY_TO_RGB_SUPPORTED = "";
pub const PNG_READ_INTERLACING_SUPPORTED = "";
pub const PNG_READ_INT_FUNCTIONS_SUPPORTED = "";
pub const PNG_READ_INVERT_ALPHA_SUPPORTED = "";
pub const PNG_READ_INVERT_SUPPORTED = "";
pub const PNG_READ_OPT_PLTE_SUPPORTED = "";
pub const PNG_READ_PACKSWAP_SUPPORTED = "";
pub const PNG_READ_PACK_SUPPORTED = "";
pub const PNG_READ_QUANTIZE_SUPPORTED = "";
pub const PNG_READ_RGB_TO_GRAY_SUPPORTED = "";
pub const PNG_READ_SCALE_16_TO_8_SUPPORTED = "";
pub const PNG_READ_SHIFT_SUPPORTED = "";
pub const PNG_READ_STRIP_16_TO_8_SUPPORTED = "";
pub const PNG_READ_STRIP_ALPHA_SUPPORTED = "";
pub const PNG_READ_SUPPORTED = "";
pub const PNG_READ_SWAP_ALPHA_SUPPORTED = "";
pub const PNG_READ_SWAP_SUPPORTED = "";
pub const PNG_READ_TEXT_SUPPORTED = "";
pub const PNG_READ_TRANSFORMS_SUPPORTED = "";
pub const PNG_READ_UNKNOWN_CHUNKS_SUPPORTED = "";
pub const PNG_READ_USER_CHUNKS_SUPPORTED = "";
pub const PNG_READ_USER_TRANSFORM_SUPPORTED = "";
pub const PNG_READ_bKGD_SUPPORTED = "";
pub const PNG_READ_cHRM_SUPPORTED = "";
pub const PNG_READ_eXIf_SUPPORTED = "";
pub const PNG_READ_gAMA_SUPPORTED = "";
pub const PNG_READ_hIST_SUPPORTED = "";
pub const PNG_READ_iCCP_SUPPORTED = "";
pub const PNG_READ_iTXt_SUPPORTED = "";
pub const PNG_READ_oFFs_SUPPORTED = "";
pub const PNG_READ_pCAL_SUPPORTED = "";
pub const PNG_READ_pHYs_SUPPORTED = "";
pub const PNG_READ_sBIT_SUPPORTED = "";
pub const PNG_READ_sCAL_SUPPORTED = "";
pub const PNG_READ_sPLT_SUPPORTED = "";
pub const PNG_READ_sRGB_SUPPORTED = "";
pub const PNG_READ_tEXt_SUPPORTED = "";
pub const PNG_READ_tIME_SUPPORTED = "";
pub const PNG_READ_tRNS_SUPPORTED = "";
pub const PNG_READ_zTXt_SUPPORTED = "";
pub const PNG_SAVE_INT_32_SUPPORTED = "";
pub const PNG_SAVE_UNKNOWN_CHUNKS_SUPPORTED = "";
pub const PNG_SEQUENTIAL_READ_SUPPORTED = "";
pub const PNG_SETJMP_SUPPORTED = "";
pub const PNG_SET_OPTION_SUPPORTED = "";
pub const PNG_SET_UNKNOWN_CHUNKS_SUPPORTED = "";
pub const PNG_SET_USER_LIMITS_SUPPORTED = "";
pub const PNG_SIMPLIFIED_READ_AFIRST_SUPPORTED = "";
pub const PNG_SIMPLIFIED_READ_BGR_SUPPORTED = "";
pub const PNG_SIMPLIFIED_READ_SUPPORTED = "";
pub const PNG_SIMPLIFIED_WRITE_AFIRST_SUPPORTED = "";
pub const PNG_SIMPLIFIED_WRITE_BGR_SUPPORTED = "";
pub const PNG_SIMPLIFIED_WRITE_STDIO_SUPPORTED = "";
pub const PNG_SIMPLIFIED_WRITE_SUPPORTED = "";
pub const PNG_STDIO_SUPPORTED = "";
pub const PNG_STORE_UNKNOWN_CHUNKS_SUPPORTED = "";
pub const PNG_TEXT_SUPPORTED = "";
pub const PNG_TIME_RFC1123_SUPPORTED = "";
pub const PNG_UNKNOWN_CHUNKS_SUPPORTED = "";
pub const PNG_USER_CHUNKS_SUPPORTED = "";
pub const PNG_USER_LIMITS_SUPPORTED = "";
pub const PNG_USER_MEM_SUPPORTED = "";
pub const PNG_USER_TRANSFORM_INFO_SUPPORTED = "";
pub const PNG_USER_TRANSFORM_PTR_SUPPORTED = "";
pub const PNG_WARNINGS_SUPPORTED = "";
pub const PNG_WRITE_16BIT_SUPPORTED = "";
pub const PNG_WRITE_ANCILLARY_CHUNKS_SUPPORTED = "";
pub const PNG_WRITE_BGR_SUPPORTED = "";
pub const PNG_WRITE_CHECK_FOR_INVALID_INDEX_SUPPORTED = "";
pub const PNG_WRITE_COMPRESSED_TEXT_SUPPORTED = "";
pub const PNG_WRITE_CUSTOMIZE_COMPRESSION_SUPPORTED = "";
pub const PNG_WRITE_CUSTOMIZE_ZTXT_COMPRESSION_SUPPORTED = "";
pub const PNG_WRITE_FILLER_SUPPORTED = "";
pub const PNG_WRITE_FILTER_SUPPORTED = "";
pub const PNG_WRITE_FLUSH_SUPPORTED = "";
pub const PNG_WRITE_GET_PALETTE_MAX_SUPPORTED = "";
pub const PNG_WRITE_INTERLACING_SUPPORTED = "";
pub const PNG_WRITE_INT_FUNCTIONS_SUPPORTED = "";
pub const PNG_WRITE_INVERT_ALPHA_SUPPORTED = "";
pub const PNG_WRITE_INVERT_SUPPORTED = "";
pub const PNG_WRITE_OPTIMIZE_CMF_SUPPORTED = "";
pub const PNG_WRITE_PACKSWAP_SUPPORTED = "";
pub const PNG_WRITE_PACK_SUPPORTED = "";
pub const PNG_WRITE_SHIFT_SUPPORTED = "";
pub const PNG_WRITE_SUPPORTED = "";
pub const PNG_WRITE_SWAP_ALPHA_SUPPORTED = "";
pub const PNG_WRITE_SWAP_SUPPORTED = "";
pub const PNG_WRITE_TEXT_SUPPORTED = "";
pub const PNG_WRITE_TRANSFORMS_SUPPORTED = "";
pub const PNG_WRITE_UNKNOWN_CHUNKS_SUPPORTED = "";
pub const PNG_WRITE_USER_TRANSFORM_SUPPORTED = "";
pub const PNG_WRITE_WEIGHTED_FILTER_SUPPORTED = "";
pub const PNG_WRITE_bKGD_SUPPORTED = "";
pub const PNG_WRITE_cHRM_SUPPORTED = "";
pub const PNG_WRITE_eXIf_SUPPORTED = "";
pub const PNG_WRITE_gAMA_SUPPORTED = "";
pub const PNG_WRITE_hIST_SUPPORTED = "";
pub const PNG_WRITE_iCCP_SUPPORTED = "";
pub const PNG_WRITE_iTXt_SUPPORTED = "";
pub const PNG_WRITE_oFFs_SUPPORTED = "";
pub const PNG_WRITE_pCAL_SUPPORTED = "";
pub const PNG_WRITE_pHYs_SUPPORTED = "";
pub const PNG_WRITE_sBIT_SUPPORTED = "";
pub const PNG_WRITE_sCAL_SUPPORTED = "";
pub const PNG_WRITE_sPLT_SUPPORTED = "";
pub const PNG_WRITE_sRGB_SUPPORTED = "";
pub const PNG_WRITE_tEXt_SUPPORTED = "";
pub const PNG_WRITE_tIME_SUPPORTED = "";
pub const PNG_WRITE_tRNS_SUPPORTED = "";
pub const PNG_WRITE_zTXt_SUPPORTED = "";
pub const PNG_bKGD_SUPPORTED = "";
pub const PNG_cHRM_SUPPORTED = "";
pub const PNG_eXIf_SUPPORTED = "";
pub const PNG_gAMA_SUPPORTED = "";
pub const PNG_hIST_SUPPORTED = "";
pub const PNG_iCCP_SUPPORTED = "";
pub const PNG_iTXt_SUPPORTED = "";
pub const PNG_oFFs_SUPPORTED = "";
pub const PNG_pCAL_SUPPORTED = "";
pub const PNG_pHYs_SUPPORTED = "";
pub const PNG_sBIT_SUPPORTED = "";
pub const PNG_sCAL_SUPPORTED = "";
pub const PNG_sPLT_SUPPORTED = "";
pub const PNG_sRGB_SUPPORTED = "";
pub const PNG_tEXt_SUPPORTED = "";
pub const PNG_tIME_SUPPORTED = "";
pub const PNG_tRNS_SUPPORTED = "";
pub const PNG_zTXt_SUPPORTED = "";
pub const PNG_API_RULE = @as(c_int, 0);
pub const PNG_DEFAULT_READ_MACROS = @as(c_int, 1);
pub const PNG_GAMMA_THRESHOLD_FIXED = @as(c_int, 5000);
pub const PNG_IDAT_READ_SIZE = PNG_ZBUF_SIZE;
pub const PNG_INFLATE_BUF_SIZE = @as(c_int, 1024);
pub const PNG_MAX_GAMMA_8 = @as(c_int, 11);
pub const PNG_QUANTIZE_BLUE_BITS = @as(c_int, 5);
pub const PNG_QUANTIZE_GREEN_BITS = @as(c_int, 5);
pub const PNG_QUANTIZE_RED_BITS = @as(c_int, 5);
pub const PNG_TEXT_Z_DEFAULT_COMPRESSION = -@as(c_int, 1);
pub const PNG_TEXT_Z_DEFAULT_STRATEGY = @as(c_int, 0);
pub const PNG_USER_CHUNK_CACHE_MAX = @as(c_int, 1000);
pub const PNG_USER_CHUNK_MALLOC_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 8000000, .decimal);
pub const PNG_USER_HEIGHT_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 1000000, .decimal);
pub const PNG_USER_WIDTH_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 1000000, .decimal);
pub const PNG_ZBUF_SIZE = @as(c_int, 8192);
pub const PNG_ZLIB_VERNUM = @as(c_int, 0x12b0);
pub const PNG_Z_DEFAULT_COMPRESSION = -@as(c_int, 1);
pub const PNG_Z_DEFAULT_NOFILTER_STRATEGY = @as(c_int, 0);
pub const PNG_Z_DEFAULT_STRATEGY = @as(c_int, 1);
pub const PNG_sCAL_PRECISION = @as(c_int, 5);
pub const PNG_sRGB_PROFILE_CHECKS = @as(c_int, 2);
pub const PNG_APNG_SUPPORTED = "";
pub const PNG_READ_APNG_SUPPORTED = "";
pub const PNG_WRITE_APNG_SUPPORTED = "";
pub const PNGCONF_H = "";
pub const __CLANG_LIMITS_H = "";
pub const _GCC_LIMITS_H_ = "";
pub const _LIBC_LIMITS_H_ = @as(c_int, 1);
pub const MB_LEN_MAX = @as(c_int, 16);
pub const LLONG_MIN = -LLONG_MAX - @as(c_int, 1);
pub const LLONG_MAX = __LONG_LONG_MAX__;
pub const ULLONG_MAX = (LLONG_MAX * @as(c_ulonglong, 2)) + @as(c_int, 1);
pub const _BITS_POSIX1_LIM_H = @as(c_int, 1);
pub const _POSIX_AIO_LISTIO_MAX = @as(c_int, 2);
pub const _POSIX_AIO_MAX = @as(c_int, 1);
pub const _POSIX_ARG_MAX = @as(c_int, 4096);
pub const _POSIX_CHILD_MAX = @as(c_int, 25);
pub const _POSIX_DELAYTIMER_MAX = @as(c_int, 32);
pub const _POSIX_HOST_NAME_MAX = @as(c_int, 255);
pub const _POSIX_LINK_MAX = @as(c_int, 8);
pub const _POSIX_LOGIN_NAME_MAX = @as(c_int, 9);
pub const _POSIX_MAX_CANON = @as(c_int, 255);
pub const _POSIX_MAX_INPUT = @as(c_int, 255);
pub const _POSIX_MQ_OPEN_MAX = @as(c_int, 8);
pub const _POSIX_MQ_PRIO_MAX = @as(c_int, 32);
pub const _POSIX_NAME_MAX = @as(c_int, 14);
pub const _POSIX_NGROUPS_MAX = @as(c_int, 8);
pub const _POSIX_OPEN_MAX = @as(c_int, 20);
pub const _POSIX_PATH_MAX = @as(c_int, 256);
pub const _POSIX_PIPE_BUF = @as(c_int, 512);
pub const _POSIX_RE_DUP_MAX = @as(c_int, 255);
pub const _POSIX_RTSIG_MAX = @as(c_int, 8);
pub const _POSIX_SEM_NSEMS_MAX = @as(c_int, 256);
pub const _POSIX_SEM_VALUE_MAX = @as(c_int, 32767);
pub const _POSIX_SIGQUEUE_MAX = @as(c_int, 32);
pub const _POSIX_SSIZE_MAX = @as(c_int, 32767);
pub const _POSIX_STREAM_MAX = @as(c_int, 8);
pub const _POSIX_SYMLINK_MAX = @as(c_int, 255);
pub const _POSIX_SYMLOOP_MAX = @as(c_int, 8);
pub const _POSIX_TIMER_MAX = @as(c_int, 32);
pub const _POSIX_TTY_NAME_MAX = @as(c_int, 9);
pub const _POSIX_TZNAME_MAX = @as(c_int, 6);
pub const _POSIX_CLOCKRES_MIN = @import("std").zig.c_translation.promoteIntLiteral(c_int, 20000000, .decimal);
pub const __undef_NR_OPEN = "";
pub const __undef_LINK_MAX = "";
pub const __undef_OPEN_MAX = "";
pub const __undef_ARG_MAX = "";
pub const _LINUX_LIMITS_H = "";
pub const NR_OPEN = @as(c_int, 1024);
pub const NGROUPS_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65536, .decimal);
pub const ARG_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 131072, .decimal);
pub const LINK_MAX = @as(c_int, 127);
pub const MAX_CANON = @as(c_int, 255);
pub const MAX_INPUT = @as(c_int, 255);
pub const NAME_MAX = @as(c_int, 255);
pub const PATH_MAX = @as(c_int, 4096);
pub const PIPE_BUF = @as(c_int, 4096);
pub const XATTR_NAME_MAX = @as(c_int, 255);
pub const XATTR_SIZE_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65536, .decimal);
pub const XATTR_LIST_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65536, .decimal);
pub const RTSIG_MAX = @as(c_int, 32);
pub const _POSIX_THREAD_KEYS_MAX = @as(c_int, 128);
pub const PTHREAD_KEYS_MAX = @as(c_int, 1024);
pub const _POSIX_THREAD_DESTRUCTOR_ITERATIONS = @as(c_int, 4);
pub const PTHREAD_DESTRUCTOR_ITERATIONS = _POSIX_THREAD_DESTRUCTOR_ITERATIONS;
pub const _POSIX_THREAD_THREADS_MAX = @as(c_int, 64);
pub const AIO_PRIO_DELTA_MAX = @as(c_int, 20);
pub const PTHREAD_STACK_MIN = @as(c_int, 16384);
pub const DELAYTIMER_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const TTY_NAME_MAX = @as(c_int, 32);
pub const LOGIN_NAME_MAX = @as(c_int, 256);
pub const HOST_NAME_MAX = @as(c_int, 64);
pub const MQ_PRIO_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 32768, .decimal);
pub const SEM_VALUE_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const SSIZE_MAX = LONG_MAX;
pub const _BITS_POSIX2_LIM_H = @as(c_int, 1);
pub const _POSIX2_BC_BASE_MAX = @as(c_int, 99);
pub const _POSIX2_BC_DIM_MAX = @as(c_int, 2048);
pub const _POSIX2_BC_SCALE_MAX = @as(c_int, 99);
pub const _POSIX2_BC_STRING_MAX = @as(c_int, 1000);
pub const _POSIX2_COLL_WEIGHTS_MAX = @as(c_int, 2);
pub const _POSIX2_EXPR_NEST_MAX = @as(c_int, 32);
pub const _POSIX2_LINE_MAX = @as(c_int, 2048);
pub const _POSIX2_RE_DUP_MAX = @as(c_int, 255);
pub const _POSIX2_CHARCLASS_NAME_MAX = @as(c_int, 14);
pub const BC_BASE_MAX = _POSIX2_BC_BASE_MAX;
pub const BC_DIM_MAX = _POSIX2_BC_DIM_MAX;
pub const BC_SCALE_MAX = _POSIX2_BC_SCALE_MAX;
pub const BC_STRING_MAX = _POSIX2_BC_STRING_MAX;
pub const COLL_WEIGHTS_MAX = @as(c_int, 255);
pub const EXPR_NEST_MAX = _POSIX2_EXPR_NEST_MAX;
pub const LINE_MAX = _POSIX2_LINE_MAX;
pub const CHARCLASS_NAME_MAX = @as(c_int, 2048);
pub const RE_DUP_MAX = @as(c_int, 0x7fff);
pub const SCHAR_MAX = __SCHAR_MAX__;
pub const SHRT_MAX = __SHRT_MAX__;
pub const INT_MAX = __INT_MAX__;
pub const LONG_MAX = __LONG_MAX__;
pub const SCHAR_MIN = -__SCHAR_MAX__ - @as(c_int, 1);
pub const SHRT_MIN = -__SHRT_MAX__ - @as(c_int, 1);
pub const INT_MIN = -__INT_MAX__ - @as(c_int, 1);
pub const LONG_MIN = -__LONG_MAX__ - @as(c_long, 1);
pub const UCHAR_MAX = (__SCHAR_MAX__ * @as(c_int, 2)) + @as(c_int, 1);
pub const USHRT_MAX = (__SHRT_MAX__ * @as(c_int, 2)) + @as(c_int, 1);
pub const UINT_MAX = (__INT_MAX__ * @as(c_uint, 2)) + @as(c_uint, 1);
pub const ULONG_MAX = (__LONG_MAX__ * @as(c_ulong, 2)) + @as(c_ulong, 1);
pub const CHAR_BIT = __CHAR_BIT__;
pub const CHAR_MIN = SCHAR_MIN;
pub const CHAR_MAX = __SCHAR_MAX__;
pub const __STDDEF_H = "";
pub const __need_ptrdiff_t = "";
pub const __need_STDDEF_H_misc = "";
pub const _PTRDIFF_T = "";
pub const __CLANG_MAX_ALIGN_T_DEFINED = "";
pub const _SETJMP_H = @as(c_int, 1);
pub const _BITS_SETJMP_H = @as(c_int, 1);
pub const __jmp_buf_tag_defined = @as(c_int, 1);
pub inline fn sigsetjmp(env: anytype, savemask: anytype) @TypeOf(__sigsetjmp(env, savemask)) {
    return __sigsetjmp(env, savemask);
}
pub const _TIME_H = @as(c_int, 1);
pub const _BITS_TIME_H = @as(c_int, 1);
pub const CLOCKS_PER_SEC = @import("std").zig.c_translation.cast(__clock_t, @import("std").zig.c_translation.promoteIntLiteral(c_int, 1000000, .decimal));
pub const CLOCK_REALTIME = @as(c_int, 0);
pub const CLOCK_MONOTONIC = @as(c_int, 1);
pub const CLOCK_PROCESS_CPUTIME_ID = @as(c_int, 2);
pub const CLOCK_THREAD_CPUTIME_ID = @as(c_int, 3);
pub const CLOCK_MONOTONIC_RAW = @as(c_int, 4);
pub const CLOCK_REALTIME_COARSE = @as(c_int, 5);
pub const CLOCK_MONOTONIC_COARSE = @as(c_int, 6);
pub const CLOCK_BOOTTIME = @as(c_int, 7);
pub const CLOCK_REALTIME_ALARM = @as(c_int, 8);
pub const CLOCK_BOOTTIME_ALARM = @as(c_int, 9);
pub const CLOCK_TAI = @as(c_int, 11);
pub const TIMER_ABSTIME = @as(c_int, 1);
pub const __struct_tm_defined = @as(c_int, 1);
pub const __itimerspec_defined = @as(c_int, 1);
pub const _BITS_TYPES_LOCALE_T_H = @as(c_int, 1);
pub const _BITS_TYPES___LOCALE_T_H = @as(c_int, 1);
pub const TIME_UTC = @as(c_int, 1);
pub inline fn __isleap(year: anytype) @TypeOf((@import("std").zig.c_translation.MacroArithmetic.rem(year, @as(c_int, 4)) == @as(c_int, 0)) and ((@import("std").zig.c_translation.MacroArithmetic.rem(year, @as(c_int, 100)) != @as(c_int, 0)) or (@import("std").zig.c_translation.MacroArithmetic.rem(year, @as(c_int, 400)) == @as(c_int, 0)))) {
    return (@import("std").zig.c_translation.MacroArithmetic.rem(year, @as(c_int, 4)) == @as(c_int, 0)) and ((@import("std").zig.c_translation.MacroArithmetic.rem(year, @as(c_int, 100)) != @as(c_int, 0)) or (@import("std").zig.c_translation.MacroArithmetic.rem(year, @as(c_int, 400)) == @as(c_int, 0)));
}
pub const PNG_USE_READ_MACROS = "";
pub inline fn PNGARG(arglist: anytype) @TypeOf(arglist) {
    return arglist;
}
pub const PNGCAPI = "";
pub const PNGCBAPI = PNGCAPI;
pub const PNGAPI = PNGCAPI;
pub const PNG_IMPEXP = "";
pub inline fn PNG_FUNCTION(@"type": anytype, name: anytype, args: anytype, attributes: anytype) @TypeOf(attributes ++ @"type" ++ name ++ args) {
    return attributes ++ @"type" ++ name ++ args;
}
pub inline fn PNG_EXPORT_TYPE(@"type": anytype) @TypeOf(PNG_IMPEXP ++ @"type") {
    return PNG_IMPEXP ++ @"type";
}
pub inline fn PNG_EXPORTA(ordinal: anytype, @"type": anytype, name: anytype, args: anytype, attributes: anytype) @TypeOf(PNG_FUNCTION(PNG_EXPORT_TYPE(@"type"), PNGAPI ++ name, PNGARG(args), PNG_LINKAGE_API ++ attributes)) {
    _ = @TypeOf(ordinal);
    return PNG_FUNCTION(PNG_EXPORT_TYPE(@"type"), PNGAPI ++ name, PNGARG(args), PNG_LINKAGE_API ++ attributes);
}
pub const PNG_EMPTY = "";
pub inline fn PNG_EXPORT(ordinal: anytype, @"type": anytype, name: anytype, args: anytype) @TypeOf(PNG_EXPORTA(ordinal, @"type", name, args, PNG_EMPTY)) {
    return PNG_EXPORTA(ordinal, @"type", name, args, PNG_EMPTY);
}
pub const PNG_PEDANTIC_WARNINGS_SUPPORTED = "";
pub const PNG_LIBPNG_BUILD_TYPE = PNG_LIBPNG_BUILD_BASE_TYPE;
pub const png_libpng_ver = png_get_header_ver(NULL);
pub const PNG_DISPOSE_OP_NONE = @as(c_uint, 0x00);
pub const PNG_DISPOSE_OP_BACKGROUND = @as(c_uint, 0x01);
pub const PNG_DISPOSE_OP_PREVIOUS = @as(c_uint, 0x02);
pub const PNG_BLEND_OP_SOURCE = @as(c_uint, 0x00);
pub const PNG_BLEND_OP_OVER = @as(c_uint, 0x01);
pub const PNG_TEXT_COMPRESSION_NONE_WR = -@as(c_int, 3);
pub const PNG_TEXT_COMPRESSION_zTXt_WR = -@as(c_int, 2);
pub const PNG_TEXT_COMPRESSION_NONE = -@as(c_int, 1);
pub const PNG_TEXT_COMPRESSION_zTXt = @as(c_int, 0);
pub const PNG_ITXT_COMPRESSION_NONE = @as(c_int, 1);
pub const PNG_ITXT_COMPRESSION_zTXt = @as(c_int, 2);
pub const PNG_TEXT_COMPRESSION_LAST = @as(c_int, 3);
pub const PNG_HAVE_IHDR = @as(c_int, 0x01);
pub const PNG_HAVE_PLTE = @as(c_int, 0x02);
pub const PNG_AFTER_IDAT = @as(c_int, 0x08);
pub const PNG_UINT_31_MAX = @import("std").zig.c_translation.cast(png_uint_32, @as(c_long, 0x7fffffff));
pub const PNG_UINT_32_MAX = @import("std").zig.c_translation.cast(png_uint_32, -@as(c_int, 1));
pub const PNG_SIZE_MAX = @import("std").zig.c_translation.cast(usize, -@as(c_int, 1));
pub const PNG_FP_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 100000, .decimal);
pub const PNG_FP_HALF = @import("std").zig.c_translation.promoteIntLiteral(c_int, 50000, .decimal);
pub const PNG_FP_MAX = @import("std").zig.c_translation.cast(png_fixed_point, @as(c_long, 0x7fffffff));
pub const PNG_FP_MIN = -PNG_FP_MAX;
pub const PNG_COLOR_MASK_PALETTE = @as(c_int, 1);
pub const PNG_COLOR_MASK_COLOR = @as(c_int, 2);
pub const PNG_COLOR_MASK_ALPHA = @as(c_int, 4);
pub const PNG_COLOR_TYPE_GRAY = @as(c_int, 0);
pub const PNG_COLOR_TYPE_PALETTE = PNG_COLOR_MASK_COLOR | PNG_COLOR_MASK_PALETTE;
pub const PNG_COLOR_TYPE_RGB = PNG_COLOR_MASK_COLOR;
pub const PNG_COLOR_TYPE_RGB_ALPHA = PNG_COLOR_MASK_COLOR | PNG_COLOR_MASK_ALPHA;
pub const PNG_COLOR_TYPE_GRAY_ALPHA = PNG_COLOR_MASK_ALPHA;
pub const PNG_COLOR_TYPE_RGBA = PNG_COLOR_TYPE_RGB_ALPHA;
pub const PNG_COLOR_TYPE_GA = PNG_COLOR_TYPE_GRAY_ALPHA;
pub const PNG_COMPRESSION_TYPE_BASE = @as(c_int, 0);
pub const PNG_COMPRESSION_TYPE_DEFAULT = PNG_COMPRESSION_TYPE_BASE;
pub const PNG_FILTER_TYPE_BASE = @as(c_int, 0);
pub const PNG_INTRAPIXEL_DIFFERENCING = @as(c_int, 64);
pub const PNG_FILTER_TYPE_DEFAULT = PNG_FILTER_TYPE_BASE;
pub const PNG_INTERLACE_NONE = @as(c_int, 0);
pub const PNG_INTERLACE_ADAM7 = @as(c_int, 1);
pub const PNG_INTERLACE_LAST = @as(c_int, 2);
pub const PNG_OFFSET_PIXEL = @as(c_int, 0);
pub const PNG_OFFSET_MICROMETER = @as(c_int, 1);
pub const PNG_OFFSET_LAST = @as(c_int, 2);
pub const PNG_EQUATION_LINEAR = @as(c_int, 0);
pub const PNG_EQUATION_BASE_E = @as(c_int, 1);
pub const PNG_EQUATION_ARBITRARY = @as(c_int, 2);
pub const PNG_EQUATION_HYPERBOLIC = @as(c_int, 3);
pub const PNG_EQUATION_LAST = @as(c_int, 4);
pub const PNG_SCALE_UNKNOWN = @as(c_int, 0);
pub const PNG_SCALE_METER = @as(c_int, 1);
pub const PNG_SCALE_RADIAN = @as(c_int, 2);
pub const PNG_SCALE_LAST = @as(c_int, 3);
pub const PNG_RESOLUTION_UNKNOWN = @as(c_int, 0);
pub const PNG_RESOLUTION_METER = @as(c_int, 1);
pub const PNG_RESOLUTION_LAST = @as(c_int, 2);
pub const PNG_sRGB_INTENT_PERCEPTUAL = @as(c_int, 0);
pub const PNG_sRGB_INTENT_RELATIVE = @as(c_int, 1);
pub const PNG_sRGB_INTENT_SATURATION = @as(c_int, 2);
pub const PNG_sRGB_INTENT_ABSOLUTE = @as(c_int, 3);
pub const PNG_sRGB_INTENT_LAST = @as(c_int, 4);
pub const PNG_KEYWORD_MAX_LENGTH = @as(c_int, 79);
pub const PNG_MAX_PALETTE_LENGTH = @as(c_int, 256);
pub const PNG_INFO_gAMA = @as(c_uint, 0x0001);
pub const PNG_INFO_sBIT = @as(c_uint, 0x0002);
pub const PNG_INFO_cHRM = @as(c_uint, 0x0004);
pub const PNG_INFO_PLTE = @as(c_uint, 0x0008);
pub const PNG_INFO_tRNS = @as(c_uint, 0x0010);
pub const PNG_INFO_bKGD = @as(c_uint, 0x0020);
pub const PNG_INFO_hIST = @as(c_uint, 0x0040);
pub const PNG_INFO_pHYs = @as(c_uint, 0x0080);
pub const PNG_INFO_oFFs = @as(c_uint, 0x0100);
pub const PNG_INFO_tIME = @as(c_uint, 0x0200);
pub const PNG_INFO_pCAL = @as(c_uint, 0x0400);
pub const PNG_INFO_sRGB = @as(c_uint, 0x0800);
pub const PNG_INFO_iCCP = @as(c_uint, 0x1000);
pub const PNG_INFO_sPLT = @as(c_uint, 0x2000);
pub const PNG_INFO_sCAL = @as(c_uint, 0x4000);
pub const PNG_INFO_IDAT = @as(c_uint, 0x8000);
pub const PNG_INFO_eXIf = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 0x10000, .hexadecimal);
pub const PNG_INFO_acTL = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 0x20000, .hexadecimal);
pub const PNG_INFO_fcTL = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 0x40000, .hexadecimal);
pub const PNG_TRANSFORM_IDENTITY = @as(c_int, 0x0000);
pub const PNG_TRANSFORM_STRIP_16 = @as(c_int, 0x0001);
pub const PNG_TRANSFORM_STRIP_ALPHA = @as(c_int, 0x0002);
pub const PNG_TRANSFORM_PACKING = @as(c_int, 0x0004);
pub const PNG_TRANSFORM_PACKSWAP = @as(c_int, 0x0008);
pub const PNG_TRANSFORM_EXPAND = @as(c_int, 0x0010);
pub const PNG_TRANSFORM_INVERT_MONO = @as(c_int, 0x0020);
pub const PNG_TRANSFORM_SHIFT = @as(c_int, 0x0040);
pub const PNG_TRANSFORM_BGR = @as(c_int, 0x0080);
pub const PNG_TRANSFORM_SWAP_ALPHA = @as(c_int, 0x0100);
pub const PNG_TRANSFORM_SWAP_ENDIAN = @as(c_int, 0x0200);
pub const PNG_TRANSFORM_INVERT_ALPHA = @as(c_int, 0x0400);
pub const PNG_TRANSFORM_STRIP_FILLER = @as(c_int, 0x0800);
pub const PNG_TRANSFORM_STRIP_FILLER_BEFORE = PNG_TRANSFORM_STRIP_FILLER;
pub const PNG_TRANSFORM_STRIP_FILLER_AFTER = @as(c_int, 0x1000);
pub const PNG_TRANSFORM_GRAY_TO_RGB = @as(c_int, 0x2000);
pub const PNG_TRANSFORM_EXPAND_16 = @as(c_int, 0x4000);
pub const PNG_TRANSFORM_SCALE_16 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8000, .hexadecimal);
pub const PNG_FLAG_MNG_EMPTY_PLTE = @as(c_int, 0x01);
pub const PNG_FLAG_MNG_FILTER_64 = @as(c_int, 0x04);
pub const PNG_ALL_MNG_FEATURES = @as(c_int, 0x05);
pub inline fn png_check_sig(sig: anytype, n: anytype) @TypeOf(!(png_sig_cmp(sig, @as(c_int, 0), n) != 0)) {
    return !(png_sig_cmp(sig, @as(c_int, 0), n) != 0);
}
pub inline fn png_jmpbuf(png_ptr: anytype) @TypeOf(png_set_longjmp_fn(png_ptr, longjmp, @import("std").zig.c_translation.sizeof(jmp_buf)).*) {
    return png_set_longjmp_fn(png_ptr, longjmp, @import("std").zig.c_translation.sizeof(jmp_buf)).*;
}
pub const PNG_ERROR_ACTION_NONE = @as(c_int, 1);
pub const PNG_ERROR_ACTION_WARN = @as(c_int, 2);
pub const PNG_ERROR_ACTION_ERROR = @as(c_int, 3);
pub const PNG_RGB_TO_GRAY_DEFAULT = -@as(c_int, 1);
pub const PNG_ALPHA_PNG = @as(c_int, 0);
pub const PNG_ALPHA_STANDARD = @as(c_int, 1);
pub const PNG_ALPHA_ASSOCIATED = @as(c_int, 1);
pub const PNG_ALPHA_PREMULTIPLIED = @as(c_int, 1);
pub const PNG_ALPHA_OPTIMIZED = @as(c_int, 2);
pub const PNG_ALPHA_BROKEN = @as(c_int, 3);
pub const PNG_DEFAULT_sRGB = -@as(c_int, 1);
pub const PNG_GAMMA_MAC_18 = -@as(c_int, 2);
pub const PNG_GAMMA_sRGB = @import("std").zig.c_translation.promoteIntLiteral(c_int, 220000, .decimal);
pub const PNG_GAMMA_LINEAR = PNG_FP_1;
pub const PNG_FILLER_BEFORE = @as(c_int, 0);
pub const PNG_FILLER_AFTER = @as(c_int, 1);
pub const PNG_BACKGROUND_GAMMA_UNKNOWN = @as(c_int, 0);
pub const PNG_BACKGROUND_GAMMA_SCREEN = @as(c_int, 1);
pub const PNG_BACKGROUND_GAMMA_FILE = @as(c_int, 2);
pub const PNG_BACKGROUND_GAMMA_UNIQUE = @as(c_int, 3);
pub const PNG_READ_16_TO_8_SUPPORTED = "";
pub const PNG_GAMMA_THRESHOLD = PNG_GAMMA_THRESHOLD_FIXED * @as(f64, 0.00001);
pub const PNG_CRC_DEFAULT = @as(c_int, 0);
pub const PNG_CRC_ERROR_QUIT = @as(c_int, 1);
pub const PNG_CRC_WARN_DISCARD = @as(c_int, 2);
pub const PNG_CRC_WARN_USE = @as(c_int, 3);
pub const PNG_CRC_QUIET_USE = @as(c_int, 4);
pub const PNG_CRC_NO_CHANGE = @as(c_int, 5);
pub const PNG_NO_FILTERS = @as(c_int, 0x00);
pub const PNG_FILTER_NONE = @as(c_int, 0x08);
pub const PNG_FILTER_SUB = @as(c_int, 0x10);
pub const PNG_FILTER_UP = @as(c_int, 0x20);
pub const PNG_FILTER_AVG = @as(c_int, 0x40);
pub const PNG_FILTER_PAETH = @as(c_int, 0x80);
pub const PNG_FAST_FILTERS = (PNG_FILTER_NONE | PNG_FILTER_SUB) | PNG_FILTER_UP;
pub const PNG_ALL_FILTERS = (PNG_FAST_FILTERS | PNG_FILTER_AVG) | PNG_FILTER_PAETH;
pub const PNG_FILTER_VALUE_NONE = @as(c_int, 0);
pub const PNG_FILTER_VALUE_SUB = @as(c_int, 1);
pub const PNG_FILTER_VALUE_UP = @as(c_int, 2);
pub const PNG_FILTER_VALUE_AVG = @as(c_int, 3);
pub const PNG_FILTER_VALUE_PAETH = @as(c_int, 4);
pub const PNG_FILTER_VALUE_LAST = @as(c_int, 5);
pub const PNG_FILTER_HEURISTIC_DEFAULT = @as(c_int, 0);
pub const PNG_FILTER_HEURISTIC_UNWEIGHTED = @as(c_int, 1);
pub const PNG_FILTER_HEURISTIC_WEIGHTED = @as(c_int, 2);
pub const PNG_FILTER_HEURISTIC_LAST = @as(c_int, 3);
pub const PNG_DESTROY_WILL_FREE_DATA = @as(c_int, 1);
pub const PNG_SET_WILL_FREE_DATA = @as(c_int, 1);
pub const PNG_USER_WILL_FREE_DATA = @as(c_int, 2);
pub const PNG_FREE_HIST = @as(c_uint, 0x0008);
pub const PNG_FREE_ICCP = @as(c_uint, 0x0010);
pub const PNG_FREE_SPLT = @as(c_uint, 0x0020);
pub const PNG_FREE_ROWS = @as(c_uint, 0x0040);
pub const PNG_FREE_PCAL = @as(c_uint, 0x0080);
pub const PNG_FREE_SCAL = @as(c_uint, 0x0100);
pub const PNG_FREE_UNKN = @as(c_uint, 0x0200);
pub const PNG_FREE_PLTE = @as(c_uint, 0x1000);
pub const PNG_FREE_TRNS = @as(c_uint, 0x2000);
pub const PNG_FREE_TEXT = @as(c_uint, 0x4000);
pub const PNG_FREE_EXIF = @as(c_uint, 0x8000);
pub const PNG_FREE_ALL = @as(c_uint, 0xffff);
pub const PNG_FREE_MUL = @as(c_uint, 0x4220);
pub const PNG_HANDLE_CHUNK_AS_DEFAULT = @as(c_int, 0);
pub const PNG_HANDLE_CHUNK_NEVER = @as(c_int, 1);
pub const PNG_HANDLE_CHUNK_IF_SAFE = @as(c_int, 2);
pub const PNG_HANDLE_CHUNK_ALWAYS = @as(c_int, 3);
pub const PNG_HANDLE_CHUNK_LAST = @as(c_int, 4);
pub const PNG_IO_NONE = @as(c_int, 0x0000);
pub const PNG_IO_READING = @as(c_int, 0x0001);
pub const PNG_IO_WRITING = @as(c_int, 0x0002);
pub const PNG_IO_SIGNATURE = @as(c_int, 0x0010);
pub const PNG_IO_CHUNK_HDR = @as(c_int, 0x0020);
pub const PNG_IO_CHUNK_DATA = @as(c_int, 0x0040);
pub const PNG_IO_CHUNK_CRC = @as(c_int, 0x0080);
pub const PNG_IO_MASK_OP = @as(c_int, 0x000f);
pub const PNG_IO_MASK_LOC = @as(c_int, 0x00f0);
pub const PNG_INTERLACE_ADAM7_PASSES = @as(c_int, 7);
pub inline fn PNG_PASS_START_ROW(pass: anytype) @TypeOf(((@as(c_int, 1) & ~pass) << (@as(c_int, 3) - (pass >> @as(c_int, 1)))) & @as(c_int, 7)) {
    return ((@as(c_int, 1) & ~pass) << (@as(c_int, 3) - (pass >> @as(c_int, 1)))) & @as(c_int, 7);
}
pub inline fn PNG_PASS_START_COL(pass: anytype) @TypeOf(((@as(c_int, 1) & pass) << (@as(c_int, 3) - ((pass + @as(c_int, 1)) >> @as(c_int, 1)))) & @as(c_int, 7)) {
    return ((@as(c_int, 1) & pass) << (@as(c_int, 3) - ((pass + @as(c_int, 1)) >> @as(c_int, 1)))) & @as(c_int, 7);
}
pub inline fn PNG_PASS_ROW_OFFSET(pass: anytype) @TypeOf(if (pass > @as(c_int, 2)) @as(c_int, 8) >> ((pass - @as(c_int, 1)) >> @as(c_int, 1)) else @as(c_int, 8)) {
    return if (pass > @as(c_int, 2)) @as(c_int, 8) >> ((pass - @as(c_int, 1)) >> @as(c_int, 1)) else @as(c_int, 8);
}
pub inline fn PNG_PASS_COL_OFFSET(pass: anytype) @TypeOf(@as(c_int, 1) << ((@as(c_int, 7) - pass) >> @as(c_int, 1))) {
    return @as(c_int, 1) << ((@as(c_int, 7) - pass) >> @as(c_int, 1));
}
pub inline fn PNG_PASS_ROW_SHIFT(pass: anytype) @TypeOf(if (pass > @as(c_int, 2)) (@as(c_int, 8) - pass) >> @as(c_int, 1) else @as(c_int, 3)) {
    return if (pass > @as(c_int, 2)) (@as(c_int, 8) - pass) >> @as(c_int, 1) else @as(c_int, 3);
}
pub inline fn PNG_PASS_COL_SHIFT(pass: anytype) @TypeOf(if (pass > @as(c_int, 1)) (@as(c_int, 7) - pass) >> @as(c_int, 1) else @as(c_int, 3)) {
    return if (pass > @as(c_int, 1)) (@as(c_int, 7) - pass) >> @as(c_int, 1) else @as(c_int, 3);
}
pub inline fn PNG_PASS_ROWS(height: anytype, pass: anytype) @TypeOf((height + (((@as(c_int, 1) << PNG_PASS_ROW_SHIFT(pass)) - @as(c_int, 1)) - PNG_PASS_START_ROW(pass))) >> PNG_PASS_ROW_SHIFT(pass)) {
    return (height + (((@as(c_int, 1) << PNG_PASS_ROW_SHIFT(pass)) - @as(c_int, 1)) - PNG_PASS_START_ROW(pass))) >> PNG_PASS_ROW_SHIFT(pass);
}
pub inline fn PNG_PASS_COLS(width: anytype, pass: anytype) @TypeOf((width + (((@as(c_int, 1) << PNG_PASS_COL_SHIFT(pass)) - @as(c_int, 1)) - PNG_PASS_START_COL(pass))) >> PNG_PASS_COL_SHIFT(pass)) {
    return (width + (((@as(c_int, 1) << PNG_PASS_COL_SHIFT(pass)) - @as(c_int, 1)) - PNG_PASS_START_COL(pass))) >> PNG_PASS_COL_SHIFT(pass);
}
pub inline fn PNG_ROW_FROM_PASS_ROW(y_in: anytype, pass: anytype) @TypeOf((y_in << PNG_PASS_ROW_SHIFT(pass)) + PNG_PASS_START_ROW(pass)) {
    return (y_in << PNG_PASS_ROW_SHIFT(pass)) + PNG_PASS_START_ROW(pass);
}
pub inline fn PNG_COL_FROM_PASS_COL(x_in: anytype, pass: anytype) @TypeOf((x_in << PNG_PASS_COL_SHIFT(pass)) + PNG_PASS_START_COL(pass)) {
    return (x_in << PNG_PASS_COL_SHIFT(pass)) + PNG_PASS_START_COL(pass);
}
pub inline fn PNG_PASS_MASK(pass: anytype, off: anytype) @TypeOf(((@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x110145AF, .hexadecimal) >> (((@as(c_int, 7) - off) - pass) << @as(c_int, 2))) & @as(c_int, 0xF)) | ((@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x01145AF0, .hexadecimal) >> (((@as(c_int, 7) - off) - pass) << @as(c_int, 2))) & @as(c_int, 0xF0))) {
    return ((@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x110145AF, .hexadecimal) >> (((@as(c_int, 7) - off) - pass) << @as(c_int, 2))) & @as(c_int, 0xF)) | ((@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x01145AF0, .hexadecimal) >> (((@as(c_int, 7) - off) - pass) << @as(c_int, 2))) & @as(c_int, 0xF0));
}
pub inline fn PNG_ROW_IN_INTERLACE_PASS(y: anytype, pass: anytype) @TypeOf((PNG_PASS_MASK(pass, @as(c_int, 0)) >> (y & @as(c_int, 7))) & @as(c_int, 1)) {
    return (PNG_PASS_MASK(pass, @as(c_int, 0)) >> (y & @as(c_int, 7))) & @as(c_int, 1);
}
pub inline fn PNG_COL_IN_INTERLACE_PASS(x: anytype, pass: anytype) @TypeOf((PNG_PASS_MASK(pass, @as(c_int, 1)) >> (x & @as(c_int, 7))) & @as(c_int, 1)) {
    return (PNG_PASS_MASK(pass, @as(c_int, 1)) >> (x & @as(c_int, 7))) & @as(c_int, 1);
}
pub inline fn PNG_get_uint_32(buf: anytype) @TypeOf((((@import("std").zig.c_translation.cast(png_uint_32, buf.*) << @as(c_int, 24)) + (@import("std").zig.c_translation.cast(png_uint_32, (buf + @as(c_int, 1)).*) << @as(c_int, 16))) + (@import("std").zig.c_translation.cast(png_uint_32, (buf + @as(c_int, 2)).*) << @as(c_int, 8))) + @import("std").zig.c_translation.cast(png_uint_32, (buf + @as(c_int, 3)).*)) {
    return (((@import("std").zig.c_translation.cast(png_uint_32, buf.*) << @as(c_int, 24)) + (@import("std").zig.c_translation.cast(png_uint_32, (buf + @as(c_int, 1)).*) << @as(c_int, 16))) + (@import("std").zig.c_translation.cast(png_uint_32, (buf + @as(c_int, 2)).*) << @as(c_int, 8))) + @import("std").zig.c_translation.cast(png_uint_32, (buf + @as(c_int, 3)).*);
}
pub inline fn PNG_get_uint_16(buf: anytype) png_uint_16 {
    return @import("std").zig.c_translation.cast(png_uint_16, (@import("std").zig.c_translation.cast(c_uint, buf.*) << @as(c_int, 8)) + @import("std").zig.c_translation.cast(c_uint, (buf + @as(c_int, 1)).*));
}
pub inline fn PNG_get_int_32(buf: anytype) png_int_32 {
    return @import("std").zig.c_translation.cast(png_int_32, if (buf.* & @as(c_int, 0x80)) -@import("std").zig.c_translation.cast(png_int_32, ((png_get_uint_32(buf) ^ @import("std").zig.c_translation.promoteIntLiteral(c_uint, 0xffffffff, .hexadecimal)) + @as(c_uint, 1)) & @import("std").zig.c_translation.promoteIntLiteral(c_uint, 0x7fffffff, .hexadecimal)) else @import("std").zig.c_translation.cast(png_int_32, png_get_uint_32(buf)));
}
pub const PNG_IMAGE_VERSION = @as(c_int, 1);
pub const PNG_IMAGE_WARNING = @as(c_int, 1);
pub const PNG_IMAGE_ERROR = @as(c_int, 2);
pub inline fn PNG_IMAGE_FAILED(png_cntrl: anytype) @TypeOf((png_cntrl.warning_or_error & @as(c_int, 0x03)) > @as(c_int, 1)) {
    return (png_cntrl.warning_or_error & @as(c_int, 0x03)) > @as(c_int, 1);
}
pub const PNG_FORMAT_FLAG_ALPHA = @as(c_uint, 0x01);
pub const PNG_FORMAT_FLAG_COLOR = @as(c_uint, 0x02);
pub const PNG_FORMAT_FLAG_LINEAR = @as(c_uint, 0x04);
pub const PNG_FORMAT_FLAG_COLORMAP = @as(c_uint, 0x08);
pub const PNG_FORMAT_FLAG_BGR = @as(c_uint, 0x10);
pub const PNG_FORMAT_FLAG_AFIRST = @as(c_uint, 0x20);
pub const PNG_FORMAT_FLAG_ASSOCIATED_ALPHA = @as(c_uint, 0x40);
pub const PNG_FORMAT_GRAY = @as(c_int, 0);
pub const PNG_FORMAT_GA = PNG_FORMAT_FLAG_ALPHA;
pub const PNG_FORMAT_AG = PNG_FORMAT_GA | PNG_FORMAT_FLAG_AFIRST;
pub const PNG_FORMAT_RGB = PNG_FORMAT_FLAG_COLOR;
pub const PNG_FORMAT_BGR = PNG_FORMAT_FLAG_COLOR | PNG_FORMAT_FLAG_BGR;
pub const PNG_FORMAT_RGBA = PNG_FORMAT_RGB | PNG_FORMAT_FLAG_ALPHA;
pub const PNG_FORMAT_ARGB = PNG_FORMAT_RGBA | PNG_FORMAT_FLAG_AFIRST;
pub const PNG_FORMAT_BGRA = PNG_FORMAT_BGR | PNG_FORMAT_FLAG_ALPHA;
pub const PNG_FORMAT_ABGR = PNG_FORMAT_BGRA | PNG_FORMAT_FLAG_AFIRST;
pub const PNG_FORMAT_LINEAR_Y = PNG_FORMAT_FLAG_LINEAR;
pub const PNG_FORMAT_LINEAR_Y_ALPHA = PNG_FORMAT_FLAG_LINEAR | PNG_FORMAT_FLAG_ALPHA;
pub const PNG_FORMAT_LINEAR_RGB = PNG_FORMAT_FLAG_LINEAR | PNG_FORMAT_FLAG_COLOR;
pub const PNG_FORMAT_LINEAR_RGB_ALPHA = (PNG_FORMAT_FLAG_LINEAR | PNG_FORMAT_FLAG_COLOR) | PNG_FORMAT_FLAG_ALPHA;
pub const PNG_FORMAT_RGB_COLORMAP = PNG_FORMAT_RGB | PNG_FORMAT_FLAG_COLORMAP;
pub const PNG_FORMAT_BGR_COLORMAP = PNG_FORMAT_BGR | PNG_FORMAT_FLAG_COLORMAP;
pub const PNG_FORMAT_RGBA_COLORMAP = PNG_FORMAT_RGBA | PNG_FORMAT_FLAG_COLORMAP;
pub const PNG_FORMAT_ARGB_COLORMAP = PNG_FORMAT_ARGB | PNG_FORMAT_FLAG_COLORMAP;
pub const PNG_FORMAT_BGRA_COLORMAP = PNG_FORMAT_BGRA | PNG_FORMAT_FLAG_COLORMAP;
pub const PNG_FORMAT_ABGR_COLORMAP = PNG_FORMAT_ABGR | PNG_FORMAT_FLAG_COLORMAP;
pub inline fn PNG_IMAGE_SAMPLE_CHANNELS(fmt: anytype) @TypeOf((fmt & (PNG_FORMAT_FLAG_COLOR | PNG_FORMAT_FLAG_ALPHA)) + @as(c_int, 1)) {
    return (fmt & (PNG_FORMAT_FLAG_COLOR | PNG_FORMAT_FLAG_ALPHA)) + @as(c_int, 1);
}
pub inline fn PNG_IMAGE_SAMPLE_COMPONENT_SIZE(fmt: anytype) @TypeOf(((fmt & PNG_FORMAT_FLAG_LINEAR) >> @as(c_int, 2)) + @as(c_int, 1)) {
    return ((fmt & PNG_FORMAT_FLAG_LINEAR) >> @as(c_int, 2)) + @as(c_int, 1);
}
pub inline fn PNG_IMAGE_SAMPLE_SIZE(fmt: anytype) @TypeOf(PNG_IMAGE_SAMPLE_CHANNELS(fmt) * PNG_IMAGE_SAMPLE_COMPONENT_SIZE(fmt)) {
    return PNG_IMAGE_SAMPLE_CHANNELS(fmt) * PNG_IMAGE_SAMPLE_COMPONENT_SIZE(fmt);
}
pub inline fn PNG_IMAGE_MAXIMUM_COLORMAP_COMPONENTS(fmt: anytype) @TypeOf(PNG_IMAGE_SAMPLE_CHANNELS(fmt) * @as(c_int, 256)) {
    return PNG_IMAGE_SAMPLE_CHANNELS(fmt) * @as(c_int, 256);
}
pub inline fn PNG_IMAGE_PIXEL_(@"test": anytype, fmt: anytype) @TypeOf(if (fmt & PNG_FORMAT_FLAG_COLORMAP) @as(c_int, 1) else @"test"(fmt)) {
    return if (fmt & PNG_FORMAT_FLAG_COLORMAP) @as(c_int, 1) else @"test"(fmt);
}
pub inline fn PNG_IMAGE_PIXEL_CHANNELS(fmt: anytype) @TypeOf(PNG_IMAGE_PIXEL_(PNG_IMAGE_SAMPLE_CHANNELS, fmt)) {
    return PNG_IMAGE_PIXEL_(PNG_IMAGE_SAMPLE_CHANNELS, fmt);
}
pub inline fn PNG_IMAGE_PIXEL_COMPONENT_SIZE(fmt: anytype) @TypeOf(PNG_IMAGE_PIXEL_(PNG_IMAGE_SAMPLE_COMPONENT_SIZE, fmt)) {
    return PNG_IMAGE_PIXEL_(PNG_IMAGE_SAMPLE_COMPONENT_SIZE, fmt);
}
pub inline fn PNG_IMAGE_PIXEL_SIZE(fmt: anytype) @TypeOf(PNG_IMAGE_PIXEL_(PNG_IMAGE_SAMPLE_SIZE, fmt)) {
    return PNG_IMAGE_PIXEL_(PNG_IMAGE_SAMPLE_SIZE, fmt);
}
pub inline fn PNG_IMAGE_ROW_STRIDE(image: anytype) @TypeOf(PNG_IMAGE_PIXEL_CHANNELS(image.format) * image.width) {
    return PNG_IMAGE_PIXEL_CHANNELS(image.format) * image.width;
}
pub inline fn PNG_IMAGE_BUFFER_SIZE(image: anytype, row_stride: anytype) @TypeOf((PNG_IMAGE_PIXEL_COMPONENT_SIZE(image.format) * image.height) * row_stride) {
    return (PNG_IMAGE_PIXEL_COMPONENT_SIZE(image.format) * image.height) * row_stride;
}
pub inline fn PNG_IMAGE_SIZE(image: anytype) @TypeOf(PNG_IMAGE_BUFFER_SIZE(image, PNG_IMAGE_ROW_STRIDE(image))) {
    return PNG_IMAGE_BUFFER_SIZE(image, PNG_IMAGE_ROW_STRIDE(image));
}
pub inline fn PNG_IMAGE_COLORMAP_SIZE(image: anytype) @TypeOf(PNG_IMAGE_SAMPLE_SIZE(image.format) * image.colormap_entries) {
    return PNG_IMAGE_SAMPLE_SIZE(image.format) * image.colormap_entries;
}
pub const PNG_IMAGE_FLAG_COLORSPACE_NOT_sRGB = @as(c_int, 0x01);
pub const PNG_IMAGE_FLAG_FAST = @as(c_int, 0x02);
pub const PNG_IMAGE_FLAG_16BIT_sRGB = @as(c_int, 0x04);
pub inline fn png_image_write_get_memory_size(image: anytype, size: anytype, convert_to_8_bit: anytype, buffer: anytype, row_stride: anytype, colormap: anytype) @TypeOf(png_image_write_to_memory(&image, @as(c_int, 0), &size, convert_to_8_bit, buffer, row_stride, colormap)) {
    return png_image_write_to_memory(&image, @as(c_int, 0), &size, convert_to_8_bit, buffer, row_stride, colormap);
}
pub inline fn PNG_IMAGE_DATA_SIZE(image: anytype) @TypeOf(PNG_IMAGE_SIZE(image) + image.height) {
    return PNG_IMAGE_SIZE(image) + image.height;
}
pub inline fn PNG_ZLIB_MAX_SIZE(b: anytype) @TypeOf(((b + ((b + @as(c_uint, 7)) >> @as(c_int, 3))) + ((b + @as(c_uint, 63)) >> @as(c_int, 6))) + @as(c_uint, 11)) {
    return ((b + ((b + @as(c_uint, 7)) >> @as(c_int, 3))) + ((b + @as(c_uint, 63)) >> @as(c_int, 6))) + @as(c_uint, 11);
}
pub inline fn PNG_IMAGE_COMPRESSED_SIZE_MAX(image: anytype) @TypeOf(PNG_ZLIB_MAX_SIZE(@import("std").zig.c_translation.cast(png_alloc_size_t, PNG_IMAGE_DATA_SIZE(image)))) {
    return PNG_ZLIB_MAX_SIZE(@import("std").zig.c_translation.cast(png_alloc_size_t, PNG_IMAGE_DATA_SIZE(image)));
}
pub inline fn PNG_IMAGE_PNG_SIZE_MAX_(image: anytype, image_size: anytype) @TypeOf((((((((@as(c_uint, 8) + @as(c_uint, 25)) + @as(c_uint, 16)) + @as(c_uint, 44)) + @as(c_uint, 12)) + (if (image.format & PNG_FORMAT_FLAG_COLORMAP) (@as(c_uint, 12) + (@as(c_uint, 3) * image.colormap_entries)) + (if (image.format & PNG_FORMAT_FLAG_ALPHA) @as(c_uint, 12) + image.colormap_entries else @as(c_uint, 0)) else @as(c_uint, 0))) + @as(c_uint, 12)) + (@as(c_uint, 12) * @import("std").zig.c_translation.MacroArithmetic.div(image_size, PNG_ZBUF_SIZE))) + image_size) {
    return (((((((@as(c_uint, 8) + @as(c_uint, 25)) + @as(c_uint, 16)) + @as(c_uint, 44)) + @as(c_uint, 12)) + (if (image.format & PNG_FORMAT_FLAG_COLORMAP) (@as(c_uint, 12) + (@as(c_uint, 3) * image.colormap_entries)) + (if (image.format & PNG_FORMAT_FLAG_ALPHA) @as(c_uint, 12) + image.colormap_entries else @as(c_uint, 0)) else @as(c_uint, 0))) + @as(c_uint, 12)) + (@as(c_uint, 12) * @import("std").zig.c_translation.MacroArithmetic.div(image_size, PNG_ZBUF_SIZE))) + image_size;
}
pub inline fn PNG_IMAGE_PNG_SIZE_MAX(image: anytype) @TypeOf(PNG_IMAGE_PNG_SIZE_MAX_(image, PNG_IMAGE_COMPRESSED_SIZE_MAX(image))) {
    return PNG_IMAGE_PNG_SIZE_MAX_(image, PNG_IMAGE_COMPRESSED_SIZE_MAX(image));
}
pub const PNG_MAXIMUM_INFLATE_WINDOW = @as(c_int, 2);
pub const PNG_SKIP_sRGB_CHECK_PROFILE = @as(c_int, 4);
pub const PNG_IGNORE_ADLER32 = @as(c_int, 8);
pub const PNG_OPTION_NEXT = @as(c_int, 12);
pub const PNG_OPTION_UNSET = @as(c_int, 0);
pub const PNG_OPTION_INVALID = @as(c_int, 1);
pub const PNG_OPTION_OFF = @as(c_int, 2);
pub const PNG_OPTION_ON = @as(c_int, 3);
pub const __va_list_tag = struct___va_list_tag;
pub const _G_fpos_t = struct__G_fpos_t;
pub const _G_fpos64_t = struct__G_fpos64_t;
pub const _IO_marker = struct__IO_marker;
pub const _IO_codecvt = struct__IO_codecvt;
pub const _IO_wide_data = struct__IO_wide_data;
pub const _IO_FILE = struct__IO_FILE;
pub const timeval = struct_timeval;
pub const timespec = struct_timespec;
pub const __pthread_internal_list = struct___pthread_internal_list;
pub const __pthread_internal_slist = struct___pthread_internal_slist;
pub const __pthread_mutex_s = struct___pthread_mutex_s;
pub const __pthread_rwlock_arch_t = struct___pthread_rwlock_arch_t;
pub const __pthread_cond_s = struct___pthread_cond_s;
pub const random_data = struct_random_data;
pub const drand48_data = struct_drand48_data;
pub const __jmp_buf_tag = struct___jmp_buf_tag;
pub const tm = struct_tm;
pub const itimerspec = struct_itimerspec;
pub const sigevent = struct_sigevent;
pub const __locale_data = struct___locale_data;
pub const __locale_struct = struct___locale_struct;
pub const png_struct_def = struct_png_struct_def;
pub const png_info_def = struct_png_info_def;
pub const png_color_struct = struct_png_color_struct;
pub const png_color_16_struct = struct_png_color_16_struct;
pub const png_color_8_struct = struct_png_color_8_struct;
pub const png_sPLT_entry_struct = struct_png_sPLT_entry_struct;
pub const png_sPLT_struct = struct_png_sPLT_struct;
pub const png_text_struct = struct_png_text_struct;
pub const png_time_struct = struct_png_time_struct;
pub const png_unknown_chunk_t = struct_png_unknown_chunk_t;
pub const png_row_info_struct = struct_png_row_info_struct;
pub const png_control = struct_png_control;
