![Kenbunroku Logo](./docs/logo.png)

Kenbunroku for iOS is parser for **Kenbunroku** formatted documents.





## About Kenbunroku Format

Kenbunroku format is structural document written is JSON like following.



## Kenbunroku iOS LifeCycle

Kenbunroku iOS has one ViewController named `KenReaderController`. This view controller class has 4 methods that is composing reader life cycle.

These methods are associated with iOS `UIViewController` life cycle.

```
viewWillContentLoad()
       ↓
viewDidContentLoad()
       ↓
viewWillContentShow()
       ↓
viewDidContentShow()
```

