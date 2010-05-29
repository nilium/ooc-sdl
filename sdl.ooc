include /usr/include/SDL/SDL_thread
include /usr/include/SDL/SDL_endian
include /usr/include/libio
include /usr/include/SDL/SDL_cdrom
include /usr/include/sys/sysmacros
include /usr/include/SDL/SDL_joystick
include /usr/include/SDL/SDL_keyboard
include /usr/include/SDL/SDL_active
include /usr/include/SDL/SDL
include /usr/include/inttypes
include /usr/include/xlocale
include /usr/include/SDL/SDL_rwops
include /usr/include/SDL/SDL_keysym
include /usr/include/ctype
include /usr/include/SDL/SDL_events
include /usr/include/string
include /usr/include/SDL/SDL_video
include /usr/include/SDL/SDL_error
include /usr/include/iconv
include /usr/include/sys/select
include /usr/include/alloca
include /usr/include/SDL/SDL_version
include /usr/include/SDL/SDL_cpuinfo
include /usr/include/time
include /usr/include/SDL/SDL_mutex
include /usr/include/SDL/SDL_loadso
include /usr/include/SDL/SDL_stdinc
include /usr/include/SDL/SDL_timer
include /usr/include/sys/types
include /usr/include/SDL/SDL_mouse
include /usr/include/wchar
include /usr/include/SDL/SDL_audio

StructTimeval: cover from struct timeval {
    tvSec: extern(tv_sec) __TimeT
    tvUsec: extern(tv_usec) __SusecondsT
}

StructUnnamed12: cover {
    quot: extern LLong
    rem: extern LLong
}

ImaxdivT: cover from StructUnnamed12

StructRandomData: cover from struct random_data {
    fptr: extern Int32*
    rptr: extern Int32*
    state: extern Int32*
    randType: extern(rand_type) Int
    randDeg: extern(rand_deg) Int
    randSep: extern(rand_sep) Int
    endPtr: extern(end_ptr) Int32*
}

UnionUnnamed13: cover {
    __Size: extern(__size) Char*
    __Align: extern(__align) Long
}

PthreadCondattrT: cover from UnionUnnamed13

StructUnnamed14: cover {
    read: extern __IoReadFn*
    write: extern __IoWriteFn*
    seek: extern __IoSeekFn*
    close: extern __IoCloseFn*
}

_IoCookieIoFunctionsT: cover from StructUnnamed14

StructUnnamed15: cover {
    __Val: extern(__val) ULong*
}

__SigsetT: cover from StructUnnamed15

Struct__PthreadInternalSlist: cover from struct __pthread_internal_slist {
    __Next: extern(__next) Struct__PthreadInternalSlist*
}

StructSDLVersion_: cover from struct SDL_version {
    major: extern Uint8
    minor: extern Uint8
    patch: extern Uint8
}

Struct_IoFile: cover from struct _IO_FILE {
    _Flags: extern(_flags) Int
    _IoReadPtr: extern(_IO_read_ptr) Char*
    _IoReadEnd: extern(_IO_read_end) Char*
    _IoReadBase: extern(_IO_read_base) Char*
    _IoWriteBase: extern(_IO_write_base) Char*
    _IoWritePtr: extern(_IO_write_ptr) Char*
    _IoWriteEnd: extern(_IO_write_end) Char*
    _IoBufBase: extern(_IO_buf_base) Char*
    _IoBufEnd: extern(_IO_buf_end) Char*
    _IoSaveBase: extern(_IO_save_base) Char*
    _IoBackupBase: extern(_IO_backup_base) Char*
    _IoSaveEnd: extern(_IO_save_end) Char*
    _Markers: extern(_markers) Struct_IoMarker*
    _Chain: extern(_chain) Struct_IoFile*
    _Fileno: extern(_fileno) Int
    _Flags2: extern(_flags2) Int
    _OldOffset: extern(_old_offset) __OffT
    _CurColumn: extern(_cur_column) UShort
    _VtableOffset: extern(_vtable_offset) Char
    _Shortbuf: extern(_shortbuf) Char*
    _Lock: extern(_lock) _IoLockT*
    _Offset: extern(_offset) __Off64T
    __Pad1: extern(__pad1) Void*
    __Pad2: extern(__pad2) Void*
    __Pad3: extern(__pad3) Void*
    __Pad4: extern(__pad4) Void*
    __Pad5: extern(__pad5) SizeT
    _Mode: extern(_mode) Int
    _Unused2: extern(_unused2) Char*
}

UnionUnnamed16: cover {
    __Size: extern(__size) Char*
    __Align: extern(__align) Long
}

PthreadMutexattrT: cover from UnionUnnamed16

StructUnnamed17: cover {
    fdsBits: extern(fds_bits) __FdMask*
}

FdSet: cover from StructUnnamed17

StructSDLAudioCVT: cover from struct SDL_AudioCVT {
    needed: extern Int
    srcFormat: extern(src_format) Uint16
    dstFormat: extern(dst_format) Uint16
    rateIncr: extern(rate_incr) Double
    buf: extern Uint8*
    len: extern Int
    lenCvt: extern(len_cvt) Int
    lenMult: extern(len_mult) Int
    lenRatio: extern(len_ratio) Double
    filters: extern Func*
    filterIndex: extern(filter_index) Int
}

Struct__LocaleStruct_: cover from struct __locale_struct {
    __Locales: extern(__locales) Pointer*
    __CtypeB: extern(__ctype_b) const UShort*
    __CtypeTolower: extern(__ctype_tolower) const Int*
    __CtypeToupper: extern(__ctype_toupper) const Int*
    __Names: extern(__names) const Char**
}

StructSDLJoyHatEvent: cover from struct SDL_JoyHatEvent {
    type: extern Uint8
    which: extern Uint8
    hat: extern Uint8
    value: extern Uint8
}

StructUnnamed18: cover {
    __Pos: extern(__pos) __OffT
    __State: extern(__state) __MbstateT
}

_GFposT: cover from StructUnnamed18

UnionUnnamed19: cover {
    __Data: extern(__data) StructUnnamed1
    __Size: extern(__size) Char*
    __Align: extern(__align) LLong
}

PthreadCondT: cover from UnionUnnamed19

StructUnnamed1: cover {
    __Lock: extern(__lock) Int
    __Futex: extern(__futex) UInt
    __TotalSeq: extern(__total_seq) ULLong
    __WakeupSeq: extern(__wakeup_seq) ULLong
    __WokenSeq: extern(__woken_seq) ULLong
    __Mutex: extern(__mutex) Void*
    __Nwaiters: extern(__nwaiters) UInt
    __BroadcastSeq: extern(__broadcast_seq) UInt
}

UnionUnnamed20: cover {
    __Size: extern(__size) Char*
    __Align: extern(__align) Long
}

PthreadBarrierT: cover from UnionUnnamed20

StructUnnamed21: cover {
    __Val: extern(__val) Int*
}

__FsidT: cover from StructUnnamed21

StructSDLColor: cover from struct SDL_Color {
    r: extern Uint8
    g: extern Uint8
    b: extern Uint8
    unused: extern Uint8
}

StructUnnamed22: cover {
    __Pos: extern(__pos) __Off64T
    __State: extern(__state) __MbstateT
}

_GFpos64T: cover from StructUnnamed22

StructSDLKeysym: cover from struct SDL_keysym {
    scancode: extern Uint8
    sym: extern Int
    mod: extern Int
    unicode: extern Uint16
}

StructSDLJoyButtonEvent: cover from struct SDL_JoyButtonEvent {
    type: extern Uint8
    which: extern Uint8
    button: extern Uint8
    state: extern Uint8
}

StructSDLQuitEvent: cover from struct SDL_QuitEvent {
    type: extern Uint8
}

StructUnnamed23: cover {
    quot: extern Int
    rem: extern Int
}

DivT: cover from StructUnnamed23

StructTimespec: cover from struct timespec {
    tvSec: extern(tv_sec) __TimeT
    tvNsec: extern(tv_nsec) Long
}

StructSDLOverlay: cover from struct SDL_Overlay {
    format: extern Uint32
    w: extern Int
    h: extern Int
    planes: extern Int
    pitches: extern Uint16*
    pixels: extern Uint8**
    hwfuncs: extern Pointer
    hwdata: extern Pointer
    hwOverlay: extern(hw_overlay) Uint32
    unusedBits: extern(UnusedBits) Uint32
}

StructSDLMouseMotionEvent: cover from struct SDL_MouseMotionEvent {
    type: extern Uint8
    which: extern Uint8
    state: extern Uint8
    x: extern Uint16
    y: extern Uint16
    xrel: extern Sint16
    yrel: extern Sint16
}

StructUnnamed24: cover {
    __Count: extern(__count) Int
    __Value: extern(__value) UnionUnnamed2
}

__MbstateT: cover from StructUnnamed24

UnionUnnamed2: cover {
    __Wch: extern(__wch) UInt
    __Wchb: extern(__wchb) Char*
}

UnionWait: cover from union wait {
    wStatus: extern(w_status) Int
    __WaitTerminated: extern(__wait_terminated) StructUnnamed3
    __WaitStopped: extern(__wait_stopped) StructUnnamed4
}

StructUnnamed3: cover {
    __WTermsig: extern(__w_termsig) UInt
    __WCoredump: extern(__w_coredump) UInt
    __WRetcode: extern(__w_retcode) UInt
    _: extern(_) UInt
}

StructUnnamed4: cover {
    __WStopval: extern(__w_stopval) UInt
    __WStopsig: extern(__w_stopsig) UInt
    _: extern(_) UInt
}

StructUnnamed25: cover {
    quot: extern LLong
    rem: extern LLong
}

LldivT: cover from StructUnnamed25

UnionUnnamed26: cover {
    __Size: extern(__size) Char*
    __Align: extern(__align) Int
}

PthreadBarrierattrT: cover from UnionUnnamed26

StructSDLJoyBallEvent: cover from struct SDL_JoyBallEvent {
    type: extern Uint8
    which: extern Uint8
    ball: extern Uint8
    xrel: extern Sint16
    yrel: extern Sint16
}

StructSDLRwops: cover from struct SDL_RWops {
    seek: extern Func
    read: extern Func
    write: extern Func
    close: extern Func
    type: extern Uint32
    hidden: extern UnionUnnamed5
}

UnionUnnamed5: cover {
    stdio: extern StructUnnamed6
    mem: extern StructUnnamed7
    unknown: extern StructUnnamed8
}

StructUnnamed6: cover {
    autoclose: extern Int
    fp: extern FILE*
}

StructUnnamed7: cover {
    base: extern Uint8*
    here: extern Uint8*
    stop: extern Uint8*
}

StructUnnamed8: cover {
    data1: extern Void*
}

StructSDLActiveEvent: cover from struct SDL_ActiveEvent {
    type: extern Uint8
    gain: extern Uint8
    state: extern Uint8
}

UnionUnnamed27: cover {
    __Size: extern(__size) Char*
    __Align: extern(__align) Long
}

PthreadRwlockattrT: cover from UnionUnnamed27

StructSDLExposeEvent: cover from struct SDL_ExposeEvent {
    type: extern Uint8
}

StructSDLCdtrack: cover from struct SDL_CDtrack {
    id: extern Uint8
    type: extern Uint8
    unused: extern Uint16
    length: extern Uint32
    offset: extern Uint32
}

StructSDLPalette: cover from struct SDL_Palette {
    ncolors: extern Int
    colors: extern SDLColor*
}

UnionUnnamed28: cover {
    __Data: extern(__data) Struct__PthreadMutexS
    __Size: extern(__size) Char*
    __Align: extern(__align) Long
}

PthreadMutexT: cover from UnionUnnamed28

Struct__PthreadMutexS: cover from struct __pthread_mutex_s {
    __Lock: extern(__lock) Int
    __Count: extern(__count) UInt
    __Owner: extern(__owner) Int
    __Kind: extern(__kind) Int
    __Nusers: extern(__nusers) UInt
    _: extern(_) UnionUnnamed9
}

UnionUnnamed9: cover {
    __Spins: extern(__spins) Int
    __List: extern(__list) __PthreadSlistT
}

StructSDLCd: cover from struct SDL_CD {
    id: extern Int
    status: extern Int
    numtracks: extern Int
    curTrack: extern(cur_track) Int
    curFrame: extern(cur_frame) Int
    track: extern SDLCdtrack*
}

Struct_IoMarker: cover from struct _IO_marker {
    _Next: extern(_next) Struct_IoMarker*
    _Sbuf: extern(_sbuf) Struct_IoFile*
    _Pos: extern(_pos) Int
}

StructSDLMouseButtonEvent: cover from struct SDL_MouseButtonEvent {
    type: extern Uint8
    which: extern Uint8
    button: extern Uint8
    state: extern Uint8
    x: extern Uint16
    y: extern Uint16
}

StructSDLSysWMEvent: cover from struct SDL_SysWMEvent {
    type: extern Uint8
    msg: extern SDLSysWMmsg*
}

