# swiftlib
Utility for swift

Feature List
===

- Minimal Logger using NSLog
``` swift
class Logger {
    class func debug(message:String, function: String = __FUNCTION__, line: Int = __LINE__)
}
```
``` swift
Logger.debug("abc")
```
```
2015-09-05 08:01:57.490 xctest[34763:806801] testLogger() line[23] abc
```

- Float zero compare
``` swift
extension Float {
    func IsNearlyZero() -> Bool
}
```
``` swift
let val:Float = 0.0000001
val.IsNearlyZero() // true
```

License
===
MIT License
