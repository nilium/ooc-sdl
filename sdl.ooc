use sdl
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

SDLAudioStatus: extern(SDL_audiostatus) enum {
    stopped: extern(SDL_AUDIO_STOPPED)
    playing: extern(SDL_AUDIO_PLAYING)
    paused: extern(SDL_AUDIO_PAUSED)
}

SDLGLattr: extern(SDL_GLattr) enum {
    redSize: extern(SDL_GL_REDSIZE)
    greenSize: extern(SDL_GL_GREENSIZE)
    blueSize: extern(SDL_GL_BLUESIZE)
    alphaSize: extern(SDL_GL_ALPHASIZE)
    bufferSize: extern(SDL_GL_BUFFERSIZE)
    doubleBuffer: extern(SDL_GL_DOUBLEBUFFER)
    depthSize: extern(SDL_GL_DEPTHSIZE)
    stencilSize: extern(SDL_GL_STENCILSIZE)
    accumRedSize: extern(SDL_GL_ACCUMREDSIZE)
    accumGreenSize: extern(SDL_GL_ACCUMGREENSIZE)
    accumBlueSize: extern(SDL_GL_ACCUMBLUESIZE)
    accumAlphaSize: extern(SDL_GL_ACCUMALPHASIZE)
    stereo: extern(SDL_GL_STEREO)
    multisamplebuffers: extern(SDL_GL_MULTISAMPLEBUFFERS)
    multisamplesamples: extern(SDL_GL_MULTISAMPLESAMPLES)
    acceleratedVisual: extern(SDL_GL_ACCELERATEDVISUAL)
    swapControl: extern(SDL_GL_SWAPCONTROL)
}

SDLCDStatus: extern(CDstatus) enum {
    trayEmpty: extern(CD_TRAYEMPTY)
    stopped: extern(CD_STOPPED)
    playing: extern(CD_PLAYING)
    paused: extern(CD_PAUSED)
    error: extern(CD_ERROR)
}

SDLMod: extern enum {
    none: extern(KMOD_NONE)
    lshift: extern(KMOD_LSHIFT)
    rshift: extern(KMOD_RSHIFT)
    lctrl: extern(KMOD_LCTRL)
    rctrl: extern(KMOD_RCTRL)
    lalt: extern(KMOD_LALT)
    ralt: extern(KMOD_RALT)
    lmeta: extern(KMOD_LMETA)
    rmeta: extern(KMOD_RMETA)
    num: extern(KMOD_NUM)
    caps: extern(KMOD_CAPS)
    mode: extern(KMOD_MODE)
    reserved: extern(KMOD_RESERVED)
    
    ctrl: extern(KMOD_CTRL)
    shift: extern(KMOD_SHIFT)
    alt: extern(KMOD_ALT)
    meta: extern(KMOD_META)
}

SDLErrorCode: enum {
    noMem: extern(SDL_ENOMEM)
    fileRead: extern(SDL_EFREAD)
    fileWrite: extern(SDL_EFWRITE)
    fileSeek: extern(SDL_EFSEEK)
    unsupported: extern(SDL_EUNSUPPORTED)
    lastError: extern(SDL_ELASTERROR)
}