StructSDLAudioSpec: cover from struct SDL_AudioSpec {
    freq: extern Int
    format: extern Uint16
    channels: extern Uint8
    silence: extern Uint8
    samples: extern Uint16
    padding: extern Uint16
    size: extern Uint32
    callback: extern Func
    userdata: extern Void*
}

StructSDLResizeEvent: cover from struct SDL_ResizeEvent {
    type: extern Uint8
    w: extern Int
    h: extern Int
}

UnionUnnamed29: cover {
    __Size: extern(__size) Char*
    __Align: extern(__align) Long
}

PthreadAttrT: cover from UnionUnnamed29

StructSDLJoyAxisEvent: cover from struct SDL_JoyAxisEvent {
    type: extern Uint8
    which: extern Uint8
    axis: extern Uint8
    value: extern Sint16
}

UnionSDLEvent: cover from union SDL_Event {
    type: extern Uint8
    active: extern SDLActiveEvent
    key: extern SDLKeyboardEvent
    motion: extern SDLMouseMotionEvent
    button: extern SDLMouseButtonEvent
    jaxis: extern SDLJoyAxisEvent
    jball: extern SDLJoyBallEvent
    jhat: extern SDLJoyHatEvent
    jbutton: extern SDLJoyButtonEvent
    resize: extern SDLResizeEvent
    expose: extern SDLExposeEvent
    quit: extern SDLQuitEvent
    user: extern SDLUserEvent
    syswm: extern SDLSysWMEvent
}

StructSDLRect: cover from struct SDL_Rect {
    x: extern Sint16
    y: extern Sint16
    w: extern Uint16
    h: extern Uint16
}

StructSDLCursor: cover from struct SDL_Cursor {
    area: extern SDLRect
    hotX: extern(hot_x) Sint16
    hotY: extern(hot_y) Sint16
    data: extern Uint8*
    mask: extern Uint8*
    save: extern Uint8**
    wmCursor: extern(wm_cursor) WMcursor*
}

StructSDLSurface: cover from struct SDL_Surface {
    flags: extern Uint32
    format: extern SDLPixelFormat*
    w: extern Int
    h: extern Int
    pitch: extern Uint16
    pixels: extern Void*
    offset: extern Int
    hwdata: extern Pointer
    clipRect: extern(clip_rect) SDLRect
    unused1: extern Uint32
    locked: extern Uint32
    map: extern Pointer
    formatVersion_: extern(format_version) UInt
    refcount: extern Int
}

UnionUnnamed30: cover {
    __Data: extern(__data) StructUnnamed10
    __Size: extern(__size) Char*
    __Align: extern(__align) Long
}

PthreadRwlockT: cover from UnionUnnamed30

StructUnnamed10: cover {
    __Lock: extern(__lock) Int
    __NrReaders: extern(__nr_readers) UInt
    __ReadersWakeup: extern(__readers_wakeup) UInt
    __WriterWakeup: extern(__writer_wakeup) UInt
    __NrReadersQueued: extern(__nr_readers_queued) UInt
    __NrWritersQueued: extern(__nr_writers_queued) UInt
    __Flags: extern(__flags) UChar
    __Shared: extern(__shared) UChar
    __Pad1: extern(__pad1) UChar
    __Pad2: extern(__pad2) UChar
    __Writer: extern(__writer) Int
}

StructUnnamed31: cover {
    quot: extern Long
    rem: extern Long
}

LdivT: cover from StructUnnamed31

StructSDLUserEvent: cover from struct SDL_UserEvent {
    type: extern Uint8
    code: extern Int
    data1: extern Void*
    data2: extern Void*
}

StructSDLPixelFormat: cover from struct SDL_PixelFormat {
    palette: extern SDLPalette*
    bitsPerPixel: extern(BitsPerPixel) Uint8
    bytesPerPixel: extern(BytesPerPixel) Uint8
    rloss: extern(Rloss) Uint8
    gloss: extern(Gloss) Uint8
    bloss: extern(Bloss) Uint8
    aloss: extern(Aloss) Uint8
    rshift: extern(Rshift) Uint8
    gshift: extern(Gshift) Uint8
    bshift: extern(Bshift) Uint8
    ashift: extern(Ashift) Uint8
    rmask: extern(Rmask) Uint32
    gmask: extern(Gmask) Uint32
    bmask: extern(Bmask) Uint32
    amask: extern(Amask) Uint32
    colorkey: extern Uint32
    alpha: extern Uint8
}

StructSDLKeyboardEvent: cover from struct SDL_KeyboardEvent {
    type: extern Uint8
    which: extern Uint8
    state: extern Uint8
    keysym: extern SDLKeysym
}

StructDrand48Data: cover from struct drand48_data {
    __X: extern(__x) UShort*
    __OldX: extern(__old_x) UShort*
    __C: extern(__c) UShort
    __Init: extern(__init) UShort
    __A: extern(__a) ULLong
}

StructSDLVideoInfo: cover from struct SDL_VideoInfo {
    hwAvailable: extern(hw_available) Uint32
    wmAvailable: extern(wm_available) Uint32
    unusedBits1: extern(UnusedBits1) Uint32
    unusedBits2: extern(UnusedBits2) Uint32
    blitHw: extern(blit_hw) Uint32
    blitHwCc: extern(blit_hw_CC) Uint32
    blitHwA: extern(blit_hw_A) Uint32
    blitSw: extern(blit_sw) Uint32
    blitSwCc: extern(blit_sw_CC) Uint32
    blitSwA: extern(blit_sw_A) Uint32
    blitFill: extern(blit_fill) Uint32
    unusedBits3: extern(UnusedBits3) Uint32
    videoMem: extern(video_mem) Uint32
    vfmt: extern SDLPixelFormat*
    currentW: extern(current_w) Int
    currentH: extern(current_h) Int
}

EnumSDLAudiostatus: extern(SDL_audiostatus) enum {
    stopped = 0
    playing = 1
    paused = 2
}
EnumSDLBool_: extern(SDL_bool) enum {
    false_ = 0
    true_ = 1
}
EnumSDLGlattr: extern(SDL_GLattr) enum {
    redSize = 0
    greenSize = 1
    blueSize = 2
    alphaSize = 3
    bufferSize = 4
    doublebuffer = 5
    depthSize = 6
    stencilSize = 7
    accumRedSize = 8
    accumGreenSize = 9
    accumBlueSize = 10
    accumAlphaSize = 11
    stereo = 12
    multisamplebuffers = 13
    multisamplesamples = 14
    acceleratedVisual = 15
    swapControl = 16
}
EnumCDstatus: extern(CDstatus) enum {
    trayempty = 0
    stopped = 1
    playing = 2
    paused = 3
    error = -1
}
EnumSDLMod: extern(SDLMod) enum {
    none = 0
    lshift = 1
    rshift = 2
    lctrl = 64
    rctrl = 128
    lalt = 256
    ralt = 512
    lmeta = 1024
    rmeta = 2048
    num = 4096
    caps = 8192
    mode = 16384
    reserved = 32768
}
EnumSDLErrorcode: extern(SDL_errorcode) enum {
    enomem = 0
    efread = 1
    efwrite = 2
    efseek = 3
    unsupported = 4
    lasterror = 5
}
EnumSDLKey: extern(SDLKey) enum {
    unknown = 0
    first = 0
    backspace = 8
    tab = 9
    clear = 12
    return_ = 13
    pause = 19
    escape = 27
    space = 32
    exclaim = 33
    quotedbl = 34
    hash = 35
    dollar = 36
    ampersand = 38
    quote = 39
    leftparen = 40
    rightparen = 41
    asterisk = 42
    plus = 43
    comma = 44
    minus = 45
    period = 46
    slash = 47
    _0 = 48
    _1 = 49
    _2 = 50
    _3 = 51
    _4 = 52
    _5 = 53
    _6 = 54
    _7 = 55
    _8 = 56
    _9 = 57
    colon = 58
    semicolon = 59
    less = 60
    equals = 61
    greater = 62
    question = 63
    at = 64
    leftbracket = 91
    backslash = 92
    rightbracket = 93
    caret = 94
    underscore = 95
    backquote = 96
    a = 97
    b = 98
    c = 99
    d = 100
    e = 101
    f = 102
    g = 103
    h = 104
    i = 105
    j = 106
    k = 107
    l = 108
    m = 109
    n = 110
    o = 111
    p = 112
    q = 113
    r = 114
    s = 115
    t = 116
    u = 117
    v = 118
    w = 119
    x = 120
    y = 121
    z = 122
    delete = 127
    world_0 = 160
    world_1 = 161
    world_2 = 162
    world_3 = 163
    world_4 = 164
    world_5 = 165
    world_6 = 166
    world_7 = 167
    world_8 = 168
    world_9 = 169
    world_10 = 170
    world_11 = 171
    world_12 = 172
    world_13 = 173
    world_14 = 174
    world_15 = 175
    world_16 = 176
    world_17 = 177
    world_18 = 178
    world_19 = 179
    world_20 = 180
    world_21 = 181
    world_22 = 182
    world_23 = 183
    world_24 = 184
    world_25 = 185
    world_26 = 186
    world_27 = 187
    world_28 = 188
    world_29 = 189
    world_30 = 190
    world_31 = 191
    world_32 = 192
    world_33 = 193
    world_34 = 194
    world_35 = 195
    world_36 = 196
    world_37 = 197
    world_38 = 198
    world_39 = 199
    world_40 = 200
    world_41 = 201
    world_42 = 202
    world_43 = 203
    world_44 = 204
    world_45 = 205
    world_46 = 206
    world_47 = 207
    world_48 = 208
    world_49 = 209
    world_50 = 210
    world_51 = 211
    world_52 = 212
    world_53 = 213
    world_54 = 214
    world_55 = 215
    world_56 = 216
    world_57 = 217
    world_58 = 218
    world_59 = 219
    world_60 = 220
    world_61 = 221
    world_62 = 222
    world_63 = 223
    world_64 = 224
    world_65 = 225
    world_66 = 226
    world_67 = 227
    world_68 = 228
    world_69 = 229
    world_70 = 230
    world_71 = 231
    world_72 = 232
    world_73 = 233
    world_74 = 234
    world_75 = 235
    world_76 = 236
    world_77 = 237
    world_78 = 238
    world_79 = 239
    world_80 = 240
    world_81 = 241
    world_82 = 242
    world_83 = 243
    world_84 = 244
    world_85 = 245
    world_86 = 246
    world_87 = 247
    world_88 = 248
    world_89 = 249
    world_90 = 250
    world_91 = 251
    world_92 = 252
    world_93 = 253
    world_94 = 254
    world_95 = 255
    kp0 = 256
    kp1 = 257
    kp2 = 258
    kp3 = 259
    kp4 = 260
    kp5 = 261
    kp6 = 262
    kp7 = 263
    kp8 = 264
    kp9 = 265
    kpPeriod = 266
    kpDivide = 267
    kpMultiply = 268
    kpMinus = 269
    kpPlus = 270
    kpEnter = 271
    kpEquals = 272
    up = 273
    down = 274
    right = 275
    left = 276
    insert = 277
    home = 278
    end = 279
    pageup = 280
    pagedown = 281
    f1 = 282
    f2 = 283
    f3 = 284
    f4 = 285
    f5 = 286
    f6 = 287
    f7 = 288
    f8 = 289
    f9 = 290
    f10 = 291
    f11 = 292
    f12 = 293
    f13 = 294
    f14 = 295
    f15 = 296
    numlock = 300
    capslock = 301
    scrollock = 302
    rshift = 303
    lshift = 304
    rctrl = 305
    lctrl = 306
    ralt = 307
    lalt = 308
    rmeta = 309
    lmeta = 310
    lsuper = 311
    rsuper = 312
    mode = 313
    compose = 314
    help = 315
    print = 316
    sysreq = 317
    break_ = 318
    menu = 319
    power = 320
    euro = 321
    undo = 322
    last = 323
}
EnumSDLEventaction: extern(SDL_eventaction) enum {
    addevent = 0
    peekevent = 1
    getevent = 2
}
EnumSDLGrabMode: extern(SDL_GrabMode) enum {
    query = -1
    off = 0
    on = 1
    fullscreen = 2
}
EnumSDLDummyEnum_: extern(SDL_DUMMY_ENUM) enum {
    dummyEnum_Value = 0
}
EnumUnnamed11: enum {
    upper = 256
    lower = 512
    alpha = 1024
    digit = 2048
    xdigit = 4096
    space = 8192
    print = 16384
    graph = 32768
    blank = 1
    cntrl = 2
    punct = 4
    alnum = 8
}
EnumSDLEventType: extern(SDL_EventType) enum {
    noevent = 0
    activeevent = 1
    keydown = 2
    keyup = 3
    mousemotion = 4
    mousebuttondown = 5
    mousebuttonup = 6
    joyaxismotion = 7
    joyballmotion = 8
    joyhatmotion = 9
    joybuttondown = 10
    joybuttonup = 11
    quit = 12
    syswmevent = 13
    eventReserveda = 14
    eventReservedb = 15
    videoresize = 16
    videoexpose = 17
    eventReserved2 = 18
    eventReserved3 = 19
    eventReserved4 = 20
    eventReserved5 = 21
    eventReserved6 = 22
    eventReserved7 = 23
    userevent = 24
    numevents = 32
}
EnumSDLEventMask: extern(SDL_EventMask) enum {
    activeeventmask = 2
    keydownmask = 4
    keyupmask = 8
    keyeventmask = 12
    mousemotionmask = 16
    mousebuttondownmask = 32
    mousebuttonupmask = 64
    mouseeventmask = 112
    joyaxismotionmask = 128
    joyballmotionmask = 256
    joyhatmotionmask = 512
    joybuttondownmask = 1024
    joybuttonupmask = 2048
    joyeventmask = 3968
    videoresizemask = 65536
    videoexposemask = 131072
    quitmask = 4096
    syswmeventmask = 8192
}
Enum__CodecvtResult: extern(__codecvt_result) enum {
    ok = 0
    partial = 1
    error = 2
    noconv = 3
}
BlksizeT: cover from __blksize_t

