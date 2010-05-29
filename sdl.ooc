include SDL

StructSDLVersion_: cover from struct SDL_version {
    major: extern UInt8
    minor: extern UInt8
    patch: extern UInt8
}

StructSDLAudioCVT: cover from struct SDL_AudioCVT {
    needed: extern Int
    srcFormat: extern(src_format) UInt16
    dstFormat: extern(dst_format) UInt16
    rateIncr: extern(rate_incr) Double
    buf: extern UInt8*
    len: extern Int
    lenCvt: extern(len_cvt) Int
    lenMult: extern(len_mult) Int
    lenRatio: extern(len_ratio) Double
    filters: extern Func*
    filterIndex: extern(filter_index) Int
}

StructSDLJoyHatEvent: cover from struct SDL_JoyHatEvent {
    type: extern UInt8
    which: extern UInt8
    hat: extern UInt8
    value: extern UInt8
}

StructSDLColor: cover from struct SDL_Color {
    r: extern UInt8
    g: extern UInt8
    b: extern UInt8
    unused: extern UInt8
}

StructSDLKeysym: cover from struct SDL_keysym {
    scancode: extern UInt8
    sym: extern Int
    mod: extern Int
    unicode: extern UInt16
}

StructSDLJoyButtonEvent: cover from struct SDL_JoyButtonEvent {
    type: extern UInt8
    which: extern UInt8
    button: extern UInt8
    state: extern UInt8
}

StructSDLQuitEvent: cover from struct SDL_QuitEvent {
    type: extern UInt8
}

StructSDLOverlay: cover from struct SDL_Overlay {
    format: extern UInt32
    w: extern Int
    h: extern Int
    planes: extern Int
    pitches: extern UInt16*
    pixels: extern UInt8**
    hwfuncs: extern Pointer
    hwdata: extern Pointer
    hwOverlay: extern(hw_overlay) UInt32
    unusedBits: extern(UnusedBits) UInt32
}

StructSDLMouseMotionEvent: cover from struct SDL_MouseMotionEvent {
    type: extern UInt8
    which: extern UInt8
    state: extern UInt8
    x: extern UInt16
    y: extern UInt16
    xrel: extern Int16
    yrel: extern Int16
}

StructSDLJoyBallEvent: cover from struct SDL_JoyBallEvent {
    type: extern UInt8
    which: extern UInt8
    ball: extern UInt8
    xrel: extern Int16
    yrel: extern Int16
}

StructSDLRwops: cover from struct SDL_RWops {
    seek: extern Func
    read: extern Func
    write: extern Func
    close: extern Func
    type: extern UInt32
}

StructSDLActiveEvent: cover from struct SDL_ActiveEvent {
    type: extern UInt8
    gain: extern UInt8
    state: extern UInt8
}

StructSDLExposeEvent: cover from struct SDL_ExposeEvent {
    type: extern UInt8
}

StructSDLCdtrack: cover from struct SDL_CDtrack {
    id: extern UInt8
    type: extern UInt8
    unused: extern UInt16
    length: extern UInt32
    offset: extern UInt32
}

StructSDLPalette: cover from struct SDL_Palette {
    ncolors: extern Int
    colors: extern SDLColor*
}

StructSDLCd: cover from struct SDL_CD {
    id: extern Int
    status: extern Int
    numtracks: extern Int
    curTrack: extern(cur_track) Int
    curFrame: extern(cur_frame) Int
    track: extern SDLCdtrack*
}

StructSDLMouseButtonEvent: cover from struct SDL_MouseButtonEvent {
    type: extern UInt8
    which: extern UInt8
    button: extern UInt8
    state: extern UInt8
    x: extern UInt16
    y: extern UInt16
}

StructSDLSysWMEvent: cover from struct SDL_SysWMEvent {
    type: extern UInt8
    msg: extern SDLSysWMmsg*
}

StructSDLAudioSpec: cover from struct SDL_AudioSpec {
    freq: extern Int
    format: extern UInt16
    channels: extern UInt8
    silence: extern UInt8
    samples: extern UInt16
    padding: extern UInt16
    size: extern UInt32
    callback: extern Func
    userdata: extern Void*
}

StructSDLResizeEvent: cover from struct SDL_ResizeEvent {
    type: extern UInt8
    w: extern Int
    h: extern Int
}

StructSDLJoyAxisEvent: cover from struct SDL_JoyAxisEvent {
    type: extern UInt8
    which: extern UInt8
    axis: extern UInt8
    value: extern Int16
}

UnionSDLEvent: cover from SDL_Event {
    type: extern UInt8
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
    x: extern Int16
    y: extern Int16
    w: extern UInt16
    h: extern UInt16
}