SDLKey: extern enum {
    unknown: extern(SDLK_UNKNOWN)
    first: extern(SDLK_FIRST)
    backspace: extern(SDLK_BACKSPACE)
    tab: extern(SDLK_TAB)
    clear: extern(SDLK_CLEAR)
    return_: extern(SDLK_RETURN_)
    pause: extern(SDLK_PAUSE)
    escape: extern(SDLK_ESCAPE)
    space: extern(SDLK_SPACE)
    exclaim: extern(SDLK_EXCLAIM)
    quotedbl: extern(SDLK_QUOTEDBL)
    hash: extern(SDLK_HASH)
    dollar: extern(SDLK_DOLLAR)
    ampersand: extern(SDLK_AMPERSAND)
    quote: extern(SDLK_QUOTE)
    leftparen: extern(SDLK_LEFTPAREN)
    rightparen: extern(SDLK_RIGHTPAREN)
    asterisk: extern(SDLK_ASTERISK)
    plus: extern(SDLK_PLUS)
    comma: extern(SDLK_COMMA)
    minus: extern(SDLK_MINUS)
    period: extern(SDLK_PERIOD)
    slash: extern(SDLK_SLASH)
    _0: extern(SDLK_0)
    _1: extern(SDLK_1)
    _2: extern(SDLK_2)
    _3: extern(SDLK_3)
    _4: extern(SDLK_4)
    _5: extern(SDLK_5)
    _6: extern(SDLK_6)
    _7: extern(SDLK_7)
    _8: extern(SDLK_8)
    _9: extern(SDLK_9)
    colon: extern(SDLK_COLON)
    semicolon: extern(SDLK_SEMICOLON)
    less: extern(SDLK_LESS)
    equals: extern(SDLK_EQUALS)
    greater: extern(SDLK_GREATER)
    question: extern(SDLK_QUESTION)
    at: extern(SDLK_AT)
    leftbracket: extern(SDLK_LEFTBRACKET)
    backslash: extern(SDLK_BACKSLASH)
    rightbracket: extern(SDLK_RIGHTBRACKET)
    caret: extern(SDLK_CARET)
    underscore: extern(SDLK_UNDERSCORE)
    backquote: extern(SDLK_BACKQUOTE)
    a: extern(SDLK_A)
    b: extern(SDLK_B)
    c: extern(SDLK_C)
    d: extern(SDLK_D)
    e: extern(SDLK_E)
    f: extern(SDLK_F)
    g: extern(SDLK_G)
    h: extern(SDLK_H)
    i: extern(SDLK_I)
    j: extern(SDLK_J)
    k: extern(SDLK_K)
    l: extern(SDLK_L)
    m: extern(SDLK_M)
    n: extern(SDLK_N)
    o: extern(SDLK_O)
    p: extern(SDLK_P)
    q: extern(SDLK_Q)
    r: extern(SDLK_R)
    s: extern(SDLK_S)
    t: extern(SDLK_T)
    u: extern(SDLK_U)
    v: extern(SDLK_V)
    w: extern(SDLK_W)
    x: extern(SDLK_X)
    y: extern(SDLK_Y)
    z: extern(SDLK_Z)
    delete: extern(SDLK_DELETE)
    world_0: extern(SDLK_WORLD_0)
    world_1: extern(SDLK_WORLD_1)
    world_2: extern(SDLK_WORLD_2)
    world_3: extern(SDLK_WORLD_3)
    world_4: extern(SDLK_WORLD_4)
    world_5: extern(SDLK_WORLD_5)
    world_6: extern(SDLK_WORLD_6)
    world_7: extern(SDLK_WORLD_7)
    world_8: extern(SDLK_WORLD_8)
    world_9: extern(SDLK_WORLD_9)
    world_10: extern(SDLK_WORLD_10)
    world_11: extern(SDLK_WORLD_11)
    world_12: extern(SDLK_WORLD_12)
    world_13: extern(SDLK_WORLD_13)
    world_14: extern(SDLK_WORLD_14)
    world_15: extern(SDLK_WORLD_15)
    world_16: extern(SDLK_WORLD_16)
    world_17: extern(SDLK_WORLD_17)
    world_18: extern(SDLK_WORLD_18)
    world_19: extern(SDLK_WORLD_19)
    world_20: extern(SDLK_WORLD_20)
    world_21: extern(SDLK_WORLD_21)
    world_22: extern(SDLK_WORLD_22)
    world_23: extern(SDLK_WORLD_23)
    world_24: extern(SDLK_WORLD_24)
    world_25: extern(SDLK_WORLD_25)
    world_26: extern(SDLK_WORLD_26)
    world_27: extern(SDLK_WORLD_27)
    world_28: extern(SDLK_WORLD_28)
    world_29: extern(SDLK_WORLD_29)
    world_30: extern(SDLK_WORLD_30)
    world_31: extern(SDLK_WORLD_31)
    world_32: extern(SDLK_WORLD_32)
    world_33: extern(SDLK_WORLD_33)
    world_34: extern(SDLK_WORLD_34)
    world_35: extern(SDLK_WORLD_35)
    world_36: extern(SDLK_WORLD_36)
    world_37: extern(SDLK_WORLD_37)
    world_38: extern(SDLK_WORLD_38)
    world_39: extern(SDLK_WORLD_39)
    world_40: extern(SDLK_WORLD_40)
    world_41: extern(SDLK_WORLD_41)
    world_42: extern(SDLK_WORLD_42)
    world_43: extern(SDLK_WORLD_43)
    world_44: extern(SDLK_WORLD_44)
    world_45: extern(SDLK_WORLD_45)
    world_46: extern(SDLK_WORLD_46)
    world_47: extern(SDLK_WORLD_47)
    world_48: extern(SDLK_WORLD_48)
    world_49: extern(SDLK_WORLD_49)
    world_50: extern(SDLK_WORLD_50)
    world_51: extern(SDLK_WORLD_51)
    world_52: extern(SDLK_WORLD_52)
    world_53: extern(SDLK_WORLD_53)
    world_54: extern(SDLK_WORLD_54)
    world_55: extern(SDLK_WORLD_55)
    world_56: extern(SDLK_WORLD_56)
    world_57: extern(SDLK_WORLD_57)
    world_58: extern(SDLK_WORLD_58)
    world_59: extern(SDLK_WORLD_59)
    world_60: extern(SDLK_WORLD_60)
    world_61: extern(SDLK_WORLD_61)
    world_62: extern(SDLK_WORLD_62)
    world_63: extern(SDLK_WORLD_63)
    world_64: extern(SDLK_WORLD_64)
    world_65: extern(SDLK_WORLD_65)
    world_66: extern(SDLK_WORLD_66)
    world_67: extern(SDLK_WORLD_67)
    world_68: extern(SDLK_WORLD_68)
    world_69: extern(SDLK_WORLD_69)
    world_70: extern(SDLK_WORLD_70)
    world_71: extern(SDLK_WORLD_71)
    world_72: extern(SDLK_WORLD_72)
    world_73: extern(SDLK_WORLD_73)
    world_74: extern(SDLK_WORLD_74)
    world_75: extern(SDLK_WORLD_75)
    world_76: extern(SDLK_WORLD_76)
    world_77: extern(SDLK_WORLD_77)
    world_78: extern(SDLK_WORLD_78)
    world_79: extern(SDLK_WORLD_79)
    world_80: extern(SDLK_WORLD_80)
    world_81: extern(SDLK_WORLD_81)
    world_82: extern(SDLK_WORLD_82)
    world_83: extern(SDLK_WORLD_83)
    world_84: extern(SDLK_WORLD_84)
    world_85: extern(SDLK_WORLD_85)
    world_86: extern(SDLK_WORLD_86)
    world_87: extern(SDLK_WORLD_87)
    world_88: extern(SDLK_WORLD_88)
    world_89: extern(SDLK_WORLD_89)
    world_90: extern(SDLK_WORLD_90)
    world_91: extern(SDLK_WORLD_91)
    world_92: extern(SDLK_WORLD_92)
    world_93: extern(SDLK_WORLD_93)
    world_94: extern(SDLK_WORLD_94)
    world_95: extern(SDLK_WORLD_95)
    kp0: extern(SDLK_KP0)
    kp1: extern(SDLK_KP1)
    kp2: extern(SDLK_KP2)
    kp3: extern(SDLK_KP3)
    kp4: extern(SDLK_KP4)
    kp5: extern(SDLK_KP5)
    kp6: extern(SDLK_KP6)
    kp7: extern(SDLK_KP7)
    kp8: extern(SDLK_KP8)
    kp9: extern(SDLK_KP9)
    kpPeriod: extern(SDLK_KPPERIOD)
    kpDivide: extern(SDLK_KPDIVIDE)
    kpMultiply: extern(SDLK_KPMULTIPLY)
    kpMinus: extern(SDLK_KPMINUS)
    kpPlus: extern(SDLK_KPPLUS)
    kpEnter: extern(SDLK_KPENTER)
    kpEquals: extern(SDLK_KPEQUALS)
    up: extern(SDLK_UP)
    down: extern(SDLK_DOWN)
    right: extern(SDLK_RIGHT)
    left: extern(SDLK_LEFT)
    insert: extern(SDLK_INSERT)
    home: extern(SDLK_HOME)
    end: extern(SDLK_END)
    pageUp: extern(SDLK_PAGEUP)
    pageDown: extern(SDLK_PAGEDOWN)
    f1: extern(SDLK_F1)
    f2: extern(SDLK_F2)
    f3: extern(SDLK_F3)
    f4: extern(SDLK_F4)
    f5: extern(SDLK_F5)
    f6: extern(SDLK_F6)
    f7: extern(SDLK_F7)
    f8: extern(SDLK_F8)
    f9: extern(SDLK_F9)
    f10: extern(SDLK_F10)
    f11: extern(SDLK_F11)
    f12: extern(SDLK_F12)
    f13: extern(SDLK_F13)
    f14: extern(SDLK_F14)
    f15: extern(SDLK_F15)
    numlock: extern(SDLK_NUMLOCK)
    capslock: extern(SDLK_CAPSLOCK)
    scrollock: extern(SDLK_SCROLLOCK)
    rshift: extern(SDLK_RSHIFT)
    lshift: extern(SDLK_LSHIFT)
    rctrl: extern(SDLK_RCTRL)
    lctrl: extern(SDLK_LCTRL)
    ralt: extern(SDLK_RALT)
    lalt: extern(SDLK_LALT)
    rmeta: extern(SDLK_RMETA)
    lmeta: extern(SDLK_LMETA)
    lsuper: extern(SDLK_LSUPER)
    rsuper: extern(SDLK_RSUPER)
    mode: extern(SDLK_MODE)
    compose: extern(SDLK_COMPOSE)
    help: extern(SDLK_HELP)
    print: extern(SDLK_PRINT)
    sysreq: extern(SDLK_SYSREQ)
    break_: extern(SDLK_BREAK)
    menu: extern(SDLK_MENU)
    power: extern(SDLK_POWER)
    euro: extern(SDLK_EURO)
    undo: extern(SDLK_UNDO)
    last: extern(SDLK_LAST)
}