UintLeast64T: cover from ULLong

__SwblkT: cover from Long

SigsetT: cover from __SigsetT

Blkcnt64T: cover from __blkcnt64_t

_IoLockT: cover from Void

SDLVersion_: cover from StructSDLVersion_

__Uint64T: cover from ULLong

__IdT: cover from UInt

ClockT: cover from __clock_t

__SigAtomicT: cover from Int

__IntptrT: cover from Int

IntFast64T: cover from LLong

IconvT: cover from Void*

__SusecondsT: cover from Long

__File: cover from Struct_IoFile

ClockidT: cover from __clockid_t

IntFast32T: cover from Int

Fsblkcnt64T: cover from __fsblkcnt64_t

__SocklenT: cover from UInt

__Int16T: cover from Short

__LoffT: cover from __off64_t

_GInt16T: cover from Short

__Rlim64T: cover from __u_quad_t

UsecondsT: cover from __useconds_t

OffT: cover from __off_t

SDLCond: cover

__IoCloseFn: cover from Func

IntLeast8T: cover from Char

SDLJoystick: cover

Sint16: cover from Int16

SDLDummySint16: cover from Int*

Sint32: cover from Int32

SDLDummySint32: cover from Int*

CookieIoFunctionsT: cover from _IoCookieIoFunctionsT

__Uint16T: cover from UShort

_GUint16T: cover from UShort

Sint64: cover from Int64

SDLAudioCVT: cover from StructSDLAudioCVT

CookieWriteFunctionT: cover from __io_write_fn

IntLeast32T: cover from Int

__UShort_: cover from UShort

UidT: cover from __uid_t

Ino64T: cover from __ino64_t

PthreadSpinlockT: cover from Int

__ModeT: cover from UInt

SDLNewTimerCallback: cover from Func

SDLJoyHatEvent: cover from StructSDLJoyHatEvent

GidT: cover from __gid_t

TimerT: cover from __timer_t

_GInt32T: cover from Int

Uint64: cover from UInt64

UInt8T: cover from UChar

FsidT: cover from __FsidT

UintFast16T: cover from UInt

__Int8T: cover from Char

UShort_: cover from __UShort_

SDLColor: cover from StructSDLColor

__UsecondsT: cover from UInt

FsfilcntT: cover from __fsfilcnt_t

Fpos64T: cover from _GFpos64T

__NlinkT: cover from UInt

__InoT: cover from ULong

SDLKeysym: cover from StructSDLKeysym

SDLJoyButtonEvent: cover from StructSDLJoyButtonEvent

QuadT: cover from __quad_t

Uint16: cover from UInt16

SDLDummyUint16: cover from Int*

UInt32T: cover from UInt

Uint32: cover from UInt32

WMcursor: cover

SDLQuitEvent: cover from StructSDLQuitEvent

SDLDummyUint64: cover from Int*

__PidT: cover from Int

UintLeast32T: cover from UInt

__DevT: cover from __u_quad_t

__Blkcnt64T: cover from __quad_t

SDLOverlay: cover from StructSDLOverlay

SDLMouseMotionEvent: cover from StructSDLMouseMotionEvent

FsblkcntT: cover from __fsblkcnt_t

__PthreadSlistT: cover from Struct__PthreadInternalSlist

__Uint32T: cover from UInt

IntFast8T: cover from Char

SDLJoyBallEvent: cover from StructSDLJoyBallEvent

SDLThread: cover

CookieReadFunctionT: cover from __io_read_fn

SDLRwops: cover from StructSDLRwops

SDLActiveEvent: cover from StructSDLActiveEvent

BlkcntT: cover from __blkcnt_t

__DaddrT: cover from Int

IntFast16T: cover from Int

IdT: cover from __IdT

__SsizeT: cover from Int

__FsfilcntT: cover from ULong

__BlkcntT: cover from Long

SDLDummyUint8: cover from Int*

SDLExposeEvent: cover from StructSDLExposeEvent

__UInt_: cover from UInt

SDLTimerCallback: cover from Func

Sint8: cover from Int8

FILE: cover from Struct_IoFile

Fsfilcnt64T: cover from __fsfilcnt64_t

SDLMutex: cover

UintFast64T: cover from ULLong

SDLDummySint64: cover from Int*

SDLDummyEnum_: cover from Int*

SDLEventFilter: cover from Func

SDLCdtrack: cover from StructSDLCdtrack

SDLPalette: cover from StructSDLPalette

__ComparDFnT: cover from Func

__TimeT: cover from Long

SDLCd: cover from StructSDLCd

__OffT: cover from Long

SusecondsT: cover from __SusecondsT

PidT: cover from __PidT

IntLeast16T: cover from Short

LocaleT: cover from __locale_t

__Fsblkcnt64T: cover from __u_quad_t

UintptrT: cover from UInt

SsizeT: cover from __SsizeT

__Int64T: cover from LLong

__FsblkcntT: cover from ULong

__ClockidT: cover from Int

SDLDummyUint32: cover from Int*

IntptrT: cover from Int

__Fsfilcnt64T: cover from __u_quad_t

LoffT: cover from __LoffT

__UChar_: cover from UChar

SDLMouseButtonEvent: cover from StructSDLMouseButtonEvent

__UidT: cover from UInt

__GnucVaList: cover from Char*

DaddrT: cover from __DaddrT

SDLSysWMEvent: cover from StructSDLSysWMEvent

__ComparFnT: cover from Func

__IoSeekFn: cover from Func

SDLAudioSpec: cover from StructSDLAudioSpec

__GidT: cover from UInt

__Uint8T: cover from UChar

SDLResizeEvent: cover from StructSDLResizeEvent

UintmaxT: cover from ULLong

__LocaleT: cover from Struct__LocaleStruct_*

__KeyT: cover from Int

SDLSem: cover

SDLJoyAxisEvent: cover from StructSDLJoyAxisEvent

UInt64T: cover from ULLong

RegisterT: cover from Int

SDLBlit: cover from Func

SDLEvent: cover from UnionSDLEvent

UInt16T: cover from UShort

ModeT: cover from __ModeT

__FdMask: cover from Long

UintFast8T: cover from UChar

SDLRect: cover from StructSDLRect

FposT: cover from _GFposT

CookieSeekFunctionT: cover from __IoSeekFn

UintLeast16T: cover from UShort

PtrdiffT: cover from Int

SDLTimerID: cover from Struct_SdlTimerID*

IntLeast64T: cover from LLong

PthreadKeyT: cover from UInt

__TimerT: cover from Void*

__Off64T: cover from __quad_t

_GUint32T: cover from UInt

UQuadT: cover from __u_quad_t

SDLCursor: cover from StructSDLCursor

Uint8: cover from UInt8

__QuadT: cover from LLong

__ULong_: cover from ULong

IntmaxT: cover from LLong

SDLSurface: cover from StructSDLSurface

NlinkT: cover from __NlinkT

PthreadOnceT: cover from Int

CaddrT: cover from __caddr_t

__QaddrT: cover from __QuadT*

FdMask: cover from __FdMask

SDLUserEvent: cover from StructSDLUserEvent

SDLDummySint8: cover from Int*

InoT: cover from __InoT

Off64T: cover from __Off64T

KeyT: cover from __KeyT

__UQuadT: cover from ULLong

__RlimT: cover from ULong

SDLPixelFormat: cover from StructSDLPixelFormat

UintFast32T: cover from UInt

PthreadT: cover from ULong

CookieCloseFunctionT: cover from __IoCloseFn

ComparisonFnT: cover from __ComparFnT

SDLKeyboardEvent: cover from StructSDLKeyboardEvent

__BlksizeT: cover from Long

DevT: cover from __DevT

UintLeast8T: cover from UChar

SDLSysWMmsg: cover

__Ino64T: cover from __UQuadT

__IoReadFn: cover from Func

__ClockT: cover from Long

__Int32T: cover from Int

__IoWriteFn: cover from Func

SDLVideoInfo: cover from StructSDLVideoInfo

__CaddrT: cover from Char*

StructSDLCond: cover

Struct_SdlJoystick: cover

StructWMcursor: cover

StructSDLThread: cover

StructSDLMutex: cover

StructSDLSemaphore: cover

Struct_SdlTimerID: cover

StructSDLSysWMmsg: cover

