# 🏗️ UIBuilder

## ✔️ Examples

### UILabel
```swift
private var store = Set<AnyCancellable>()

lazy var label = LabelBuilder()
    .setText("\(Hello World)")
    .setTextColor(.black)
    .setTranslatesAuto()
    .setSuperView(self.view)
    .setTapPublusher(&store) {
        print("Tap")
    }
    .build()
```

### UIButton
```swift
private var store = Set<AnyCancellable>()

lazy var button = ButtonBuilder()
    .setTitle("Button", for: .normal)
    .setTitleColor(.blue, for: .normal)
    .setTranslatesAuto()
    .setSuperView(self.view)
    .setEventPublisher(&store) {
        print("Tap")
    }
    .build()
```

### UITableView
```swift
private var store = Set<AnyCancellable>()

lazy var tableRefresh = RefreshControlBuilder()
    .setRefreshPublisher(&store) {
        print("Should Refresh")
    }
    .build()
    
lazy var tableView = TableViewBuilder()
    .setRefreshControl(tableRefresh)
    .setDelegate(self)
    .setDataSource(self)
    .setTranslatesAuto()
    .setSuperView(self.view)
    .build()
```

### UITextField
```swift
private var store = Set<AnyCancellable>()

lazy var textField = TextFieldBuilder()
    .setPlaceholder("Type Something")
    .setTextColor(.black)
    .setSuperView(self.view)
    .setTranslatesAuto()
    .setTextPublisher(&store) {
        print($0)
    }
    .build()
```

### UITextView 
```swift
private var store = Set<AnyCancellable>()

lazy var textView = TextViewBuilder()
    .setTextColor(.black)
    .setTranslatesAuto()
    .setSuperView(self.view)
    .setBackgroundColor(.lightGray)
    .setTextPublisher(&store) {
        print($0)
    }
    .build()
```