SDLEventAction: extern(SDL_eventaction) enum {
    addEvent: extern(SDL_ADDEVENT)
    peekEvent: extern(SDL_PEEKEVENT)
    getEvent: extern(SDL_GETEVENT)
}

SDLGrabMode: extern(SDL_GrabMode) enum {
    query: extern(SDL_GRAB_QUERY)
    off: extern(SDL_GRAB_OFF)
    on: extern(SDL_GRAB_ON)
    fullscreen: extern(SDL_GRAB_FULLSCREEN)
}

SDLEventType: extern(SDL_EventType) enum {
    noevent: extern(SDL_NOEVENT)
    activeevent: extern(SDL_ACTIVEEVENT)
    keydown: extern(SDL_KEYDOWN)
    keyup: extern(SDL_KEYUP)
    mousemotion: extern(SDL_MOUSEMOTION)
    mousebuttondown: extern(SDL_MOUSEBUTTONDOWN)
    mousebuttonup: extern(SDL_MOUSEBUTTONUP)
    joyaxismotion: extern(SDL_JOYAXISMOTION)
    joyballmotion: extern(SDL_JOYBALLMOTION)
    joyhatmotion: extern(SDL_JOYHATMOTION)
    joybuttondown: extern(SDL_JOYBUTTONDOWN)
    joybuttonup: extern(SDL_JOYBUTTONUP)
    quit: extern(SDL_QUIT)
    syswmevent: extern(SDL_SYSWMEVENT)
    eventReserveda: extern(SDL_EVENTRESERVEDA)
    eventReservedb: extern(SDL_EVENTRESERVEDB)
    videoresize: extern(SDL_VIDEORESIZE)
    videoexpose: extern(SDL_VIDEOEXPOSE)
    eventReserved2: extern(SDL_EVENT_RESERVED2)
    eventReserved3: extern(SDL_EVENT_RESERVED3)
    eventReserved4: extern(SDL_EVENT_RESERVED4)
    eventReserved5: extern(SDL_EVENT_RESERVED5)
    eventReserved6: extern(SDL_EVENT_RESERVED6)
    eventReserved7: extern(SDL_EVENT_RESERVED7)
    userevent: extern(SDL_USEREVENT)
    numevents: extern(SDL_NUMEVENTS)
}