rindex: extern func (__S: Char*, __C: Int) -> Char*
__BuiltinNans: extern(__builtin_nans) func (str: const Char*) -> Double
__BuiltinAcosf: extern(__builtin_acosf) func (arg0: Float) -> Float
__BuiltinAcosl: extern(__builtin_acosl) func (arg0: LDouble) -> LDouble
sdlLinkedVersion_: extern(SDL_Linked_Version) func -> const SDLVersion_*
__BuiltinVaArgPack: extern(__builtin_va_arg_pack) func (...) -> Bool
tmpfile: extern func -> FILE*
drand48: extern func -> Double
sdlGetAppState: extern(SDL_GetAppState) func -> Uint8
vprintf: extern func (__Fmt: const Char*, __Arg: __GnucVaList) -> Int
remove: extern func (__Filename: const Char*) -> Int
wctomb: extern func (__S: Char*, __Wchar: WChar) -> Int
sdlSwap16: extern(SDL_Swap16) func (x: Uint16) -> Uint16
__BuiltinLog10: extern(__builtin_log10) func (arg0: Double) -> Double
__BuiltinPopcountll: extern(__builtin_popcountll) func (arg0: LLong) -> Int
strtoldL: extern(strtold_l) func (__Nptr: const Char*, __Endptr: Char**, __Loc: __LocaleT) -> LDouble
__BuiltinClogf: extern(__builtin_clogf) func (arg0: Float) -> Float
__BuiltinClogl: extern(__builtin_clogl) func (arg0: LDouble) -> LDouble
sdlDelay: extern(SDL_Delay) func (ms: Uint32)
iconv: extern func (__Cd: IconvT, __Inbuf: Char**, __Inbytesleft: SizeT*, __Outbuf: Char**, __Outbytesleft: SizeT*) -> SizeT
__BuiltinCexpf: extern(__builtin_cexpf) func (arg0: Float) -> Float
realpath: extern func (__Name: const Char*, __Resolved: Char*) -> Char*
__BuiltinCexpl: extern(__builtin_cexpl) func (arg0: LDouble) -> LDouble
sdlSwap32: extern(SDL_Swap32) func (x: Uint32) -> Uint32
bzero: extern func (__S: Void*, __N: SizeT)
fseeko64: extern func (__Stream: FILE*, __Off: __Off64T, __Whence: Int) -> Int
popen: extern func (__Command: const Char*, __Modes: const Char*) -> FILE*
fgetcUnlocked: extern(fgetc_unlocked) func (__Fp: FILE*) -> Int
renameat: extern func (__Oldfd: Int, __Old: const Char*, __Newfd: Int, __New_: const Char*) -> Int
sdlSwap64: extern(SDL_Swap64) func (x: Uint64) -> Uint64
sdlStrupr: extern(SDL_strupr) func (string: Char*) -> Char*
__BuiltinIsless: extern(__builtin_isless) func (...) -> Bool
sdlCreateRGBSurface: extern(SDL_CreateRGBSurface) func (flags: Uint32, width: Int, height: Int, depth: Int, rmask: Uint32, gmask: Uint32, bmask: Uint32, amask: Uint32) -> SDLSurface*
sdlAllocRW: extern(SDL_AllocRW) func -> SDLRwops*
sdlGetMouseState: extern(SDL_GetMouseState) func (x: Int*, y: Int*) -> Uint8
sdlSemWait: extern(SDL_SemWait) func (sem: SDLSem*) -> Int
sdlConvertAudio: extern(SDL_ConvertAudio) func (cvt: SDLAudioCVT*) -> Int
sdlJoystickClose: extern(SDL_JoystickClose) func (joystick: SDLJoystick*)
sdlGlGetProcAddress: extern(SDL_GL_GetProcAddress) func (proc: const Char*) -> Void*
vsnprintf: extern func (__S: Char*, __Maxlen: SizeT, __Format: const Char*, __Arg: __GnucVaList) -> Int
__BuiltinIsnormal: extern(__builtin_isnormal) func (...) -> Bool
iscntrl: extern func (arg0: Int) -> Int
__BuiltinAsinf: extern(__builtin_asinf) func (arg0: Float) -> Float
__BuiltinAsinl: extern(__builtin_asinl) func (arg0: LDouble) -> LDouble
__BuiltinPopcount: extern(__builtin_popcount) func (arg0: Int) -> Int
sdlGetTicks: extern(SDL_GetTicks) func -> Uint32
obstackVprintf: extern(obstack_vprintf) func (__Obstack: Pointer, __Format: const Char*, __Args: __GnucVaList) -> Int
fflush: extern func (__Stream: FILE*) -> Int
sdlPumpEvents: extern(SDL_PumpEvents) func
realloc: extern func (__Ptr: Void*, __Size: SizeT) -> Void*
sdlGlGetAttribute: extern(SDL_GL_GetAttribute) func (attr: Int, value: Int*) -> Int
_IoFlockfile: extern(_IO_flockfile) func (arg0: Struct_IoFile*)
sdlIconv: extern(SDL_iconv) func (cd: IconvT, inbuf: const Char**, inbytesleft: SizeT*, outbuf: Char**, outbytesleft: SizeT*) -> SizeT
__BuiltinNansf: extern(__builtin_nansf) func (str: const Char*) -> Float
ffsl: extern func (__L: Long) -> Int
__BuiltinNansl: extern(__builtin_nansl) func (str: const Char*) -> LDouble
putcUnlocked: extern(putc_unlocked) func (__C: Int, __Stream: FILE*) -> Int
__BuiltinFloorf: extern(__builtin_floorf) func (arg0: Float) -> Float
asprintf: extern func (__Ptr: Char**, __Fmt: const Char*, ...) -> Int
__BuiltinFloorl: extern(__builtin_floorl) func (arg0: LDouble) -> LDouble
sdlGetKeyName: extern(SDL_GetKeyName) func (key: Int) -> Char*
__BuiltinCtanf: extern(__builtin_ctanf) func (arg0: Float) -> Float
__BuiltinCtanh: extern(__builtin_ctanh) func (arg0: Double) -> Double
__BuiltinCtanl: extern(__builtin_ctanl) func (arg0: LDouble) -> LDouble
sdlSetVideoMode: extern(SDL_SetVideoMode) func (width: Int, height: Int, bpp: Int, flags: Uint32) -> SDLSurface*
mkstemp: extern func (__Template: Char*) -> Int
strcasecmp: extern func (__S1: const Char*, __S2: const Char*) -> Int
iscntrlL: extern(iscntrl_l) func (arg0: Int, arg1: __LocaleT) -> Int
__StrtoullInternal: extern(__strtoull_internal) func (__Nptr: const Char*, __Endptr: Char**, __Base: Int, __Group: Int) -> ULLong
__BuiltinCarg: extern(__builtin_carg) func (arg0: Double) -> Double
sdlGetVideoInfo: extern(SDL_GetVideoInfo) func -> const SDLVideoInfo*
strtoq: extern func (__Nptr: const Char*, __Endptr: Char**, __Base: Int) -> LLong
__BuiltinClog: extern(__builtin_clog) func (arg0: Double) -> Double
sdlDestroySemaphore: extern(SDL_DestroySemaphore) func (sem: SDLSem*)
__BuiltinLogf: extern(__builtin_logf) func (arg0: Float) -> Float
__BuiltinLogl: extern(__builtin_logl) func (arg0: LDouble) -> LDouble
__BuiltinFabs: extern(__builtin_fabs) func (arg0: Double) -> Double
__BuiltinExpf: extern(__builtin_expf) func (arg0: Float) -> Float
__BuiltinExpl: extern(__builtin_expl) func (arg0: LDouble) -> LDouble
mblen: extern func (__S: const Char*, __N: SizeT) -> Int
atof: extern func (__Nptr: const Char*) -> Double
atoi: extern func (__Nptr: const Char*) -> Int
vsscanf: extern func (__S: const Char*, __Format: const Char*, __Arg: __GnucVaList) -> Int
sdlStrrev: extern(SDL_strrev) func (string: Char*) -> Char*
__Getdelim: extern(__getdelim) func (__Lineptr: Char**, __N: SizeT*, __Delimiter: Int, __Stream: FILE*) -> __SsizeT
__BuiltinIsunordered: extern(__builtin_isunordered) func (...) -> Bool
ftello64: extern func (__Stream: FILE*) -> __Off64T
grantpt: extern func (__Fd: Int) -> Int
__BuiltinCsqrt: extern(__builtin_csqrt) func (arg0: Double) -> Double
setlinebuf: extern func (__Stream: FILE*)
__BuiltinSin: extern(__builtin_sin) func (arg0: Double) -> Double
__CtypeTolowerLoc: extern(__ctype_tolower_loc) func -> const __Int32T**
__BuiltinLdexpf: extern(__builtin_ldexpf) func (arg0: Float, arg1: Int) -> Float
__BuiltinLdexpl: extern(__builtin_ldexpl) func (arg0: LDouble, arg1: Int) -> LDouble
atQuickExit: extern(at_quick_exit) func (__Func_: Func) -> Int
__Underflow: extern(__underflow) func (arg0: Struct_IoFile*) -> Int
__BuiltinIslessequal: extern(__builtin_islessequal) func (...) -> Bool
fcloseall: extern func -> Int
strtoumax: extern func (nptr: const Char*, endptr: Char**, base: Int) -> UintmaxT
llabs: extern func (__X: LLong) -> LLong
setvbuf: extern func (__Stream: FILE*, __Buf: Char*, __Modes: Int, __N: SizeT) -> Int
bcopy: extern func (__Src: const Void*, __Dest: Void*, __N: SizeT)
fopen64: extern func (__Filename: const Char*, __Modes: const Char*) -> FILE*
sprintf: extern func (__S: Char*, __Format: const Char*, ...) -> Int
_Exit: extern func (__Status: Int)
fgetpos64: extern func (__Stream: FILE*, __Pos: Fpos64T*) -> Int
__BuiltinTanf: extern(__builtin_tanf) func (arg0: Float) -> Float
__BuiltinTanh: extern(__builtin_tanh) func (arg0: Double) -> Double
__BuiltinTanl: extern(__builtin_tanl) func (arg0: LDouble) -> LDouble
strtod: extern func (__Nptr: const Char*, __Endptr: Char**) -> Double
strtof: extern func (__Nptr: const Char*, __Endptr: Char**) -> Float
strtol: extern func (__Nptr: const Char*, __Endptr: Char**, __Base: Int) -> Long
fmemopen: extern func (__S: Void*, __Len: SizeT, __Modes: const Char*) -> FILE*
putchar: extern func (__C: Int) -> Int
wcstombs: extern func (__S: Char*, __Pwcs: const WChar*, __N: SizeT) -> SizeT
__BuiltinCeil: extern(__builtin_ceil) func (arg0: Double) -> Double
__BuiltinFmodf: extern(__builtin_fmodf) func (arg0: Float, arg1: Float) -> Float
__BuiltinFmodl: extern(__builtin_fmodl) func (arg0: LDouble, arg1: LDouble) -> LDouble
getc: extern func (__Stream: FILE*) -> Int
gets: extern func (__S: Char*) -> Char*
getw: extern func (__Stream: FILE*) -> Int
funlockfile: extern func (__Stream: FILE*)
sdlGetThreadID: extern(SDL_GetThreadID) func (thread: SDLThread*) -> Uint32
jrand48: extern func (__Xsubi: UShort*) -> Long
printf: extern func (__Format: const Char*, ...) -> Int
sdlJoystickNumBalls: extern(SDL_JoystickNumBalls) func (joystick: SDLJoystick*) -> Int
__Asprintf: extern(__asprintf) func (__Ptr: Char**, __Fmt: const Char*, ...) -> Int
sdlLoadObject: extern(SDL_LoadObject) func (sofile: const Char*) -> Void*
sdlVideoDriverName: extern(SDL_VideoDriverName) func (namebuf: Char*, maxlen: Int) -> Char*
qsort: extern func (__Base: Void*, __Nmemb: SizeT, __Size: SizeT, __Compar: __ComparFnT)
__BuiltinReturn_: extern(__builtin_return) func (result: Void*)
sdlFreeYUVOverlay: extern(SDL_FreeYUVOverlay) func (overlay: SDLOverlay*)
clearenv: extern func -> Int
tmpfile64: extern func -> FILE*
mkdtemp: extern func (__Template: Char*) -> Char*
strtofL: extern(strtof_l) func (__Nptr: const Char*, __Endptr: Char**, __Loc: __LocaleT) -> Float
fseek: extern func (__Stream: FILE*, __Off: Long, __Whence: Int) -> Int
ptsname: extern func (__Fd: Int) -> Char*
sdlMutexV: extern(SDL_mutexV) func (mutex: SDLMutex*) -> Int
sdlHasSSE: extern(SDL_HasSSE) func -> Int
__BuiltinSqrt: extern(__builtin_sqrt) func (arg0: Double) -> Double
__BuiltinCpow: extern(__builtin_cpow) func (arg0: Double, arg1: Double) -> Double
getchar: extern func -> Int
mrand48R: extern(mrand48_r) func (__Buffer: StructDrand48Data*, __Result: Long*) -> Int
memchr: extern func (__S: Void*, __C: Int, __N: SizeT) -> Void*
fseeko: extern func (__Stream: FILE*, __Off: __OffT, __Whence: Int) -> Int
isblank: extern func (arg0: Int) -> Int
clearerr: extern func (__Stream: FILE*)
qecvt: extern func (__Value: LDouble, __Ndigit: Int, __Decpt: Int*, __Sign: Int*) -> Char*
__BuiltinCoshf: extern(__builtin_coshf) func (arg0: Float) -> Float
__BuiltinCoshl: extern(__builtin_coshl) func (arg0: LDouble) -> LDouble
fwriteUnlocked: extern(fwrite_unlocked) func (__Ptr: const Void*, __Size: SizeT, __N: SizeT, __Stream: FILE*) -> SizeT
getcharUnlocked: extern(getchar_unlocked) func -> Int
sdlLtoa: extern(SDL_ltoa) func (value: Long, string: Char*, radix: Int) -> Char*
__CtypeToupperLoc: extern(__ctype_toupper_loc) func -> const __Int32T**
sdlLowerBlit: extern(SDL_LowerBlit) func (src: SDLSurface*, srcrect: SDLRect*, dst: SDLSurface*, dstrect: SDLRect*) -> Int
__BuiltinCexp: extern(__builtin_cexp) func (arg0: Double) -> Double
sdlCreateYUVOverlay: extern(SDL_CreateYUVOverlay) func (width: Int, height: Int, format: Uint32, display: SDLSurface*) -> SDLOverlay*
memmove: extern func (__Dest: Void*, __Src: const Void*, __N: SizeT) -> Void*
gnuDevMinor: extern(gnu_dev_minor) func (__Dev: ULLong) -> UInt
__BuiltinAtan2: extern(__builtin_atan2) func (arg0: Double, arg1: Double) -> Double
__BuiltinMemchr: extern(__builtin_memchr) func (arg0: const Void*, arg1: Int, arg2: UInt) -> Void*
sdlVideoInit: extern(SDL_VideoInit) func (driverName: const Char*, flags: Uint32) -> Int
__BuiltinAtanf: extern(__builtin_atanf) func (arg0: Float) -> Float
__BuiltinAtanl: extern(__builtin_atanl) func (arg0: LDouble) -> LDouble
sdlOpenAudio: extern(SDL_OpenAudio) func (desired: SDLAudioSpec*, obtained: SDLAudioSpec*) -> Int
memcpy: extern func (__Dest: Void*, __Src: const Void*, __N: SizeT) -> Void*
sdlReadLE32: extern(SDL_ReadLE32) func (src: SDLRwops*) -> Uint32
strncat: extern func (__Dest: Char*, __Src: const Char*, __N: SizeT) -> Char*
__BuiltinCtan: extern(__builtin_ctan) func (arg0: Double) -> Double
__BuiltinLog: extern(__builtin_log) func (arg0: Double) -> Double
bsearch: extern func (__Key: const Void*, __Base: const Void*, __Nmemb: SizeT, __Size: SizeT, __Compar: __ComparFnT) -> Void*
vsprintf: extern func (__S: Char*, __Format: const Char*, __Arg: __GnucVaList) -> Int
sdlCreateCursor: extern(SDL_CreateCursor) func (data: Uint8*, mask: Uint8*, w: Int, h: Int, hotX: Int, hotY: Int) -> SDLCursor*
vasprintf: extern func (__Ptr: Char**, __F: const Char*, __Arg: __GnucVaList) -> Int
isblankL: extern(isblank_l) func (arg0: Int, arg1: __LocaleT) -> Int
mbstowcs: extern func (__Pwcs: WChar*, __S: const Char*, __N: SizeT) -> SizeT
sdlCdplay: extern(SDL_CDPlay) func (cdrom: SDLCd*, start: Int, length: Int) -> Int
erand48R: extern(erand48_r) func (__Xsubi: UShort*, __Buffer: StructDrand48Data*, __Result: Double*) -> Int
sdlCondWait: extern(SDL_CondWait) func (cond: SDLCond*, mut: SDLMutex*) -> Int
sdlVideoModeOK: extern(SDL_VideoModeOK) func (width: Int, height: Int, bpp: Int, flags: Uint32) -> Int
srandomR: extern(srandom_r) func (__Seed: UInt, __Buf: StructRandomData*) -> Int
sdlMixAudio: extern(SDL_MixAudio) func (dst: Uint8*, src: const Uint8*, len: Uint32, volume: Int)
strcasecmpL: extern(strcasecmp_l) func (__S1: const Char*, __S2: const Char*, __Loc: __LocaleT) -> Int
sdlJoystickGetButton: extern(SDL_JoystickGetButton) func (joystick: SDLJoystick*, button: Int) -> Uint8
sdlReadLE64: extern(SDL_ReadLE64) func (src: SDLRwops*) -> Uint64
sdlUnlockAudio: extern(SDL_UnlockAudio) func
sdlJoystickIndex: extern(SDL_JoystickIndex) func (joystick: SDLJoystick*) -> Int
__Stpcpy: extern(__stpcpy) func (__Dest: Char*, __Src: const Char*) -> Char*
sdlGetKeyRepeat: extern(SDL_GetKeyRepeat) func (delay: Int*, interval: Int*)
sdlUnlockSurface: extern(SDL_UnlockSurface) func (surface: SDLSurface*)
sdlShowCursor: extern(SDL_ShowCursor) func (toggle: Int) -> Int
fcvt: extern func (__Value: Double, __Ndigit: Int, __Decpt: Int*, __Sign: Int*) -> Char*
qfcvt: extern func (__Value: LDouble, __Ndigit: Int, __Decpt: Int*, __Sign: Int*) -> Char*
mbtowc: extern func (__Pwc: WChar*, __S: const Char*, __N: SizeT) -> Int
gnuDevMajor: extern(gnu_dev_major) func (__Dev: ULLong) -> UInt
sdlRwfromFP: extern(SDL_RWFromFP) func (fp: FILE*, autoclose: Int) -> SDLRwops*
__BuiltinIsfinite: extern(__builtin_isfinite) func (...) -> Bool
getpt: extern func -> Int
mkstemps64: extern func (__Template: Char*, __Suffixlen: Int) -> Int
__BuiltinAsin: extern(__builtin_asin) func (arg0: Double) -> Double
abort: extern func
strncmp: extern func (__S1: const Char*, __S2: const Char*, __N: SizeT) -> Int
sdlMapRGB: extern(SDL_MapRGB) func (format: const const SDLPixelFormat*, r: const Uint8, g: const Uint8, b: const Uint8) -> Uint32
sdlCondSignal: extern(SDL_CondSignal) func (cond: SDLCond*) -> Int
__BuiltinFrexp: extern(__builtin_frexp) func (arg0: Double, arg1: Int*) -> Double
random: extern func -> Long
lcong48: extern func (__Param: UShort*)
fdopen: extern func (__Fd: Int, __Modes: const Char*) -> FILE*
sdlJoystickGetBall: extern(SDL_JoystickGetBall) func (joystick: SDLJoystick*, ball: Int, dx: Int*, dy: Int*) -> Int
freopen64: extern func (__Filename: const Char*, __Modes: const Char*, __Stream: FILE*) -> FILE*
sdlHas3DNow: extern(SDL_Has3DNow) func -> Int
strchrnul: extern func (__S: Char*, __C: Int) -> Char*
__BuiltinIsgreaterequal: extern(__builtin_isgreaterequal) func (...) -> Bool
strncpy: extern func (__Dest: Char*, __Src: const Char*, __N: SizeT) -> Char*
sdlAudioQuit: extern(SDL_AudioQuit) func
__CtypeGetMbCurMax: extern(__ctype_get_mb_cur_max) func -> SizeT
isascii: extern func (__C: Int) -> Int
toascii: extern func (__C: Int) -> Int
ftrylockfile: extern func (__Stream: FILE*) -> Int
sdlWmToggleFullScreen: extern(SDL_WM_ToggleFullScreen) func (surface: SDLSurface*) -> Int
free: extern func (__Ptr: Void*)
sdlBuildAudioCVT: extern(SDL_BuildAudioCVT) func (cvt: SDLAudioCVT*, srcFormat: Uint16, srcChannels: Uint8, srcRate: Int, dstFormat: Uint16, dstChannels: Uint8, dstRate: Int) -> Int
sdlSetError: extern(SDL_SetError) func (fmt: const Char*, ...)
sdlCreateMutex: extern(SDL_CreateMutex) func -> SDLMutex*
filenoUnlocked: extern(fileno_unlocked) func (__Stream: FILE*) -> Int
sdlVideoQuit: extern(SDL_VideoQuit) func
isupper: extern func (arg0: Int) -> Int
toupper: extern func (__C: Int) -> Int
sdlGlSwapBuffers: extern(SDL_GL_SwapBuffers) func
initstateR: extern(initstate_r) func (__Seed: UInt, __Statebuf: Char*, __Statelen: SizeT, __Buf: StructRandomData*) -> Int
fgetpos: extern func (__Stream: FILE*, __Pos: FposT*) -> Int
__BuiltinLog10f: extern(__builtin_log10f) func (arg0: Float) -> Float
__BuiltinLog10l: extern(__builtin_log10l) func (arg0: LDouble) -> LDouble
cfree: extern func (__Ptr: Void*)
strfry: extern func (__String: Char*) -> Char*
sdlEnableUNICODE: extern(SDL_EnableUNICODE) func (enable: Int) -> Int
snprintf: extern func (__S: Char*, __Maxlen: SizeT, __Format: const Char*, ...) -> Int
__BuiltinCtzl: extern(__builtin_ctzl) func (arg0: Long) -> Int
isspace: extern func (arg0: Int) -> Int
memccpy: extern func (__Dest: Void*, __Src: const Void*, __C: Int, __N: SizeT) -> Void*
sdlSaveBMPRw: extern(SDL_SaveBMP_RW) func (surface: SDLSurface*, dst: SDLRwops*, freedst: Int) -> Int
putcharUnlocked: extern(putchar_unlocked) func (__C: Int) -> Int
tmpnam: extern func (__S: Char*) -> Char*
cuserid: extern func (__S: Char*) -> Char*
strtoull: extern func (__Nptr: const Char*, __Endptr: Char**, __Base: Int) -> ULLong
__BuiltinPowif: extern(__builtin_powif) func (arg0: Float, arg1: Int) -> Float
__BuiltinPowil: extern(__builtin_powil) func (arg0: LDouble, arg1: Int) -> LDouble
sdlDestroyCond: extern(SDL_DestroyCond) func (cond: SDLCond*)
__BuiltinModff: extern(__builtin_modff) func (arg0: Float, arg1: Float*) -> Float
__BuiltinExp: extern(__builtin_exp) func (arg0: Double) -> Double
__BuiltinModfl: extern(__builtin_modfl) func (arg0: LDouble, arg1: LDouble*) -> LDouble
isxdigitL: extern(isxdigit_l) func (arg0: Int, arg1: __LocaleT) -> Int
sdlHasMMX: extern(SDL_HasMMX) func -> Int
sdlWriteLE16: extern(SDL_WriteLE16) func (dst: SDLRwops*, value: Uint16) -> Int
canonicalizeFileName: extern(canonicalize_file_name) func (__Name: const Char*) -> Char*
isalpha: extern func (arg0: Int) -> Int
__BuiltinPrefetch: extern(__builtin_prefetch) func (addr: const Void*, ...)
iconvOpen: extern(iconv_open) func (__Tocode: const Char*, __Fromcode: const Char*) -> IconvT
tempnam: extern func (__Dir: const Char*, __Pfx: const Char*) -> Char*
sdlWriteLE32: extern(SDL_WriteLE32) func (dst: SDLRwops*, value: Uint32) -> Int
__BuiltinTan: extern(__builtin_tan) func (arg0: Double) -> Double
srand48: extern func (__Seedval: Long)
__BuiltinFabsf: extern(__builtin_fabsf) func (arg0: Float) -> Float
__BuiltinFabsl: extern(__builtin_fabsl) func (arg0: LDouble) -> LDouble
sdlWriteLE64: extern(SDL_WriteLE64) func (dst: SDLRwops*, value: Uint64) -> Int
__Overflow: extern(__overflow) func (arg0: Struct_IoFile*, arg1: Int) -> Int
isspaceL: extern(isspace_l) func (arg0: Int, arg1: __LocaleT) -> Int
ftello: extern func (__Stream: FILE*) -> __OffT
mkstemps: extern func (__Template: Char*, __Suffixlen: Int) -> Int
putenv: extern func (__String: Char*) -> Int
sdlSoftStretch: extern(SDL_SoftStretch) func (src: SDLSurface*, srcrect: SDLRect*, dst: SDLSurface*, dstrect: SDLRect*) -> Int
isgraphL: extern(isgraph_l) func (arg0: Int, arg1: __LocaleT) -> Int
sdlJoystickOpen: extern(SDL_JoystickOpen) func (deviceIndex: Int) -> SDLJoystick*
fscanf: extern func (__Stream: FILE*, __Format: const Char*, ...) -> Int
ecvtR: extern(ecvt_r) func (__Value: Double, __Ndigit: Int, __Decpt: Int*, __Sign: Int*, __Buf: Char*, __Len: SizeT) -> Int
qecvtR: extern(qecvt_r) func (__Value: LDouble, __Ndigit: Int, __Decpt: Int*, __Sign: Int*, __Buf: Char*, __Len: SizeT) -> Int
sdlUlltoa: extern(SDL_ulltoa) func (value: Uint64, string: Char*, radix: Int) -> Char*
__BuiltinInf: extern(__builtin_inf) func -> Double
ffsll: extern func (__Ll: LLong) -> Int
perror: extern func (__S: const Char*)
strerrorL: extern(strerror_l) func (__Errnum: Int, __L: __LocaleT) -> Char*
strerrorR: extern(strerror_r) func (__Errnum: Int, __Buf: Char*, __Buflen: SizeT) -> Char*
div: extern func (__Numer: Int, __Denom: Int) -> DivT
sdlMapRGBA: extern(SDL_MapRGBA) func (format: const const SDLPixelFormat*, r: const Uint8, g: const Uint8, b: const Uint8, a: const Uint8) -> Uint32
sdlCreateRGBSurfaceFrom: extern(SDL_CreateRGBSurfaceFrom) func (pixels: Void*, width: Int, height: Int, depth: Int, pitch: Int, rmask: Uint32, gmask: Uint32, bmask: Uint32, amask: Uint32) -> SDLSurface*
sdlUpdateRect: extern(SDL_UpdateRect) func (screen: SDLSurface*, x: Sint32, y: Sint32, w: Uint32, h: Uint32)
sdlFlip: extern(SDL_Flip) func (screen: SDLSurface*) -> Int
mrand48: extern func -> Long
obstackPrintf: extern(obstack_printf) func (__Obstack: Pointer, __Format: const Char*, ...) -> Int
__BuiltinFrameAddress: extern(__builtin_frame_address) func (level: UInt) -> Void*
alloca: extern func (__Size: SizeT) -> Void*
sdlLoadBMPRw: extern(SDL_LoadBMP_RW) func (src: SDLRwops*, freesrc: Int) -> SDLSurface*
wcstoimax: extern func (nptr: const WChar*, endptr: WChar**, base: Int) -> IntmaxT
getloadavg: extern func (__Loadavg: Double*, __Nelem: Int) -> Int
strcat: extern func (__Dest: Char*, __Src: const Char*) -> Char*
stpncpy: extern func (__Dest: Char*, __Src: const Char*, __N: SizeT) -> Char*
sdlRwfromMem: extern(SDL_RWFromMem) func (mem: Void*, size: Int) -> SDLRwops*
fileno: extern func (__Stream: FILE*) -> Int
sdlInit: extern(SDL_Init) func (flags: Uint32) -> Int
ferror: extern func (__Stream: FILE*) -> Int
__BuiltinCabs: extern(__builtin_cabs) func (arg0: Double) -> Double
isxdigit: extern func (arg0: Int) -> Int
vfscanf: extern func (__S: FILE*, __Format: const Char*, __Arg: __GnucVaList) -> Int
lrand48R: extern(lrand48_r) func (__Buffer: StructDrand48Data*, __Result: Long*) -> Int
qsortR: extern(qsort_r) func (__Base: Void*, __Nmemb: SizeT, __Size: SizeT, __Compar: __ComparDFnT, __Arg: Void*)
toupperL: extern(toupper_l) func (__C: Int, __L: __LocaleT) -> Int
setkey: extern func (__Key: const Char*)
pselect: extern func (__Nfds: Int, __Readfds: FdSet*, __Writefds: FdSet*, __Exceptfds: FdSet*, __Timeout: const StructTimespec*, __Sigmask: const __SigsetT*) -> Int
sdlHasSSE2: extern(SDL_HasSSE2) func -> Int
scanf: extern func (__Format: const Char*, ...) -> Int
strchr: extern func (__S: Char*, __C: Int) -> Char*
sdlSemPost: extern(SDL_SemPost) func (sem: SDLSem*) -> Int
__BuiltinAtan2f: extern(__builtin_atan2f) func (arg0: Float, arg1: Float) -> Float
__BuiltinAtan2l: extern(__builtin_atan2l) func (arg0: LDouble, arg1: LDouble) -> LDouble
__Bzero: extern(__bzero) func (__S: Void*, __N: SizeT)
__BuiltinIsinf: extern(__builtin_isinf) func (...) -> Bool
sdlWaitThread: extern(SDL_WaitThread) func (thread: SDLThread*, status: Int*)
sdlJoystickNumAxes: extern(SDL_JoystickNumAxes) func (joystick: SDLJoystick*) -> Int
fsetpos: extern func (__Stream: FILE*, __Pos: const FposT*) -> Int
sdlLoadFunction: extern(SDL_LoadFunction) func (handle: Void*, name: const Char*) -> Void*
_IoPutc: extern(_IO_putc) func (__C: Int, __Fp: Struct_IoFile*) -> Int
strcmp: extern func (__S1: const Char*, __S2: const Char*) -> Int
sdlLoadWAVRw: extern(SDL_LoadWAV_RW) func (src: SDLRwops*, freesrc: Int, spec: SDLAudioSpec*, audioBuf: Uint8**, audioLen: Uint32*) -> SDLAudioSpec*
sdlJoystickEventState: extern(SDL_JoystickEventState) func (state: Int) -> Int
valloc: extern func (__Size: SizeT) -> Void*
drand48R: extern(drand48_r) func (__Buffer: StructDrand48Data*, __Result: Double*) -> Int
strcpy: extern func (__Dest: Char*, __Src: const Char*) -> Char*
__BuiltinCcoshf: extern(__builtin_ccoshf) func (arg0: Float) -> Float
__WcstollInternal: extern(__wcstoll_internal) func (__Nptr: const WChar*, __Endptr: WChar**, __Base: Int, __Group: Int) -> LLong
__BuiltinCcoshl: extern(__builtin_ccoshl) func (arg0: LDouble) -> LDouble
_IoVfprintf: extern(_IO_vfprintf) func (arg0: Struct_IoFile*, arg1: const Char*, arg2: __GnucVaList) -> Int
fcvtR: extern(fcvt_r) func (__Value: Double, __Ndigit: Int, __Decpt: Int*, __Sign: Int*, __Buf: Char*, __Len: SizeT) -> Int
qfcvtR: extern(qfcvt_r) func (__Value: LDouble, __Ndigit: Int, __Decpt: Int*, __Sign: Int*, __Buf: Char*, __Len: SizeT) -> Int
sdlGetError: extern(SDL_GetError) func -> Char*
strcasestr: extern func (__Haystack: Char*, __Needle: const Char*) -> Char*
sdlConvertSurface: extern(SDL_ConvertSurface) func (src: SDLSurface*, fmt: SDLPixelFormat*, flags: Uint32) -> SDLSurface*
sdlSetAlpha: extern(SDL_SetAlpha) func (surface: SDLSurface*, flag: Uint32, alpha: Uint8) -> Int
sdlCreateSemaphore: extern(SDL_CreateSemaphore) func (initialValue: Uint32) -> SDLSem*
setbuffer: extern func (__Stream: FILE*, __Buf: Char*, __Size: SizeT)
_IoFeof: extern(_IO_feof) func (__Fp: Struct_IoFile*) -> Int
isprint: extern func (arg0: Int) -> Int
sdlCdclose: extern(SDL_CDClose) func (cdrom: SDLCd*)
rename: extern func (__Old: const Char*, __New_: const Char*) -> Int
erand48: extern func (__Xsubi: UShort*) -> Double
getdelim: extern func (__Lineptr: Char**, __N: SizeT*, __Delimiter: Int, __Stream: FILE*) -> __SsizeT
_IoSeekoff: extern(_IO_seekoff) func (arg0: Struct_IoFile*, arg1: __Off64T, arg2: Int, arg3: Int) -> __Off64T
basename: extern func (__Filename: Char*) -> Char*
memfrob: extern func (__S: Void*, __N: SizeT) -> Void*
__StrtollInternal: extern(__strtoll_internal) func (__Nptr: const Char*, __Endptr: Char**, __Base: Int, __Group: Int) -> LLong
__BuiltinAtan: extern(__builtin_atan) func (arg0: Double) -> Double
__BuiltinSinhf: extern(__builtin_sinhf) func (arg0: Float) -> Float
__BuiltinSinhl: extern(__builtin_sinhl) func (arg0: LDouble) -> LDouble
__BuiltinSqrtf: extern(__builtin_sqrtf) func (arg0: Float) -> Float
islowerL: extern(islower_l) func (arg0: Int, arg1: __LocaleT) -> Int
__BuiltinSqrtl: extern(__builtin_sqrtl) func (arg0: LDouble) -> LDouble
__BuiltinFrexpf: extern(__builtin_frexpf) func (arg0: Float, arg1: Int*) -> Float
__BuiltinFrexpl: extern(__builtin_frexpl) func (arg0: LDouble, arg1: Int*) -> LDouble
__BuiltinCpowf: extern(__builtin_cpowf) func (arg0: Float, arg1: Float) -> Float
__BuiltinCpowl: extern(__builtin_cpowl) func (arg0: LDouble, arg1: LDouble) -> LDouble
randomR: extern(random_r) func (__Buf: StructRandomData*, __Result: Int32*) -> Int
sdlQuitSubSystem: extern(SDL_QuitSubSystem) func (flags: Uint32)
initstate: extern func (__Seed: UInt, __Statebuf: Char*, __Statelen: SizeT) -> Char*
islower: extern func (arg0: Int) -> Int
tolower: extern func (__C: Int) -> Int
fsetpos64: extern func (__Stream: FILE*, __Pos: const Fpos64T*) -> Int
strtoullL: extern(strtoull_l) func (__Nptr: const Char*, __Endptr: Char**, __Base: Int, __Loc: __LocaleT) -> ULLong
sdlStrlcat: extern(SDL_strlcat) func (dst: Char*, src: const Char*, maxlen: SizeT) -> SizeT
_IoSgetn: extern(_IO_sgetn) func (arg0: Struct_IoFile*, arg1: Void*, arg2: SizeT) -> SizeT
clearerrUnlocked: extern(clearerr_unlocked) func (__Stream: FILE*)
sdlGetGammaRamp: extern(SDL_GetGammaRamp) func (red: Uint16*, green: Uint16*, blue: Uint16*) -> Int
sdlHasMMXExt: extern(SDL_HasMMXExt) func -> Int
getsubopt: extern func (__Optionp: Char**, __Tokens: const Char**, __Valuep: Char**) -> Int
sdlHasRDTSC: extern(SDL_HasRDTSC) func -> Int
ctermid: extern func (__S: Char*) -> Char*
fputcUnlocked: extern(fputc_unlocked) func (__C: Int, __Stream: FILE*) -> Int
strtok: extern func (__S: Char*, __Delim: const Char*) -> Char*
sdlGetAudioStatus: extern(SDL_GetAudioStatus) func -> Int
ispunctL: extern(ispunct_l) func (arg0: Int, arg1: __LocaleT) -> Int
strtokR: extern(strtok_r) func (__S: Char*, __Delim: const Char*, __SavePtr: Char**) -> Char*
freopen: extern func (__Filename: const Char*, __Modes: const Char*, __Stream: FILE*) -> FILE*
isprintL: extern(isprint_l) func (arg0: Int, arg1: __LocaleT) -> Int
isctype: extern func (__C: Int, __Mask: Int) -> Int
sdlSemTryWait: extern(SDL_SemTryWait) func (sem: SDLSem*) -> Int
__Stpncpy: extern(__stpncpy) func (__Dest: Char*, __Src: const Char*, __N: SizeT) -> Char*
sdlCdname: extern(SDL_CDName) func (drive: Int) -> const Char*
sdlCdstop: extern(SDL_CDStop) func (cdrom: SDLCd*) -> Int
fputc: extern func (__C: Int, __Stream: FILE*) -> Int
fputs: extern func (__S: const Char*, __Stream: FILE*) -> Int
randR: extern(rand_r) func (__Seed: UInt*) -> Int
memset: extern func (__S: Void*, __C: Int, __N: SizeT) -> Void*
isupperL: extern(isupper_l) func (arg0: Int, arg1: __LocaleT) -> Int
_IoFerror: extern(_IO_ferror) func (__Fp: Struct_IoFile*) -> Int
sdlWarpMouse: extern(SDL_WarpMouse) func (x: Uint16, y: Uint16)
getcUnlocked: extern(getc_unlocked) func (__Fp: FILE*) -> Int
strncasecmpL: extern(strncasecmp_l) func (__S1: const Char*, __S2: const Char*, __N: SizeT, __Loc: __LocaleT) -> Int
ftell: extern func (__Stream: FILE*) -> Long
sdlWmIconifyWindow: extern(SDL_WM_IconifyWindow) func -> Int
sdlGlUnlock: extern(SDL_GL_Unlock) func
sdlAudioInit: extern(SDL_AudioInit) func (driverName: const Char*) -> Int
sdlSetTimer: extern(SDL_SetTimer) func (interval: Uint32, callback: SDLTimerCallback) -> Int
sdlRemoveTimer: extern(SDL_RemoveTimer) func (t: SDLTimerID) -> Int
sdlJoystickNumButtons: extern(SDL_JoystickNumButtons) func (joystick: SDLJoystick*) -> Int
strndup: extern func (__String: const Char*, __N: SizeT) -> Char*
__BuiltinTanhf: extern(__builtin_tanhf) func (arg0: Float) -> Float
__BuiltinTanhl: extern(__builtin_tanhl) func (arg0: LDouble) -> LDouble
sdlSetClipRect: extern(SDL_SetClipRect) func (surface: SDLSurface*, rect: const SDLRect*) -> Int
__BuiltinCabsf: extern(__builtin_cabsf) func (arg0: Float) -> Float
__BuiltinCabsl: extern(__builtin_cabsl) func (arg0: LDouble) -> LDouble
sdlPauseAudio: extern(SDL_PauseAudio) func (pauseOn: Int)
__BuiltinPowf: extern(__builtin_powf) func (arg0: Float, arg1: Float) -> Float
__BuiltinPowi: extern(__builtin_powi) func (arg0: Double, arg1: Int) -> Double
__BuiltinPowl: extern(__builtin_powl) func (arg0: LDouble, arg1: LDouble) -> LDouble
strtold: extern func (__Nptr: const Char*, __Endptr: Char**) -> LDouble
_Toupper: extern(_toupper) func (arg0: Int) -> Int
sdlCdresume: extern(SDL_CDResume) func (cdrom: SDLCd*) -> Int
isdigit: extern func (arg0: Int) -> Int
sdlUpperBlit: extern(SDL_UpperBlit) func (src: SDLSurface*, srcrect: SDLRect*, dst: SDLSurface*, dstrect: SDLRect*) -> Int
exit: extern func (__Status: Int)
setstate: extern func (__Statebuf: Char*) -> Char*
_IoFunlockfile: extern(_IO_funlockfile) func (arg0: Struct_IoFile*)
pclose: extern func (__Stream: FILE*) -> Int
sdlStrlwr: extern(SDL_strlwr) func (string: Char*) -> Char*
sdlReadBE16: extern(SDL_ReadBE16) func (src: SDLRwops*) -> Uint16
sdlCreateCond: extern(SDL_CreateCond) func -> SDLCond*
srandom: extern func (__Seed: UInt)
tmpnamR: extern(tmpnam_r) func (__S: Char*) -> Char*
gcvt: extern func (__Value: Double, __Ndigit: Int, __Buf: Char*) -> Char*
qgcvt: extern func (__Value: LDouble, __Ndigit: Int, __Buf: Char*) -> Char*
sdlPeepEvents: extern(SDL_PeepEvents) func (events: SDLEvent*, numevents: Int, action: Int, mask: Uint32) -> Int
sdlWmGetCaption: extern(SDL_WM_GetCaption) func (title: Char**, icon: Char**)
sdlGlUpdateRects: extern(SDL_GL_UpdateRects) func (numrects: Int, rects: SDLRect*)
malloc: extern func (__Size: SizeT) -> Void*
sdlKillThread: extern(SDL_KillThread) func (thread: SDLThread*)
ldiv: extern func (__Numer: Long, __Denom: Long) -> LdivT
sdlGetRGBA: extern(SDL_GetRGBA) func (pixel: Uint32, fmt: const const SDLPixelFormat*, r: Uint8*, g: Uint8*, b: Uint8*, a: Uint8*)
__BuiltinCcos: extern(__builtin_ccos) func (arg0: Double) -> Double
sdlUnlockYUVOverlay: extern(SDL_UnlockYUVOverlay) func (overlay: SDLOverlay*)
sdlDisplayYUVOverlay: extern(SDL_DisplayYUVOverlay) func (overlay: SDLOverlay*, dstrect: SDLRect*) -> Int
_IoPeekcLocked: extern(_IO_peekc_locked) func (__Fp: Struct_IoFile*) -> Int
strcoll: extern func (__S1: const Char*, __S2: const Char*) -> Int
strncasecmp: extern func (__S1: const Char*, __S2: const Char*, __N: SizeT) -> Int
strtodL: extern(strtod_l) func (__Nptr: const Char*, __Endptr: Char**, __Loc: __LocaleT) -> Double
fclose: extern func (__Stream: FILE*) -> Int
iconvClose: extern(iconv_close) func (__Cd: IconvT) -> Int
sdlInitSubSystem: extern(SDL_InitSubSystem) func (flags: Uint32) -> Int
strtollL: extern(strtoll_l) func (__Nptr: const Char*, __Endptr: Char**, __Base: Int, __Loc: __LocaleT) -> LLong
mkostemps64: extern func (__Template: Char*, __Suffixlen: Int, __Flags: Int) -> Int
unsetenv: extern func (__Name: const Char*) -> Int
__StrtokR: extern(__strtok_r) func (__S: Char*, __Delim: const Char*, __SavePtr: Char**) -> Char*
onExit: extern(on_exit) func (__Func_: Func, __Arg: Void*) -> Int
calloc: extern func (__Nmemb: SizeT, __Size: SizeT) -> Void*
__BuiltinExpect: extern(__builtin_expect) func (exp: Long, c: Long) -> Long
sscanf: extern func (__S: const Char*, __Format: const Char*, ...) -> Int
sdlCdopen: extern(SDL_CDOpen) func (drive: Int) -> SDLCd*
sdlSetCursor: extern(SDL_SetCursor) func (cursor: SDLCursor*)
srand48R: extern(srand48_r) func (__Seedval: Long, __Buffer: StructDrand48Data*) -> Int
mkostemp64: extern func (__Template: Char*, __Flags: Int) -> Int
sdlFreeWAV: extern(SDL_FreeWAV) func (audioBuf: Uint8*)
sdlSemWaitTimeout: extern(SDL_SemWaitTimeout) func (sem: SDLSem*, ms: Uint32) -> Int
sdlReadBE64: extern(SDL_ReadBE64) func (src: SDLRwops*) -> Uint64
_IoFreeBackupArea: extern(_IO_free_backup_area) func (arg0: Struct_IoFile*)
sdlListModes: extern(SDL_ListModes) func (format: SDLPixelFormat*, flags: Uint32) -> SDLRect**
fwrite: extern func (__Ptr: const Void*, __Size: SizeT, __N: SizeT, __S: FILE*) -> SizeT
__BuiltinPopcountl: extern(__builtin_popcountl) func (arg0: Long) -> Int
atoll: extern func (__Nptr: const Char*) -> LLong
posixOpenpt: extern(posix_openpt) func (__Oflag: Int) -> Int
ungetc: extern func (__C: Int, __Stream: FILE*) -> Int
sdlFreeRW: extern(SDL_FreeRW) func (area: SDLRwops*)
posixMemalign: extern(posix_memalign) func (__Memptr: Void**, __Alignment: SizeT, __Size: SizeT) -> Int
getenv: extern func (__Name: const Char*) -> Char*
sdlIconvString: extern(SDL_iconv_string) func (tocode: const Char*, fromcode: const Char*, inbuf: const Char*, inbytesleft: SizeT) -> Char*
strrchr: extern func (__S: Char*, __C: Int) -> Char*
sdlSemValue: extern(SDL_SemValue) func (sem: SDLSem*) -> Uint32
strxfrm: extern func (__Dest: Char*, __Src: const Char*, __N: SizeT) -> SizeT
sdlPushEvent: extern(SDL_PushEvent) func (event: SDLEvent*) -> Int
seed48R: extern(seed48_r) func (__Seed16v: UShort*, __Buffer: StructDrand48Data*) -> Int
sdlGlLock: extern(SDL_GL_Lock) func
__Mempcpy: extern(__mempcpy) func (__Dest: Void*, __Src: const Void*, __N: SizeT) -> Void*
strtoll: extern func (__Nptr: const Char*, __Endptr: Char**, __Base: Int) -> LLong
strerror: extern func (__Errnum: Int) -> Char*
sdlSetGamma: extern(SDL_SetGamma) func (red: Float, green: Float, blue: Float) -> Int
strnlen: extern func (__String: const Char*, __Maxlen: SizeT) -> SizeT
sdlUnloadObject: extern(SDL_UnloadObject) func (handle: Void*)
wcstoumax: extern func (nptr: const WChar*, endptr: WChar**, base: Int) -> UintmaxT
mkostemp: extern func (__Template: Char*, __Flags: Int) -> Int
sdlEventState: extern(SDL_EventState) func (type: Uint8, state: Int) -> Uint8
system: extern func (__Command: const Char*) -> Int
sdlGetCursor: extern(SDL_GetCursor) func -> SDLCursor*
sdlJoystickUpdate: extern(SDL_JoystickUpdate) func
fopencookie: extern func (__MagicCookie: Void*, __Modes: const Char*, __IoFuncs: _IoCookieIoFunctionsT) -> FILE*
sdlSetEventFilter: extern(SDL_SetEventFilter) func (filter: SDLEventFilter)
sdlSetColorKey: extern(SDL_SetColorKey) func (surface: SDLSurface*, flag: Uint32, key: Uint32) -> Int
getline: extern func (__Lineptr: Char**, __N: SizeT*, __Stream: FILE*) -> __SsizeT
mkostemps: extern func (__Template: Char*, __Suffixlen: Int, __Flags: Int) -> Int
sdlJoystickNumHats: extern(SDL_JoystickNumHats) func (joystick: SDLJoystick*) -> Int
setbuf: extern func (__Stream: FILE*, __Buf: Char*)
gnuDevMakedev: extern(gnu_dev_makedev) func (__Major: UInt, __Minor: UInt) -> ULLong
strpbrk: extern func (__S: Char*, __Accept: const Char*) -> Char*
rpmatch: extern func (__Response: const Char*) -> Int
strtoul: extern func (__Nptr: const Char*, __Endptr: Char**, __Base: Int) -> ULong
strtouq: extern func (__Nptr: const Char*, __Endptr: Char**, __Base: Int) -> ULLong
strcspn: extern func (__S: const Char*, __Reject: const Char*) -> SizeT
sdlPollEvent: extern(SDL_PollEvent) func (event: SDLEvent*) -> Int
__BuiltinInff: extern(__builtin_inff) func -> Float
__BuiltinInfl: extern(__builtin_infl) func -> LDouble
sdlMutexP: extern(SDL_mutexP) func (mutex: SDLMutex*) -> Int
strsignal: extern func (__Sig: Int) -> Char*
putc: extern func (__C: Int, __Stream: FILE*) -> Int
puts: extern func (__S: const Char*) -> Int
putw: extern func (__W: Int, __Stream: FILE*) -> Int
_IoCookieInit: extern(_IO_cookie_init) func (__Cfile: Pointer, __ReadWrite: Int, __Cookie: Void*, __Fns: _IoCookieIoFunctionsT)
__BuiltinCos: extern(__builtin_cos) func (arg0: Double) -> Double
isalphaL: extern(isalpha_l) func (arg0: Int, arg1: __LocaleT) -> Int
sdlHasAltiVec: extern(SDL_HasAltiVec) func -> Int
sdlGetModState: extern(SDL_GetModState) func -> Int
fopen: extern func (__Filename: const Char*, __Modes: const Char*) -> FILE*
labs: extern func (__X: Long) -> Long
imaxdiv: extern func (__Numer: IntmaxT, __Denom: IntmaxT) -> ImaxdivT
tolowerL: extern(tolower_l) func (__C: Int, __L: __LocaleT) -> Int
sdlUltoa: extern(SDL_ultoa) func (value: ULong, string: Char*, radix: Int) -> Char*
fprintf: extern func (__Stream: FILE*, __Format: const Char*, ...) -> Int
ptsnameR: extern(ptsname_r) func (__Fd: Int, __Buf: Char*, __Buflen: SizeT) -> Int
sdlWriteBE16: extern(SDL_WriteBE16) func (dst: SDLRwops*, value: Uint16) -> Int
sdlGlLoadLibrary: extern(SDL_GL_LoadLibrary) func (path: const Char*) -> Int
stpcpy: extern func (__Dest: Char*, __Src: const Char*) -> Char*
__BuiltinCtz: extern(__builtin_ctz) func (arg0: Int) -> Int
sdlHas3DNowExt: extern(SDL_Has3DNowExt) func -> Int
__BuiltinReturn_Address: extern(__builtin_return_address) func (level: UInt) -> Void*
sdlWriteBE32: extern(SDL_WriteBE32) func (dst: SDLRwops*, value: Uint32) -> Int
strdup: extern func (__S: const Char*) -> Char*
__BuiltinIsnan: extern(__builtin_isnan) func (...) -> Bool
memcmp: extern func (__S1: const Void*, __S2: const Void*, __N: SizeT) -> Int
sdlLltoa: extern(SDL_lltoa) func (value: Sint64, string: Char*, radix: Int) -> Char*
bcmp: extern func (__S1: const Void*, __S2: const Void*, __N: SizeT) -> Int
dprintf: extern func (__Fd: Int, __Fmt: const Char*, ...) -> Int
atol: extern func (__Nptr: const Char*) -> Long
sdlWriteBE64: extern(SDL_WriteBE64) func (dst: SDLRwops*, value: Uint64) -> Int
l64a: extern func (__N: Long) -> Char*
mkstemp64: extern func (__Template: Char*) -> Int
rawmemchr: extern func (__S: Void*, __C: Int) -> Void*
sdlCdpause: extern(SDL_CDPause) func (cdrom: SDLCd*) -> Int
sdlCloseAudio: extern(SDL_CloseAudio) func
strxfrmL: extern(strxfrm_l) func (__Dest: Char*, __Src: const Char*, __N: SizeT, __L: __LocaleT) -> SizeT
sdlDisplayFormatAlpha: extern(SDL_DisplayFormatAlpha) func (surface: SDLSurface*) -> SDLSurface*
fread: extern func (__Ptr: Void*, __Size: SizeT, __N: SizeT, __Stream: FILE*) -> SizeT
__BuiltinCsinhf: extern(__builtin_csinhf) func (arg0: Float) -> Float
__BuiltinCsinhl: extern(__builtin_csinhl) func (arg0: LDouble) -> LDouble
__BuiltinCsqrtf: extern(__builtin_csqrtf) func (arg0: Float) -> Float
__BuiltinCsqrtl: extern(__builtin_csqrtl) func (arg0: LDouble) -> LDouble
sdlCdplayTracks: extern(SDL_CDPlayTracks) func (cdrom: SDLCd*, startTrack: Int, startFrame: Int, ntracks: Int, nframes: Int) -> Int
sdlEnableKeyRepeat: extern(SDL_EnableKeyRepeat) func (delay: Int, interval: Int) -> Int
unlockpt: extern func (__Fd: Int) -> Int
srand: extern func (__Seed: UInt)
_Tolower: extern(_tolower) func (arg0: Int) -> Int
sdlQuit: extern(SDL_Quit) func
_IoSeekpos: extern(_IO_seekpos) func (arg0: Struct_IoFile*, arg1: __Off64T, arg2: Int) -> __Off64T
mktemp: extern func (__Template: Char*) -> Char*
strtolL: extern(strtol_l) func (__Nptr: const Char*, __Endptr: Char**, __Base: Int, __Loc: __LocaleT) -> Long
sdlWaitEvent: extern(SDL_WaitEvent) func (event: SDLEvent*) -> Int
fgetsUnlocked: extern(fgets_unlocked) func (__S: Char*, __N: Int, __Stream: FILE*) -> Char*
sdlGetKeyState: extern(SDL_GetKeyState) func (numkeys: Int*) -> Uint8*
sdlRwfromFile: extern(SDL_RWFromFile) func (file: const Char*, mode: const Char*) -> SDLRwops*
__CtypeBLoc: extern(__ctype_b_loc) func -> const UShort**
sdlCdnumDrives: extern(SDL_CDNumDrives) func -> Int
lcong48R: extern(lcong48_r) func (__Param: UShort*, __Buffer: StructDrand48Data*) -> Int
sdlAddTimer: extern(SDL_AddTimer) func (interval: Uint32, callback: SDLNewTimerCallback, param: Void*) -> SDLTimerID
strsep: extern func (__Stringp: Char**, __Delim: const Char*) -> Char*
atexit: extern func (__Func_: Func) -> Int
sdlCdeject: extern(SDL_CDEject) func (cdrom: SDLCd*) -> Int
__BuiltinFloor: extern(__builtin_floor) func (arg0: Double) -> Double
isalnumL: extern(isalnum_l) func (arg0: Int, arg1: __LocaleT) -> Int
__BuiltinLdexp: extern(__builtin_ldexp) func (arg0: Double, arg1: Int) -> Double
sdlFreeSurface: extern(SDL_FreeSurface) func (surface: SDLSurface*)
ferrorUnlocked: extern(ferror_unlocked) func (__Stream: FILE*) -> Int
__WcstoullInternal: extern(__wcstoull_internal) func (__Nptr: const WChar*, __Endptr: WChar**, __Base: Int, __Group: Int) -> ULLong
sdlReadBE32: extern(SDL_ReadBE32) func (src: SDLRwops*) -> Uint32
__Uflow: extern(__uflow) func (arg0: Struct_IoFile*) -> Int
feofUnlocked: extern(feof_unlocked) func (__Stream: FILE*) -> Int
fputsUnlocked: extern(fputs_unlocked) func (__S: const Char*, __Stream: FILE*) -> Int
setstateR: extern(setstate_r) func (__Statebuf: Char*, __Buf: StructRandomData*) -> Int
setenv: extern func (__Name: const Char*, __Value: const Char*, __Replace: Int) -> Int
sdlFreeCursor: extern(SDL_FreeCursor) func (cursor: SDLCursor*)
strverscmp: extern func (__S1: const Char*, __S2: const Char*) -> Int
strtoimax: extern func (nptr: const Char*, endptr: Char**, base: Int) -> IntmaxT
sdlLockYUVOverlay: extern(SDL_LockYUVOverlay) func (overlay: SDLOverlay*) -> Int
strtoulL: extern(strtoul_l) func (__Nptr: const Char*, __Endptr: Char**, __Base: Int, __Loc: __LocaleT) -> ULong
sdlJoystickGetAxis: extern(SDL_JoystickGetAxis) func (joystick: SDLJoystick*, axis: Int) -> Sint16
isalnum: extern func (arg0: Int) -> Int
__BuiltinCcosf: extern(__builtin_ccosf) func (arg0: Float) -> Float
__BuiltinCcosh: extern(__builtin_ccosh) func (arg0: Double) -> Double
__BuiltinCcosl: extern(__builtin_ccosl) func (arg0: LDouble) -> LDouble
__BuiltinIslessgreater: extern(__builtin_islessgreater) func (...) -> Bool
sdlGlSetAttribute: extern(SDL_GL_SetAttribute) func (attr: Int, value: Int) -> Int
vfprintf: extern func (__S: FILE*, __Format: const Char*, __Arg: __GnucVaList) -> Int
sdlCondBroadcast: extern(SDL_CondBroadcast) func (cond: SDLCond*) -> Int
sdlSetColors: extern(SDL_SetColors) func (surface: SDLSurface*, colors: SDLColor*, firstcolor: Int, ncolors: Int) -> Int
sdlCondWaitTimeout: extern(SDL_CondWaitTimeout) func (cond: SDLCond*, mutex: SDLMutex*, ms: Uint32) -> Int
sdlDestroyMutex: extern(SDL_DestroyMutex) func (mutex: SDLMutex*)
sdlSetPalette: extern(SDL_SetPalette) func (surface: SDLSurface*, flags: Int, colors: SDLColor*, firstcolor: Int, ncolors: Int) -> Int
sdlRwfromConstMem: extern(SDL_RWFromConstMem) func (mem: const Void*, size: Int) -> SDLRwops*
a64l: extern func (__S: const Char*) -> Long
strspn: extern func (__S: const Char*, __Accept: const Char*) -> SizeT
__SecureGetenv: extern(__secure_getenv) func (__Name: const Char*) -> Char*
_IoGetc: extern(_IO_getc) func (__Fp: Struct_IoFile*) -> Int
__BuiltinCtanhf: extern(__builtin_ctanhf) func (arg0: Float) -> Float
__BuiltinCtanhl: extern(__builtin_ctanhl) func (arg0: LDouble) -> LDouble
vdprintf: extern func (__Fd: Int, __Fmt: const Char*, __Arg: __GnucVaList) -> Int
openMemstream: extern(open_memstream) func (__Bufloc: Char**, __Sizeloc: SizeT*) -> FILE*
sdlReadLE16: extern(SDL_ReadLE16) func (src: SDLRwops*) -> Uint16
sdlError: extern(SDL_Error) func (code: Int)
sdlWmSetIcon: extern(SDL_WM_SetIcon) func (icon: SDLSurface*, mask: Uint8*)
strstr: extern func (__Haystack: Char*, __Needle: const Char*) -> Char*
sdlUpdateRects: extern(SDL_UpdateRects) func (screen: SDLSurface*, numrects: Int, rects: SDLRect*)
ispunct: extern func (arg0: Int) -> Int
ecvt: extern func (__Value: Double, __Ndigit: Int, __Decpt: Int*, __Sign: Int*) -> Char*
__BuiltinCeilf: extern(__builtin_ceilf) func (arg0: Float) -> Float
__BuiltinCeill: extern(__builtin_ceill) func (arg0: LDouble) -> LDouble
sdlNumJoysticks: extern(SDL_NumJoysticks) func -> Int
sdlLockAudio: extern(SDL_LockAudio) func
index: extern func (__S: Char*, __C: Int) -> Char*
sdlWmGrabInput: extern(SDL_WM_GrabInput) func (mode: Int) -> Int
sdlAudioDriverName: extern(SDL_AudioDriverName) func (namebuf: Char*, maxlen: Int) -> Char*
__BuiltinCsinf: extern(__builtin_csinf) func (arg0: Float) -> Float
__BuiltinCsinh: extern(__builtin_csinh) func (arg0: Double) -> Double
__BuiltinCsinl: extern(__builtin_csinl) func (arg0: LDouble) -> LDouble
isdigitL: extern(isdigit_l) func (arg0: Int, arg1: __LocaleT) -> Int
__BuiltinAcos: extern(__builtin_acos) func (arg0: Double) -> Double
strlen: extern func (__S: const Char*) -> SizeT
nrand48: extern func (__Xsubi: UShort*) -> Long
rewind: extern func (__Stream: FILE*)
__BuiltinCtzll: extern(__builtin_ctzll) func (arg0: LLong) -> Int
fflushUnlocked: extern(fflush_unlocked) func (__Stream: FILE*) -> Int
memmem: extern func (__Haystack: const Void*, __Haystacklen: SizeT, __Needle: const Void*, __Needlelen: SizeT) -> Void*
__BuiltinCargf: extern(__builtin_cargf) func (arg0: Float) -> Float
__BuiltinCargl: extern(__builtin_cargl) func (arg0: LDouble) -> LDouble
quickExit: extern(quick_exit) func (__Status: Int)
freadUnlocked: extern(fread_unlocked) func (__Ptr: Void*, __Size: SizeT, __N: SizeT, __Stream: FILE*) -> SizeT
imaxabs: extern func (__N: IntmaxT) -> IntmaxT
sdlStrlcpy: extern(SDL_strlcpy) func (dst: Char*, src: const Char*, maxlen: SizeT) -> SizeT
sdlGetClipRect: extern(SDL_GetClipRect) func (surface: SDLSurface*, rect: SDLRect*)
sdlCdstatus: extern(SDL_CDStatus) func (cdrom: SDLCd*) -> Int
sdlWmSetCaption: extern(SDL_WM_SetCaption) func (title: const Char*, icon: const Char*)
__BuiltinCosf: extern(__builtin_cosf) func (arg0: Float) -> Float
__BuiltinCosh: extern(__builtin_cosh) func (arg0: Double) -> Double
__BuiltinCosl: extern(__builtin_cosl) func (arg0: LDouble) -> LDouble
_IoPadn: extern(_IO_padn) func (arg0: Struct_IoFile*, arg1: Int, arg2: __SsizeT) -> __SsizeT
flockfile: extern func (__Stream: FILE*)
sdlCreateThread: extern(SDL_CreateThread) func (fn: Func, data: Void*) -> SDLThread*
lrand48: extern func -> Long
sdlGetVideoSurface: extern(SDL_GetVideoSurface) func -> SDLSurface*
nrand48R: extern(nrand48_r) func (__Xsubi: UShort*, __Buffer: StructDrand48Data*, __Result: Long*) -> Int
sdlGetRelativeMouseState: extern(SDL_GetRelativeMouseState) func (x: Int*, y: Int*) -> Uint8
sdlClearError: extern(SDL_ClearError) func
ffs: extern func (__I: Int) -> Int
select: extern func (__Nfds: Int, __Readfds: FdSet*, __Writefds: FdSet*, __Exceptfds: FdSet*, __Timeout: StructTimeval*) -> Int
vscanf: extern func (__Format: const Char*, __Arg: __GnucVaList) -> Int
__TolowerL: extern(__tolower_l) func (__C: Int, __L: __LocaleT) -> Int
__BuiltinIsgreater: extern(__builtin_isgreater) func (...) -> Bool
sdlJoystickName: extern(SDL_JoystickName) func (deviceIndex: Int) -> const Char*
sdlWasInit: extern(SDL_WasInit) func (flags: Uint32) -> Uint32
feof: extern func (__Stream: FILE*) -> Int
sdlGetRGB: extern(SDL_GetRGB) func (pixel: Uint32, fmt: const const SDLPixelFormat*, r: Uint8*, g: Uint8*, b: Uint8*)
jrand48R: extern(jrand48_r) func (__Xsubi: UShort*, __Buffer: StructDrand48Data*, __Result: Long*) -> Int
fgetc: extern func (__Stream: FILE*) -> Int
fgets: extern func (__S: Char*, __N: Int, __Stream: FILE*) -> Char*
__ToupperL: extern(__toupper_l) func (__C: Int, __L: __LocaleT) -> Int
sdlJoystickGetHat: extern(SDL_JoystickGetHat) func (joystick: SDLJoystick*, hat: Int) -> Uint8
rand: extern func -> Int
sdlGetEventFilter: extern(SDL_GetEventFilter) func -> SDLEventFilter
memrchr: extern func (__S: Void*, __C: Int, __N: SizeT) -> Void*
sdlFillRect: extern(SDL_FillRect) func (dst: SDLSurface*, dstrect: SDLRect*, color: Uint32) -> Int
seed48: extern func (__Seed16v: UShort*) -> UShort*
mempcpy: extern func (__Dest: Void*, __Src: const Void*, __N: SizeT) -> Void*
sdlSetModState: extern(SDL_SetModState) func (modstate: Int)
isgraph: extern func (arg0: Int) -> Int
__BuiltinSinf: extern(__builtin_sinf) func (arg0: Float) -> Float
__BuiltinSinh: extern(__builtin_sinh) func (arg0: Double) -> Double
__BuiltinSinl: extern(__builtin_sinl) func (arg0: LDouble) -> LDouble
sdlDisplayFormat: extern(SDL_DisplayFormat) func (surface: SDLSurface*) -> SDLSurface*
__BuiltinCsin: extern(__builtin_csin) func (arg0: Double) -> Double
sdlThreadID: extern(SDL_ThreadID) func -> Uint32
lldiv: extern func (__Numer: LLong, __Denom: LLong) -> LldivT
_IoVfscanf: extern(_IO_vfscanf) func (arg0: Struct_IoFile*, arg1: const Char*, arg2: __GnucVaList, arg3: Int*) -> Int
_IoFtrylockfile: extern(_IO_ftrylockfile) func (arg0: Struct_IoFile*) -> Int
strcollL: extern(strcoll_l) func (__S1: const Char*, __S2: const Char*, __L: __LocaleT) -> Int
abs: extern func (__X: Int) -> Int
sdlJoystickOpened: extern(SDL_JoystickOpened) func (deviceIndex: Int) -> Int
sdlSetGammaRamp: extern(SDL_SetGammaRamp) func (red: const Uint16*, green: const Uint16*, blue: const Uint16*) -> Int
sdlLockSurface: extern(SDL_LockSurface) func (surface: SDLSurface*) -> Int