StructSDLCursor: cover from struct SDL_Cursor {
    area: extern SDLRect
    hotX: extern(hot_x) Int16
    hotY: extern(hot_y) Int16
    data: extern UInt8*
    mask: extern UInt8*
    save: extern UInt8**
    wmCursor: extern(wm_cursor) WMcursor*
}

StructSDLSurface: cover from struct SDL_Surface {
    flags: extern UInt32
    format: extern SDLPixelFormat*
    w: extern Int
    h: extern Int
    pitch: extern UInt16
    pixels: extern Void*
    offset: extern Int
    hwdata: extern Pointer
    clipRect: extern(clip_rect) SDLRect
    unused1: extern UInt32
    locked: extern UInt32
    map: extern Pointer
    formatVersion_: extern(format_version) UInt
    refcount: extern Int
}

StructSDLUserEvent: cover from struct SDL_UserEvent {
    type: extern UInt8
    code: extern Int
    data1: extern Void*
    data2: extern Void*
}

StructSDLPixelFormat: cover from struct SDL_PixelFormat {
    palette: extern SDLPalette*
    bitsPerPixel: extern(BitsPerPixel) UInt8
    bytesPerPixel: extern(BytesPerPixel) UInt8
    rloss: extern(Rloss) UInt8
    gloss: extern(Gloss) UInt8
    bloss: extern(Bloss) UInt8
    aloss: extern(Aloss) UInt8
    rshift: extern(Rshift) UInt8
    gshift: extern(Gshift) UInt8
    bshift: extern(Bshift) UInt8
    ashift: extern(Ashift) UInt8
    rmask: extern(Rmask) UInt32
    gmask: extern(Gmask) UInt32
    bmask: extern(Bmask) UInt32
    amask: extern(Amask) UInt32
    colorkey: extern UInt32
    alpha: extern UInt8
}

StructSDLKeyboardEvent: cover from struct SDL_KeyboardEvent {
    type: extern UInt8
    which: extern UInt8
    state: extern UInt8
    keysym: extern SDLKeysym
}

StructSDLVideoInfo: cover from struct SDL_VideoInfo {
    hwAvailable: extern(hw_available) UInt32
    wmAvailable: extern(wm_available) UInt32
    unusedBits1: extern(UnusedBits1) UInt32
    unusedBits2: extern(UnusedBits2) UInt32
    blitHw: extern(blit_hw) UInt32
    blitHwCc: extern(blit_hw_CC) UInt32
    blitHwA: extern(blit_hw_A) UInt32
    blitSw: extern(blit_sw) UInt32
    blitSwCc: extern(blit_sw_CC) UInt32
    blitSwA: extern(blit_sw_A) UInt32
    blitFill: extern(blit_fill) UInt32
    unusedBits3: extern(UnusedBits3) UInt32
    videoMem: extern(video_mem) UInt32
    vfmt: extern SDLPixelFormat*
    currentW: extern(current_w) Int
    currentH: extern(current_h) Int
}