SDLEventMask: extern(SDL_EventMask) enum {
    activeEvent: extern(SDL_ACTIVEEVENTMASK)
    keyDown: extern(SDL_KEYDOWNMASK)
    keyUp: extern(SDL_KEYUPMASK)
    keyEvent: extern(SDL_KEYEVENTMASK)
    mouseMotion: extern(SDL_MOUSEMOTIONMASK)
    mouseButtonDown: extern(SDL_MOUSEBUTTONDOWNMASK)
    mouseButtonUp: extern(SDL_MOUSEBUTTONUPMASK)
    mouseEvent: extern(SDL_MOUSEEVENTMASK)
    joyAxisMotion: extern(SDL_JOYAXISMOTIONMASK)
    joyBallMotion: extern(SDL_JOYBALLMOTIONMASK)
    joyHatMotion: extern(SDL_JOYHATMOTIONMASK)
    joyButtonDown: extern(SDL_JOYBUTTONDOWNMASK)
    joyButtonUp: extern(SDL_JOYBUTTONUPMASK)
    joyEvent: extern(SDL_JOYEVENTMASK)
    videoResize: extern(SDL_VIDEORESIZEMASK)
    videoExpose: extern(SDL_VIDEOEXPOSEMASK)
    quit: extern(SDL_QUITMASK)
    sysWMEvent: extern(SDL_SYSWMEVENTMASK)
    allEvents: extern(SDL_ALLEVENTSMASK)
}

// non-enum

SDLInitFlags: enum {
    timer: extern(SDL_INIT_TIMER)
    audio: extern(SDL_INIT_AUDIO)
    video: extern(SDL_INIT_VIDEO)
    CDROM: extern(SDL_INIT_CDROM)
    joystick: extern(SDL_INIT_JOYSTICK)
    noParachute: extern(SDL_INIT_NOPARACHUTE)
    eventThread: extern(SDL_INIT_EVENTTHREAD)
    everything: extern(SDL_INIT_EVERYTHING)
}

SDLApplicationStates: enum {
    mouseFocus: extern(SDL_APPMOUSEFOCUS)
    inputFocus: extern(SDL_APPINPUTFOCUS)
    active: extern(SDL_APPACTIVE)
}

SDLCDROMTrackTypes: enum {
    audioTrack: extern(SDL_AUDIO_TRACK)
    dataTrack: extern(SDL_DATA_TRACK)
}

SDLEndianness: enum {
    little: extern(SDL_LIL_ENDIAN)
    big: extern(SDL_BIG_ENDIAN)
}

SDLEventState: enum {
    query: extern(SDL_QUERY)
    ignore: extern(SDL_IGNORE)
    disable: extern(SDL_DISABLE)
    enable: extern(SDL_ENABLE)
}

