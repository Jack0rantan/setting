if has_key(g:polyglot_is_disabled, 'typescript')
  finish
endif

syntax keyword typescriptDOMEventTargetMethod contained addEventListener removeEventListener nextgroup=typescriptEventFuncCallArg
syntax keyword typescriptDOMEventTargetMethod contained dispatchEvent waitUntil nextgroup=typescriptEventFuncCallArg
syntax cluster props add=typescriptDOMEventTargetMethod
if exists("did_typescript_hilink") | HiLink typescriptDOMEventTargetMethod Keyword
endif
syntax keyword typescriptDOMEventCons containedin=typescriptIdentifierName AnimationEvent
syntax keyword typescriptDOMEventCons containedin=typescriptIdentifierName AudioProcessingEvent
syntax keyword typescriptDOMEventCons containedin=typescriptIdentifierName BeforeInputEvent
syntax keyword typescriptDOMEventCons containedin=typescriptIdentifierName BeforeUnloadEvent
syntax keyword typescriptDOMEventCons containedin=typescriptIdentifierName BlobEvent
syntax keyword typescriptDOMEventCons containedin=typescriptIdentifierName ClipboardEvent
syntax keyword typescriptDOMEventCons containedin=typescriptIdentifierName CloseEvent
syntax keyword typescriptDOMEventCons containedin=typescriptIdentifierName CompositionEvent
syntax keyword typescriptDOMEventCons containedin=typescriptIdentifierName CSSFontFaceLoadEvent
syntax keyword typescriptDOMEventCons containedin=typescriptIdentifierName CustomEvent
syntax keyword typescriptDOMEventCons containedin=typescriptIdentifierName DeviceLightEvent
syntax keyword typescriptDOMEventCons containedin=typescriptIdentifierName DeviceMotionEvent
syntax keyword typescriptDOMEventCons containedin=typescriptIdentifierName DeviceOrientationEvent
syntax keyword typescriptDOMEventCons containedin=typescriptIdentifierName DeviceProximityEvent
syntax keyword typescriptDOMEventCons containedin=typescriptIdentifierName DOMTransactionEvent
syntax keyword typescriptDOMEventCons containedin=typescriptIdentifierName DragEvent
syntax keyword typescriptDOMEventCons containedin=typescriptIdentifierName EditingBeforeInputEvent
syntax keyword typescriptDOMEventCons containedin=typescriptIdentifierName ErrorEvent
syntax keyword typescriptDOMEventCons containedin=typescriptIdentifierName FocusEvent
syntax keyword typescriptDOMEventCons containedin=typescriptIdentifierName GamepadEvent
syntax keyword typescriptDOMEventCons containedin=typescriptIdentifierName HashChangeEvent
syntax keyword typescriptDOMEventCons containedin=typescriptIdentifierName IDBVersionChangeEvent
syntax keyword typescriptDOMEventCons containedin=typescriptIdentifierName KeyboardEvent
syntax keyword typescriptDOMEventCons containedin=typescriptIdentifierName MediaStreamEvent
syntax keyword typescriptDOMEventCons containedin=typescriptIdentifierName MessageEvent
syntax keyword typescriptDOMEventCons containedin=typescriptIdentifierName MouseEvent
syntax keyword typescriptDOMEventCons containedin=typescriptIdentifierName MutationEvent
syntax keyword typescriptDOMEventCons containedin=typescriptIdentifierName OfflineAudioCompletionEvent
syntax keyword typescriptDOMEventCons containedin=typescriptIdentifierName PageTransitionEvent
syntax keyword typescriptDOMEventCons containedin=typescriptIdentifierName PointerEvent
syntax keyword typescriptDOMEventCons containedin=typescriptIdentifierName PopStateEvent
syntax keyword typescriptDOMEventCons containedin=typescriptIdentifierName ProgressEvent
syntax keyword typescriptDOMEventCons containedin=typescriptIdentifierName RelatedEvent
syntax keyword typescriptDOMEventCons containedin=typescriptIdentifierName RTCPeerConnectionIceEvent
syntax keyword typescriptDOMEventCons containedin=typescriptIdentifierName SensorEvent
syntax keyword typescriptDOMEventCons containedin=typescriptIdentifierName StorageEvent
syntax keyword typescriptDOMEventCons containedin=typescriptIdentifierName SVGEvent
syntax keyword typescriptDOMEventCons containedin=typescriptIdentifierName SVGZoomEvent
syntax keyword typescriptDOMEventCons containedin=typescriptIdentifierName TimeEvent
syntax keyword typescriptDOMEventCons containedin=typescriptIdentifierName TouchEvent
syntax keyword typescriptDOMEventCons containedin=typescriptIdentifierName TrackEvent
syntax keyword typescriptDOMEventCons containedin=typescriptIdentifierName TransitionEvent
syntax keyword typescriptDOMEventCons containedin=typescriptIdentifierName UIEvent
syntax keyword typescriptDOMEventCons containedin=typescriptIdentifierName UserProximityEvent
syntax keyword typescriptDOMEventCons containedin=typescriptIdentifierName WheelEvent
if exists("did_typescript_hilink") | HiLink typescriptDOMEventCons Structure
endif
syntax keyword typescriptDOMEventProp contained bubbles cancelable currentTarget defaultPrevented
syntax keyword typescriptDOMEventProp contained eventPhase target timeStamp type isTrusted
syntax keyword typescriptDOMEventProp contained isReload
syntax cluster props add=typescriptDOMEventProp
if exists("did_typescript_hilink") | HiLink typescriptDOMEventProp Keyword
endif
syntax keyword typescriptDOMEventMethod contained initEvent preventDefault stopImmediatePropagation nextgroup=typescriptEventFuncCallArg
syntax keyword typescriptDOMEventMethod contained stopPropagation respondWith default nextgroup=typescriptEventFuncCallArg
syntax cluster props add=typescriptDOMEventMethod
if exists("did_typescript_hilink") | HiLink typescriptDOMEventMethod Keyword
endif