EnumSDLAudiostatus: enum {
    stopped = 0
    playing = 1
    paused = 2
}
EnumSDLBool_: enum {
    false_ = 0
    true_ = 1
}
EnumSDLGlattr: enum {
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
EnumCDstatus: enum {
    trayempty = 0
    stopped = 1
    playing = 2
    paused = 3
    error = -1
}
EnumSDLMod: enum {
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
EnumSDLErrorcode: enum {
    enomem = 0
    efread = 1
    efwrite = 2
    efseek = 3
    unsupported = 4
    lasterror = 5
}
EnumSDLKey: enum {
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
EnumSDLEventaction: enum {
    addevent = 0
    peekevent = 1
    getevent = 2
}
EnumSDLGrabMode: enum {
    query = -1
    off = 0
    on = 1
    fullscreen = 2
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
EnumSDLEventType: enum {
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

EnumSDLEventMask: enum {
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
    allevents = 0xFFFFFFFF
}

EnumSDLInitFlags: enum {
    initTimer = 0x00000001
    initAudio = 0x00000010
    initVideo = 0x00000020
    initCDROM = 0x00000100
    initJoystick = 0x00000200
    initNoParachute = 0x00100001
    initEventThread = 0x01000001
    initEverything = 0x0000FFFF
}

EnumSDLApplicationStates: enum {
    mouseFocus = 0x01
    inputFocus = 0x02
    active = 0x04
}

EnumSDLCDROMTrackTypes: enum {
    audioTrack = 0x00
    dataTrack = 0x04
}

EnumSDLEndianness: enum {
    lilEndian = 1234
    bigEndian = 4321
}

EnumSDLEventState: enum {
    query = -1
    ignore = 0
    disable = 0
    enable = 1
}

EnumSDLHatPosition: enum {
    centered = 0x00
    up = 0x01
    right = 0x02
    down = 0x04
    left = 0x08
    rightUp = 0x03
    rightDown = 0x06
    leftUp = 0x09
    leftDown = 0x0C
}

EnumSDLMouseButtonMask: enum {
    left = 1
    middle = 2
    right = 4
    wheelup = 8
    wheeldown = 16
    x1 = 32
    x2 = 64
}

EnumSDLSurfaceFlags: enum {
    swSurface = 0x00000000
    hwSurface = 0x00000001
    asyncBlit = 0x00000004
    // the following can only be used with sdlSetVideoMode
    anyFormat = 0x10000000
    hwPalette = 0x20000000
    doubleBuf = 0x40000000
    fullscreen = 0x80000000
    opengl = 0x00000002
    openglBlit = 0x0000000A
    resizable = 0x00000010
    noframe = 0x00000020
}

EnumSDLOverlayFormats: enum {
    yv12Overlay = 0x32315659
    iyuvOverlay = 0x56555949
    yuy2Overlay = 0x32595559
    uyvyOverlay = 0x59565955
    yvyuOverlay = 0x55595659
}

EnumSDLPaletteFlags: enum {
    logPal = 0x01
    physPal = 0x02
}

SDLVersion_: cover from StructSDLVersion_

SDLCond: cover

SDLJoystick: cover

SDLAudioCVT: cover from StructSDLAudioCVT

SDLNewTimerCallback: cover from Func

SDLJoyHatEvent: cover from StructSDLJoyHatEvent

SDLColor: cover from StructSDLColor

SDLKeysym: cover from StructSDLKeysym

SDLJoyButtonEvent: cover from StructSDLJoyButtonEvent

WMcursor: cover

SDLQuitEvent: cover from StructSDLQuitEvent

SDLOverlay: cover from StructSDLOverlay

SDLMouseMotionEvent: cover from StructSDLMouseMotionEvent

SDLJoyBallEvent: cover from StructSDLJoyBallEvent

SDLThread: cover

SDLRwops: cover from StructSDLRwops

SDLActiveEvent: cover from StructSDLActiveEvent

SDLExposeEvent: cover from StructSDLExposeEvent

SDLTimerCallback: cover from Func

SDLMutex: cover

SDLEventFilter: cover from Func

SDLCdtrack: cover from StructSDLCdtrack

SDLPalette: cover from StructSDLPalette

SDLCd: cover from StructSDLCd

SDLMouseButtonEvent: cover from StructSDLMouseButtonEvent

SDLSysWMEvent: cover from StructSDLSysWMEvent

SDLAudioSpec: cover from StructSDLAudioSpec

SDLResizeEvent: cover from StructSDLResizeEvent

SDLSem: cover

SDLJoyAxisEvent: cover from StructSDLJoyAxisEvent

SDLBlit: cover from Func

SDLEvent: cover from UnionSDLEvent

SDLRect: cover from StructSDLRect

SDLTimerID: cover from SDL_TimerID

SDLCursor: cover from StructSDLCursor

SDLSurface: cover from StructSDLSurface

SDLUserEvent: cover from StructSDLUserEvent

SDLPixelFormat: cover from StructSDLPixelFormat

SDLKeyboardEvent: cover from StructSDLKeyboardEvent

SDLSysWMmsg: cover

SDLVideoInfo: cover from StructSDLVideoInfo

StructSDLCond: cover

Struct_SdlJoystick: cover

StructWMcursor: cover

StructSDLThread: cover

StructSDLMutex: cover

StructSDLSemaphore: cover

StructSDLSysWMmsg: cover

IconvT: cover from Void* extends Pointer

sdlLinkedVersion_: extern(SDL_Linked_Version) func -> const SDLVersion_*
sdlGetAppState: extern(SDL_GetAppState) func -> UInt8
sdlSwap16: extern(SDL_Swap16) func (x: UInt16) -> UInt16
sdlDelay: extern(SDL_Delay) func (ms: UInt32)
sdlSwap32: extern(SDL_Swap32) func (x: UInt32) -> UInt32
sdlSwap64: extern(SDL_Swap64) func (x: UInt64) -> UInt64
sdlStrupr: extern(SDL_strupr) func (string: Char*) -> Char*
sdlCreateRGBSurface: extern(SDL_CreateRGBSurface) func (flags: UInt32, width: Int, height: Int, depth: Int, rmask: UInt32, gmask: UInt32, bmask: UInt32, amask: UInt32) -> SDLSurface*
sdlAllocRW: extern(SDL_AllocRW) func -> SDLRwops*
sdlGetMouseState: extern(SDL_GetMouseState) func (x: Int*, y: Int*) -> UInt8
sdlSemWait: extern(SDL_SemWait) func (sem: SDLSem*) -> Int
sdlConvertAudio: extern(SDL_ConvertAudio) func (cvt: SDLAudioCVT*) -> Int
sdlJoystickClose: extern(SDL_JoystickClose) func (joystick: SDLJoystick*)
sdlGlGetProcAddress: extern(SDL_GL_GetProcAddress) func (proc: const Char*) -> Void*
sdlGetTicks: extern(SDL_GetTicks) func -> UInt32
sdlPumpEvents: extern(SDL_PumpEvents) func
sdlGlGetAttribute: extern(SDL_GL_GetAttribute) func (attr: Int, value: Int*) -> Int
sdlIconv: extern(SDL_iconv) func (cd: IconvT, inbuf: const Char**, inbytesleft: SizeT*, outbuf: Char**, outbytesleft: SizeT*) -> SizeT
sdlGetKeyName: extern(SDL_GetKeyName) func (key: Int) -> Char*
sdlSetVideoMode: extern(SDL_SetVideoMode) func (width: Int, height: Int, bpp: Int, flags: UInt32) -> SDLSurface*
sdlGetVideoInfo: extern(SDL_GetVideoInfo) func -> const SDLVideoInfo*
sdlDestroySemaphore: extern(SDL_DestroySemaphore) func (sem: SDLSem*)
sdlStrrev: extern(SDL_strrev) func (string: Char*) -> Char*
sdlGetThreadID: extern(SDL_GetThreadID) func (thread: SDLThread*) -> UInt32
sdlJoystickNumBalls: extern(SDL_JoystickNumBalls) func (joystick: SDLJoystick*) -> Int
sdlLoadObject: extern(SDL_LoadObject) func (sofile: const Char*) -> Void*
sdlVideoDriverName: extern(SDL_VideoDriverName) func (namebuf: Char*, maxlen: Int) -> Char*
sdlFreeYUVOverlay: extern(SDL_FreeYUVOverlay) func (overlay: SDLOverlay*)
sdlMutexV: extern(SDL_mutexV) func (mutex: SDLMutex*) -> Int
sdlHasSSE: extern(SDL_HasSSE) func -> Int
sdlLtoa: extern(SDL_ltoa) func (value: Long, string: Char*, radix: Int) -> Char*
sdlLowerBlit: extern(SDL_LowerBlit) func (src: SDLSurface*, srcrect: SDLRect*, dst: SDLSurface*, dstrect: SDLRect*) -> Int
sdlCreateYUVOverlay: extern(SDL_CreateYUVOverlay) func (width: Int, height: Int, format: UInt32, display: SDLSurface*) -> SDLOverlay*
sdlVideoInit: extern(SDL_VideoInit) func (driverName: const Char*, flags: UInt32) -> Int
sdlOpenAudio: extern(SDL_OpenAudio) func (desired: SDLAudioSpec*, obtained: SDLAudioSpec*) -> Int
sdlReadLE32: extern(SDL_ReadLE32) func (src: SDLRwops*) -> UInt32
sdlCreateCursor: extern(SDL_CreateCursor) func (data: UInt8*, mask: UInt8*, w: Int, h: Int, hotX: Int, hotY: Int) -> SDLCursor*
sdlCdplay: extern(SDL_CDPlay) func (cdrom: SDLCd*, start: Int, length: Int) -> Int
sdlCondWait: extern(SDL_CondWait) func (cond: SDLCond*, mut: SDLMutex*) -> Int
sdlVideoModeOK: extern(SDL_VideoModeOK) func (width: Int, height: Int, bpp: Int, flags: UInt32) -> Int
sdlMixAudio: extern(SDL_MixAudio) func (dst: UInt8*, src: const UInt8*, len: UInt32, volume: Int)
sdlJoystickGetButton: extern(SDL_JoystickGetButton) func (joystick: SDLJoystick*, button: Int) -> UInt8
sdlReadLE64: extern(SDL_ReadLE64) func (src: SDLRwops*) -> UInt64
sdlUnlockAudio: extern(SDL_UnlockAudio) func
sdlJoystickIndex: extern(SDL_JoystickIndex) func (joystick: SDLJoystick*) -> Int
sdlGetKeyRepeat: extern(SDL_GetKeyRepeat) func (delay: Int*, interval: Int*)
sdlUnlockSurface: extern(SDL_UnlockSurface) func (surface: SDLSurface*)
sdlShowCursor: extern(SDL_ShowCursor) func (toggle: Int) -> Int
sdlRwfromFP: extern(SDL_RWFromFP) func (fp: FILE*, autoclose: Int) -> SDLRwops*
sdlMapRGB: extern(SDL_MapRGB) func (format: const const SDLPixelFormat*, r: const UInt8, g: const UInt8, b: const UInt8) -> UInt32
sdlCondSignal: extern(SDL_CondSignal) func (cond: SDLCond*) -> Int
sdlJoystickGetBall: extern(SDL_JoystickGetBall) func (joystick: SDLJoystick*, ball: Int, dx: Int*, dy: Int*) -> Int
sdlHas3DNow: extern(SDL_Has3DNow) func -> Int
sdlAudioQuit: extern(SDL_AudioQuit) func
sdlWmToggleFullScreen: extern(SDL_WM_ToggleFullScreen) func (surface: SDLSurface*) -> Int
sdlBuildAudioCVT: extern(SDL_BuildAudioCVT) func (cvt: SDLAudioCVT*, srcFormat: UInt16, srcChannels: UInt8, srcRate: Int, dstFormat: UInt16, dstChannels: UInt8, dstRate: Int) -> Int
sdlSetError: extern(SDL_SetError) func (fmt: const Char*, ...)
sdlCreateMutex: extern(SDL_CreateMutex) func -> SDLMutex*
sdlVideoQuit: extern(SDL_VideoQuit) func
sdlGlSwapBuffers: extern(SDL_GL_SwapBuffers) func
sdlEnableUNICODE: extern(SDL_EnableUNICODE) func (enable: Int) -> Int
sdlSaveBMPRw: extern(SDL_SaveBMP_RW) func (surface: SDLSurface*, dst: SDLRwops*, freedst: Int) -> Int
sdlDestroyCond: extern(SDL_DestroyCond) func (cond: SDLCond*)
sdlHasMMX: extern(SDL_HasMMX) func -> Int
sdlWriteLE16: extern(SDL_WriteLE16) func (dst: SDLRwops*, value: UInt16) -> Int
sdlWriteLE32: extern(SDL_WriteLE32) func (dst: SDLRwops*, value: UInt32) -> Int
sdlWriteLE64: extern(SDL_WriteLE64) func (dst: SDLRwops*, value: UInt64) -> Int
sdlSoftStretch: extern(SDL_SoftStretch) func (src: SDLSurface*, srcrect: SDLRect*, dst: SDLSurface*, dstrect: SDLRect*) -> Int
sdlJoystickOpen: extern(SDL_JoystickOpen) func (deviceIndex: Int) -> SDLJoystick*
sdlUlltoa: extern(SDL_ulltoa) func (value: UInt64, string: Char*, radix: Int) -> Char*
sdlMapRGBA: extern(SDL_MapRGBA) func (format: const const SDLPixelFormat*, r: const UInt8, g: const UInt8, b: const UInt8, a: const UInt8) -> UInt32
sdlCreateRGBSurfaceFrom: extern(SDL_CreateRGBSurfaceFrom) func (pixels: Void*, width: Int, height: Int, depth: Int, pitch: Int, rmask: UInt32, gmask: UInt32, bmask: UInt32, amask: UInt32) -> SDLSurface*
sdlUpdateRect: extern(SDL_UpdateRect) func (screen: SDLSurface*, x: Int32, y: Int32, w: UInt32, h: UInt32)
sdlFlip: extern(SDL_Flip) func (screen: SDLSurface*) -> Int
sdlLoadBMPRw: extern(SDL_LoadBMP_RW) func (src: SDLRwops*, freesrc: Int) -> SDLSurface*
sdlRwfromMem: extern(SDL_RWFromMem) func (mem: Void*, size: Int) -> SDLRwops*
sdlInit: extern(SDL_Init) func (flags: EnumSDLInitFlags) -> Int
sdlHasSSE2: extern(SDL_HasSSE2) func -> Int
sdlSemPost: extern(SDL_SemPost) func (sem: SDLSem*) -> Int
sdlWaitThread: extern(SDL_WaitThread) func (thread: SDLThread*, status: Int*)
sdlJoystickNumAxes: extern(SDL_JoystickNumAxes) func (joystick: SDLJoystick*) -> Int
sdlLoadFunction: extern(SDL_LoadFunction) func (handle: Void*, name: const Char*) -> Void*
sdlLoadWAVRw: extern(SDL_LoadWAV_RW) func (src: SDLRwops*, freesrc: Int, spec: SDLAudioSpec*, audioBuf: UInt8**, audioLen: UInt32*) -> SDLAudioSpec*
sdlJoystickEventState: extern(SDL_JoystickEventState) func (state: Int) -> Int
sdlGetError: extern(SDL_GetError) func -> Char*
sdlConvertSurface: extern(SDL_ConvertSurface) func (src: SDLSurface*, fmt: SDLPixelFormat*, flags: UInt32) -> SDLSurface*
sdlSetAlpha: extern(SDL_SetAlpha) func (surface: SDLSurface*, flag: UInt32, alpha: UInt8) -> Int
sdlCreateSemaphore: extern(SDL_CreateSemaphore) func (initialValue: UInt32) -> SDLSem*
sdlCdclose: extern(SDL_CDClose) func (cdrom: SDLCd*)
sdlQuitSubSystem: extern(SDL_QuitSubSystem) func (flags: EnumSDLInitFlags)
sdlStrlcat: extern(SDL_strlcat) func (dst: Char*, src: const Char*, maxlen: SizeT) -> SizeT
sdlGetGammaRamp: extern(SDL_GetGammaRamp) func (red: UInt16*, green: UInt16*, blue: UInt16*) -> Int
sdlHasMMXExt: extern(SDL_HasMMXExt) func -> Int
sdlHasRDTSC: extern(SDL_HasRDTSC) func -> Int
sdlGetAudioStatus: extern(SDL_GetAudioStatus) func -> Int
sdlSemTryWait: extern(SDL_SemTryWait) func (sem: SDLSem*) -> Int
sdlCdname: extern(SDL_CDName) func (drive: Int) -> const Char*
sdlCdstop: extern(SDL_CDStop) func (cdrom: SDLCd*) -> Int
sdlWarpMouse: extern(SDL_WarpMouse) func (x: UInt16, y: UInt16)
sdlWmIconifyWindow: extern(SDL_WM_IconifyWindow) func -> Int
sdlGlUnlock: extern(SDL_GL_Unlock) func
sdlAudioInit: extern(SDL_AudioInit) func (driverName: const Char*) -> Int
sdlSetTimer: extern(SDL_SetTimer) func (interval: UInt32, callback: SDLTimerCallback) -> Int
sdlRemoveTimer: extern(SDL_RemoveTimer) func (t: SDLTimerID) -> Int
sdlJoystickNumButtons: extern(SDL_JoystickNumButtons) func (joystick: SDLJoystick*) -> Int
sdlSetClipRect: extern(SDL_SetClipRect) func (surface: SDLSurface*, rect: const SDLRect*) -> Int
sdlPauseAudio: extern(SDL_PauseAudio) func (pauseOn: Int)
sdlCdresume: extern(SDL_CDResume) func (cdrom: SDLCd*) -> Int
sdlUpperBlit: extern(SDL_UpperBlit) func (src: SDLSurface*, srcrect: SDLRect*, dst: SDLSurface*, dstrect: SDLRect*) -> Int
sdlStrlwr: extern(SDL_strlwr) func (string: Char*) -> Char*
sdlReadBE16: extern(SDL_ReadBE16) func (src: SDLRwops*) -> UInt16
sdlCreateCond: extern(SDL_CreateCond) func -> SDLCond*
sdlPeepEvents: extern(SDL_PeepEvents) func (events: SDLEvent*, numevents: Int, action: Int, mask: UInt32) -> Int
sdlWmGetCaption: extern(SDL_WM_GetCaption) func (title: Char**, icon: Char**)
sdlGlUpdateRects: extern(SDL_GL_UpdateRects) func (numrects: Int, rects: SDLRect*)
sdlKillThread: extern(SDL_KillThread) func (thread: SDLThread*)
sdlGetRGBA: extern(SDL_GetRGBA) func (pixel: UInt32, fmt: const const SDLPixelFormat*, r: UInt8*, g: UInt8*, b: UInt8*, a: UInt8*)
sdlUnlockYUVOverlay: extern(SDL_UnlockYUVOverlay) func (overlay: SDLOverlay*)
sdlDisplayYUVOverlay: extern(SDL_DisplayYUVOverlay) func (overlay: SDLOverlay*, dstrect: SDLRect*) -> Int
sdlInitSubSystem: extern(SDL_InitSubSystem) func (flags: EnumSDLInitFlags) -> Int
sdlCdopen: extern(SDL_CDOpen) func (drive: Int) -> SDLCd*
sdlSetCursor: extern(SDL_SetCursor) func (cursor: SDLCursor*)
sdlFreeWAV: extern(SDL_FreeWAV) func (audioBuf: UInt8*)
sdlSemWaitTimeout: extern(SDL_SemWaitTimeout) func (sem: SDLSem*, ms: UInt32) -> Int
sdlReadBE64: extern(SDL_ReadBE64) func (src: SDLRwops*) -> UInt64
sdlListModes: extern(SDL_ListModes) func (format: SDLPixelFormat*, flags: UInt32) -> SDLRect**
sdlFreeRW: extern(SDL_FreeRW) func (area: SDLRwops*)
sdlIconvString: extern(SDL_iconv_string) func (tocode: const Char*, fromcode: const Char*, inbuf: const Char*, inbytesleft: SizeT) -> Char*
sdlSemValue: extern(SDL_SemValue) func (sem: SDLSem*) -> UInt32
sdlPushEvent: extern(SDL_PushEvent) func (event: SDLEvent*) -> Int
sdlGlLock: extern(SDL_GL_Lock) func
sdlSetGamma: extern(SDL_SetGamma) func (red: Float, green: Float, blue: Float) -> Int
sdlUnloadObject: extern(SDL_UnloadObject) func (handle: Void*)
sdlEventState: extern(SDL_EventState) func (type: UInt8, state: Int) -> UInt8
sdlGetCursor: extern(SDL_GetCursor) func -> SDLCursor*
sdlJoystickUpdate: extern(SDL_JoystickUpdate) func
sdlSetEventFilter: extern(SDL_SetEventFilter) func (filter: SDLEventFilter)
sdlSetColorKey: extern(SDL_SetColorKey) func (surface: SDLSurface*, flag: UInt32, key: UInt32) -> Int
sdlJoystickNumHats: extern(SDL_JoystickNumHats) func (joystick: SDLJoystick*) -> Int
sdlPollEvent: extern(SDL_PollEvent) func (event: SDLEvent*) -> Int
sdlMutexP: extern(SDL_mutexP) func (mutex: SDLMutex*) -> Int
sdlHasAltiVec: extern(SDL_HasAltiVec) func -> Int
sdlGetModState: extern(SDL_GetModState) func -> Int
sdlUltoa: extern(SDL_ultoa) func (value: ULong, string: Char*, radix: Int) -> Char*
sdlWriteBE16: extern(SDL_WriteBE16) func (dst: SDLRwops*, value: UInt16) -> Int
sdlGlLoadLibrary: extern(SDL_GL_LoadLibrary) func (path: const Char*) -> Int
sdlHas3DNowExt: extern(SDL_Has3DNowExt) func -> Int
sdlWriteBE32: extern(SDL_WriteBE32) func (dst: SDLRwops*, value: UInt32) -> Int
sdlLltoa: extern(SDL_lltoa) func (value: Int64, string: Char*, radix: Int) -> Char*
sdlWriteBE64: extern(SDL_WriteBE64) func (dst: SDLRwops*, value: UInt64) -> Int
sdlCdpause: extern(SDL_CDPause) func (cdrom: SDLCd*) -> Int
sdlCloseAudio: extern(SDL_CloseAudio) func
sdlDisplayFormatAlpha: extern(SDL_DisplayFormatAlpha) func (surface: SDLSurface*) -> SDLSurface*
sdlCdplayTracks: extern(SDL_CDPlayTracks) func (cdrom: SDLCd*, startTrack: Int, startFrame: Int, ntracks: Int, nframes: Int) -> Int
sdlEnableKeyRepeat: extern(SDL_EnableKeyRepeat) func (delay: Int, interval: Int) -> Int
sdlQuit: extern(SDL_Quit) func
sdlWaitEvent: extern(SDL_WaitEvent) func (event: SDLEvent*) -> Int
sdlGetKeyState: extern(SDL_GetKeyState) func (numkeys: Int*) -> UInt8*
sdlRwfromFile: extern(SDL_RWFromFile) func (file: const Char*, mode: const Char*) -> SDLRwops*
sdlCdnumDrives: extern(SDL_CDNumDrives) func -> Int
sdlAddTimer: extern(SDL_AddTimer) func (interval: UInt32, callback: SDLNewTimerCallback, param: Void*) -> SDLTimerID
sdlCdeject: extern(SDL_CDEject) func (cdrom: SDLCd*) -> Int
sdlFreeSurface: extern(SDL_FreeSurface) func (surface: SDLSurface*)
sdlReadBE32: extern(SDL_ReadBE32) func (src: SDLRwops*) -> UInt32
sdlFreeCursor: extern(SDL_FreeCursor) func (cursor: SDLCursor*)
sdlLockYUVOverlay: extern(SDL_LockYUVOverlay) func (overlay: SDLOverlay*) -> Int
sdlJoystickGetAxis: extern(SDL_JoystickGetAxis) func (joystick: SDLJoystick*, axis: Int) -> Int16
sdlGlSetAttribute: extern(SDL_GL_SetAttribute) func (attr: Int, value: Int) -> Int
sdlCondBroadcast: extern(SDL_CondBroadcast) func (cond: SDLCond*) -> Int
sdlSetColors: extern(SDL_SetColors) func (surface: SDLSurface*, colors: SDLColor*, firstcolor: Int, ncolors: Int) -> Int
sdlCondWaitTimeout: extern(SDL_CondWaitTimeout) func (cond: SDLCond*, mutex: SDLMutex*, ms: UInt32) -> Int
sdlDestroyMutex: extern(SDL_DestroyMutex) func (mutex: SDLMutex*)
sdlSetPalette: extern(SDL_SetPalette) func (surface: SDLSurface*, flags: Int, colors: SDLColor*, firstcolor: Int, ncolors: Int) -> Int
sdlRwfromConstMem: extern(SDL_RWFromConstMem) func (mem: const Void*, size: Int) -> SDLRwops*
sdlReadLE16: extern(SDL_ReadLE16) func (src: SDLRwops*) -> UInt16
sdlError: extern(SDL_Error) func (code: Int)
sdlWmSetIcon: extern(SDL_WM_SetIcon) func (icon: SDLSurface*, mask: UInt8*)
sdlUpdateRects: extern(SDL_UpdateRects) func (screen: SDLSurface*, numrects: Int, rects: SDLRect*)
sdlNumJoysticks: extern(SDL_NumJoysticks) func -> Int
sdlLockAudio: extern(SDL_LockAudio) func
sdlWmGrabInput: extern(SDL_WM_GrabInput) func (mode: Int) -> Int
sdlAudioDriverName: extern(SDL_AudioDriverName) func (namebuf: Char*, maxlen: Int) -> Char*
sdlStrlcpy: extern(SDL_strlcpy) func (dst: Char*, src: const Char*, maxlen: SizeT) -> SizeT
sdlGetClipRect: extern(SDL_GetClipRect) func (surface: SDLSurface*, rect: SDLRect*)
sdlCdstatus: extern(SDL_CDStatus) func (cdrom: SDLCd*) -> Int
sdlWmSetCaption: extern(SDL_WM_SetCaption) func (title: const Char*, icon: const Char*)
sdlCreateThread: extern(SDL_CreateThread) func (fn: Func, data: Void*) -> SDLThread*
sdlGetVideoSurface: extern(SDL_GetVideoSurface) func -> SDLSurface*
sdlGetRelativeMouseState: extern(SDL_GetRelativeMouseState) func (x: Int*, y: Int*) -> UInt8
sdlClearError: extern(SDL_ClearError) func
sdlJoystickName: extern(SDL_JoystickName) func (deviceIndex: Int) -> const Char*
sdlWasInit: extern(SDL_WasInit) func (flags: EnumSDLInitFlags) -> UInt32
sdlGetRGB: extern(SDL_GetRGB) func (pixel: UInt32, fmt: const const SDLPixelFormat*, r: UInt8*, g: UInt8*, b: UInt8*)
sdlJoystickGetHat: extern(SDL_JoystickGetHat) func (joystick: SDLJoystick*, hat: Int) -> UInt8
sdlGetEventFilter: extern(SDL_GetEventFilter) func -> SDLEventFilter
sdlFillRect: extern(SDL_FillRect) func (dst: SDLSurface*, dstrect: SDLRect*, color: UInt32) -> Int
sdlSetModState: extern(SDL_SetModState) func (modstate: Int)
sdlDisplayFormat: extern(SDL_DisplayFormat) func (surface: SDLSurface*) -> SDLSurface*
sdlThreadID: extern(SDL_ThreadID) func -> UInt32
sdlJoystickOpened: extern(SDL_JoystickOpened) func (deviceIndex: Int) -> Int
sdlSetGammaRamp: extern(SDL_SetGammaRamp) func (red: const UInt16*, green: const UInt16*, blue: const UInt16*) -> Int
sdlLockSurface: extern(SDL_LockSurface) func (surface: SDLSurface*) -> Int
sdlLoadBMP: extern(SDL_LoadBMP) func(file: String) -> SDLSurface*
sdlSaveBMP: extern(SDL_LoadBMP) func(surface: SDLSurface*, file: String) -> Int
sdlLoadWAV: extern(SDL_LoadWAV) func(file: String, spec: SDLAudioSpec*, audio_buf: UInt8**, audio_len: UInt32*)