SDLHatPosition: enum {
    centered: extern(SDL_HAT_CENTERED)
    up: extern(SDL_HAT_UP)
    right: extern(SDL_HAT_RIGHT)
    down: extern(SDL_HAT_DOWN)
    left: extern(SDL_HAT_LEFT)
    rightUp: extern(SDL_HAT_RIGHTUP)
    rightDown: extern(SDL_HAT_RIGHTDOWN)
    leftUp: extern(SDL_HAT_LEFTUP)
    leftDown: extern(SDL_HAT_LEFTDOWN)
}

SDLMouseButtonMask: enum {
    left: extern(SDL_BUTTON_LEFT)
    middle: extern(SDL_BUTTON_MIDDLE)
    right: extern(SDL_BUTTON_RIGHT)
    wheelUp: extern(SDL_BUTTON_WHEELUP)
    wheelDown: extern(SDL_BUTTON_WHEELDOWN)
    x1: extern(SDL_BUTTON_X1)
    x2: extern(SDL_BUTTON_X2)
}

SDLSurfaceFlags: enum {
    swSurface: extern(SDL_SWSURFACE)
    hwSurface: extern(SDL_HWSURFACE)
    asyncBlit: extern(SDL_ASYNCBLIT)
    // the following are for sdlSetVideoMode
    anyFormat: extern(SDL_ANYFORMAT)
    hwPalette: extern(SDL_HWPALETTE)
    doubleBuffer: extern(SDL_DOUBLEBUF)
    fullscreen: extern(SDL_FULLSCREEN)
    opengl: extern(SDL_OPENGL)
    openglBlit: extern(SDL_OPENGLBLIT)
    resizable: extern(SDL_RESIZABLE)
    noframe: extern(SDL_NOFRAME)
}

SDLOverlayFormats: enum {
    yv12Overlay = 0x32315659
    iyuvOverlay = 0x56555949
    yuy2Overlay = 0x32595559
    uyvyOverlay = 0x59565955
    yvyuOverlay = 0x55595659
}

SDLPaletteFlags: enum {
    logPal = 0x01
    physPal = 0x02
}

SDLVideoFlags: enum {
    anyFormat: extern(SDL_ANYFORMAT)
    hwPalette: extern(SDL_HWPALETTE)
    doubleBuffer: extern(SDL_DOUBLEBUF)
    fullscreen: extern(SDL_FULLSCREEN)
    opengl: extern(SDL_OPENGL)
    openglBlit: extern(SDL_OPENGLBLIT)
    resizable: extern(SDL_RESIZABLE)
    noframe: extern(SDL_NOFRAME)
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
sdlCreateRGBSurface: extern(SDL_CreateRGBSurface) func (flags: SDLSurfaceFlags, width: Int, height: Int, depth: Int, rmask: UInt32, gmask: UInt32, bmask: UInt32, amask: UInt32) -> SDLSurface*
sdlAllocRW: extern(SDL_AllocRW) func -> SDLRwops*
sdlGetMouseState: extern(SDL_GetMouseState) func (x: Int*, y: Int*) -> UInt8
sdlSemWait: extern(SDL_SemWait) func (sem: SDLSem*) -> Int
sdlConvertAudio: extern(SDL_ConvertAudio) func (cvt: SDLAudioCVT*) -> Int
sdlJoystickClose: extern(SDL_JoystickClose) func (joystick: SDLJoystick*)
sdlGLGetProcAddress: extern(SDL_GL_GetProcAddress) func (proc: const Char*) -> Void*
sdlGetTicks: extern(SDL_GetTicks) func -> UInt32
sdlPumpEvents: extern(SDL_PumpEvents) func
sdlGLGetAttribute: extern(SDL_GL_GetAttribute) func (attr: Int, value: Int*) -> Int
sdlIconv: extern(SDL_iconv) func (cd: IconvT, inbuf: const Char**, inbytesleft: SizeT*, outbuf: Char**, outbytesleft: SizeT*) -> SizeT
sdlGetKeyName: extern(SDL_GetKeyName) func (key: Int) -> Char*
sdlSetVideoMode: extern(SDL_SetVideoMode) func (width: Int, height: Int, bpp: Int, flags: SDLVideoFlags) -> SDLSurface*
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
sdlVideoInit: extern(SDL_VideoInit) func (driverName: const Char*, flags: SDLVideoFlags) -> Int
sdlOpenAudio: extern(SDL_OpenAudio) func (desired: SDLAudioSpec*, obtained: SDLAudioSpec*) -> Int
sdlReadLE32: extern(SDL_ReadLE32) func (src: SDLRwops*) -> UInt32
sdlCreateCursor: extern(SDL_CreateCursor) func (data: UInt8*, mask: UInt8*, w: Int, h: Int, hotX: Int, hotY: Int) -> SDLCursor*
sdlCDPlay: extern(SDL_CDPlay) func (cdrom: SDLCd*, start: Int, length: Int) -> Int
sdlCondWait: extern(SDL_CondWait) func (cond: SDLCond*, mut: SDLMutex*) -> Int
sdlVideoModeOK: extern(SDL_VideoModeOK) func (width: Int, height: Int, bpp: Int, flags: SDLVideoFlags) -> Int
sdlMixAudio: extern(SDL_MixAudio) func (dst: UInt8*, src: const UInt8*, len: UInt32, volume: Int)
sdlJoystickGetButton: extern(SDL_JoystickGetButton) func (joystick: SDLJoystick*, button: Int) -> UInt8
sdlReadLE64: extern(SDL_ReadLE64) func (src: SDLRwops*) -> UInt64
sdlUnlockAudio: extern(SDL_UnlockAudio) func
sdlJoystickIndex: extern(SDL_JoystickIndex) func (joystick: SDLJoystick*) -> Int
sdlGetKeyRepeat: extern(SDL_GetKeyRepeat) func (delay: Int*, interval: Int*)
sdlUnlockSurface: extern(SDL_UnlockSurface) func (surface: SDLSurface*)
sdlShowCursor: extern(SDL_ShowCursor) func (toggle: Int) -> Int
sdlRWFromFP: extern(SDL_RWFromFP) func (fp: FILE*, autoclose: Int) -> SDLRwops*
sdlMapRGB: extern(SDL_MapRGB) func (format: const const SDLPixelFormat*, r: const UInt8, g: const UInt8, b: const UInt8) -> UInt32
sdlCondSignal: extern(SDL_CondSignal) func (cond: SDLCond*) -> Int
sdlJoystickGetBall: extern(SDL_JoystickGetBall) func (joystick: SDLJoystick*, ball: Int, dx: Int*, dy: Int*) -> Int
sdlHas3DNow: extern(SDL_Has3DNow) func -> Int
sdlAudioQuit: extern(SDL_AudioQuit) func
sdlWMToggleFullScreen: extern(SDL_WM_ToggleFullScreen) func (surface: SDLSurface*) -> Int
sdlBuildAudioCVT: extern(SDL_BuildAudioCVT) func (cvt: SDLAudioCVT*, srcFormat: UInt16, srcChannels: UInt8, srcRate: Int, dstFormat: UInt16, dstChannels: UInt8, dstRate: Int) -> Int
sdlSetError: extern(SDL_SetError) func (fmt: const Char*, ...)
sdlCreateMutex: extern(SDL_CreateMutex) func -> SDLMutex*
sdlVideoQuit: extern(SDL_VideoQuit) func
sdlGLSwapBuffers: extern(SDL_GL_SwapBuffers) func
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
sdlRWFromMem: extern(SDL_RWFromMem) func (mem: Void*, size: Int) -> SDLRwops*
sdlInit: extern(SDL_Init) func (flags: SDLInitFlags) -> Int
sdlHasSSE2: extern(SDL_HasSSE2) func -> Int
sdlSemPost: extern(SDL_SemPost) func (sem: SDLSem*) -> Int
sdlWaitThread: extern(SDL_WaitThread) func (thread: SDLThread*, status: Int*)
sdlJoystickNumAxes: extern(SDL_JoystickNumAxes) func (joystick: SDLJoystick*) -> Int
sdlLoadFunction: extern(SDL_LoadFunction) func (handle: Void*, name: const Char*) -> Void*
sdlLoadWAVRW: extern(SDL_LoadWAV_RW) func (src: SDLRwops*, freesrc: Int, spec: SDLAudioSpec*, audioBuf: UInt8**, audioLen: UInt32*) -> SDLAudioSpec*
sdlJoystickEventState: extern(SDL_JoystickEventState) func (state: Int) -> Int
sdlGetError: extern(SDL_GetError) func -> Char*
sdlConvertSurface: extern(SDL_ConvertSurface) func (src: SDLSurface*, fmt: SDLPixelFormat*, flags: SDLSurfaceFlags) -> SDLSurface*
sdlSetAlpha: extern(SDL_SetAlpha) func (surface: SDLSurface*, flag: UInt32, alpha: UInt8) -> Int
sdlCreateSemaphore: extern(SDL_CreateSemaphore) func (initialValue: UInt32) -> SDLSem*
sdlCDClose: extern(SDL_CDClose) func (cdrom: SDLCd*)
sdlQuitSubSystem: extern(SDL_QuitSubSystem) func (flags: SDLInitFlags)
sdlStrlcat: extern(SDL_strlcat) func (dst: Char*, src: const Char*, maxlen: SizeT) -> SizeT
sdlGetGammaRamp: extern(SDL_GetGammaRamp) func (red: UInt16*, green: UInt16*, blue: UInt16*) -> Int
sdlHasMMXExt: extern(SDL_HasMMXExt) func -> Int
sdlHasRDTSC: extern(SDL_HasRDTSC) func -> Int
sdlGetAudioStatus: extern(SDL_GetAudioStatus) func -> Int
sdlSemTryWait: extern(SDL_SemTryWait) func (sem: SDLSem*) -> Int
sdlCDName: extern(SDL_CDName) func (drive: Int) -> const Char*
sdlCDStop: extern(SDL_CDStop) func (cdrom: SDLCd*) -> Int
sdlWarpMouse: extern(SDL_WarpMouse) func (x: UInt16, y: UInt16)
sdlWMIconifyWindow: extern(SDL_WM_IconifyWindow) func -> Int
sdlGLUnlock: extern(SDL_GL_Unlock) func
sdlAudioInit: extern(SDL_AudioInit) func (driverName: const Char*) -> Int
sdlSetTimer: extern(SDL_SetTimer) func (interval: UInt32, callback: SDLTimerCallback) -> Int
sdlRemoveTimer: extern(SDL_RemoveTimer) func (t: SDLTimerID) -> Int
sdlJoystickNumButtons: extern(SDL_JoystickNumButtons) func (joystick: SDLJoystick*) -> Int
sdlSetClipRect: extern(SDL_SetClipRect) func (surface: SDLSurface*, rect: const SDLRect*) -> Int
sdlPauseAudio: extern(SDL_PauseAudio) func (pauseOn: Int)
sdlCDResume: extern(SDL_CDResume) func (cdrom: SDLCd*) -> Int
sdlUpperBlit: extern(SDL_UpperBlit) func (src: SDLSurface*, srcrect: SDLRect*, dst: SDLSurface*, dstrect: SDLRect*) -> Int
sdlStrlwr: extern(SDL_strlwr) func (string: Char*) -> Char*
sdlReadBE16: extern(SDL_ReadBE16) func (src: SDLRwops*) -> UInt16
sdlCreateCond: extern(SDL_CreateCond) func -> SDLCond*
sdlPeepEvents: extern(SDL_PeepEvents) func (events: SDLEvent*, numevents: Int, action: Int, mask: UInt32) -> Int
sdlWMGetCaption: extern(SDL_WM_GetCaption) func (title: Char**, icon: Char**)
sdlGLUpdateRects: extern(SDL_GL_UpdateRects) func (numrects: Int, rects: SDLRect*)
sdlKillThread: extern(SDL_KillThread) func (thread: SDLThread*)
sdlGetRGBA: extern(SDL_GetRGBA) func (pixel: UInt32, fmt: const const SDLPixelFormat*, r: UInt8*, g: UInt8*, b: UInt8*, a: UInt8*)
sdlUnlockYUVOverlay: extern(SDL_UnlockYUVOverlay) func (overlay: SDLOverlay*)
sdlDisplayYUVOverlay: extern(SDL_DisplayYUVOverlay) func (overlay: SDLOverlay*, dstrect: SDLRect*) -> Int
sdlInitSubSystem: extern(SDL_InitSubSystem) func (flags: SDLInitFlags) -> Int
sdlCDOpen: extern(SDL_CDOpen) func (drive: Int) -> SDLCd*
sdlSetCursor: extern(SDL_SetCursor) func (cursor: SDLCursor*)
sdlFreeWAV: extern(SDL_FreeWAV) func (audioBuf: UInt8*)
sdlSemWaitTimeout: extern(SDL_SemWaitTimeout) func (sem: SDLSem*, ms: UInt32) -> Int
sdlReadBE64: extern(SDL_ReadBE64) func (src: SDLRwops*) -> UInt64
sdlListModes: extern(SDL_ListModes) func (format: SDLPixelFormat*, flags: SDLVideoFlags) -> SDLRect**
sdlFreeRW: extern(SDL_FreeRW) func (area: SDLRwops*)
sdlIconvString: extern(SDL_iconv_string) func (tocode: const Char*, fromcode: const Char*, inbuf: const Char*, inbytesleft: SizeT) -> Char*
sdlSemValue: extern(SDL_SemValue) func (sem: SDLSem*) -> UInt32
sdlPushEvent: extern(SDL_PushEvent) func (event: SDLEvent*) -> Int
sdlGLLock: extern(SDL_GL_Lock) func
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
sdlGLLoadLibrary: extern(SDL_GL_LoadLibrary) func (path: const Char*) -> Int
sdlHas3DNowExt: extern(SDL_Has3DNowExt) func -> Int
sdlWriteBE32: extern(SDL_WriteBE32) func (dst: SDLRwops*, value: UInt32) -> Int
sdlLltoa: extern(SDL_lltoa) func (value: Int64, string: Char*, radix: Int) -> Char*
sdlWriteBE64: extern(SDL_WriteBE64) func (dst: SDLRwops*, value: UInt64) -> Int
sdlCDPause: extern(SDL_CDPause) func (cdrom: SDLCd*) -> Int
sdlCloseAudio: extern(SDL_CloseAudio) func
sdlDisplayFormatAlpha: extern(SDL_DisplayFormatAlpha) func (surface: SDLSurface*) -> SDLSurface*
sdlCDPlayTracks: extern(SDL_CDPlayTracks) func (cdrom: SDLCd*, startTrack: Int, startFrame: Int, ntracks: Int, nframes: Int) -> Int
sdlEnableKeyRepeat: extern(SDL_EnableKeyRepeat) func (delay: Int, interval: Int) -> Int
sdlQuit: extern(SDL_Quit) func
sdlWaitEvent: extern(SDL_WaitEvent) func (event: SDLEvent*) -> Int
sdlGetKeyState: extern(SDL_GetKeyState) func (numkeys: Int*) -> UInt8*
sdlRWFromFile: extern(SDL_RWFromFile) func (file: const Char*, mode: const Char*) -> SDLRwops*
sdlCDNumDrives: extern(SDL_CDNumDrives) func -> Int
sdlAddTimer: extern(SDL_AddTimer) func (interval: UInt32, callback: SDLNewTimerCallback, param: Void*) -> SDLTimerID
sdlCDEject: extern(SDL_CDEject) func (cdrom: SDLCd*) -> Int
sdlFreeSurface: extern(SDL_FreeSurface) func (surface: SDLSurface*)
sdlReadBE32: extern(SDL_ReadBE32) func (src: SDLRwops*) -> UInt32
sdlFreeCursor: extern(SDL_FreeCursor) func (cursor: SDLCursor*)
sdlLockYUVOverlay: extern(SDL_LockYUVOverlay) func (overlay: SDLOverlay*) -> Int
sdlJoystickGetAxis: extern(SDL_JoystickGetAxis) func (joystick: SDLJoystick*, axis: Int) -> Int16
sdlGLSetAttribute: extern(SDL_GL_SetAttribute) func (attr: Int, value: Int) -> Int
sdlCondBroadcast: extern(SDL_CondBroadcast) func (cond: SDLCond*) -> Int
sdlSetColors: extern(SDL_SetColors) func (surface: SDLSurface*, colors: SDLColor*, firstcolor: Int, ncolors: Int) -> Int
sdlCondWaitTimeout: extern(SDL_CondWaitTimeout) func (cond: SDLCond*, mutex: SDLMutex*, ms: UInt32) -> Int
sdlDestroyMutex: extern(SDL_DestroyMutex) func (mutex: SDLMutex*)
sdlSetPalette: extern(SDL_SetPalette) func (surface: SDLSurface*, flags: Int, colors: SDLColor*, firstcolor: Int, ncolors: Int) -> Int
sdlRWFromConstMem: extern(SDL_RWFromConstMem) func (mem: const Void*, size: Int) -> SDLRwops*
sdlReadLE16: extern(SDL_ReadLE16) func (src: SDLRwops*) -> UInt16
sdlError: extern(SDL_Error) func (code: Int)
sdlWMSetIcon: extern(SDL_WM_SetIcon) func (icon: SDLSurface*, mask: UInt8*)
sdlUpdateRects: extern(SDL_UpdateRects) func (screen: SDLSurface*, numrects: Int, rects: SDLRect*)
sdlNumJoysticks: extern(SDL_NumJoysticks) func -> Int
sdlLockAudio: extern(SDL_LockAudio) func
sdlWMGrabInput: extern(SDL_WM_GrabInput) func (mode: Int) -> Int
sdlAudioDriverName: extern(SDL_AudioDriverName) func (namebuf: Char*, maxlen: Int) -> Char*
sdlStrlcpy: extern(SDL_strlcpy) func (dst: Char*, src: const Char*, maxlen: SizeT) -> SizeT
sdlGetClipRect: extern(SDL_GetClipRect) func (surface: SDLSurface*, rect: SDLRect*)
sdlCDStatus: extern(SDL_CDStatus) func (cdrom: SDLCd*) -> Int
sdlWMSetCaption: extern(SDL_WM_SetCaption) func (title: const Char*, icon: const Char*)
sdlCreateThread: extern(SDL_CreateThread) func (fn: Func, data: Void*) -> SDLThread*
sdlGetVideoSurface: extern(SDL_GetVideoSurface) func -> SDLSurface*
sdlGetRelativeMouseState: extern(SDL_GetRelativeMouseState) func (x: Int*, y: Int*) -> UInt8
sdlClearError: extern(SDL_ClearError) func
sdlJoystickName: extern(SDL_JoystickName) func (deviceIndex: Int) -> const Char*
sdlWasInit: extern(SDL_WasInit) func (flags: SDLInitFlags) -> UInt32
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
