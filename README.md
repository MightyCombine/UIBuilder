# 🏗️ UIBuilder

## ✔️ Examples

### UILabel
```swift
private var store = Set<AnyCancellable>()

lazy var label = LabelBuilder()
    .setText("\(Hello World)")
    .setTextColor(.black)
    .setTranslatesAutoresizing()
    .addToSuperView(self.view)
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
    .setTranslatesAutoresizing()
    .addToSuperView(self.view)
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
    .setTranslatesAutoresizing()
    .addToSuperView(self.view)
    .build()
```

### UITextField
```swift
private var store = Set<AnyCancellable>()

lazy var textField = TextFieldBuilder()
    .setPlaceholder("Type Something")
    .setTextColor(.black)
    .addToSuperView(self.view)
    .setTranslatesAutoresizing()
    .setTextPublisher(&store) {
        print($0)
    }
    .bind(to: &viewModel.$text)
    .build()
```

### UITextView 
```swift
private var store = Set<AnyCancellable>()

lazy var textView = TextViewBuilder()
    .setTextColor(.black)
    .setTranslatesAutoresizing()
    .addToSuperView(self.view)
    .setBackgroundColor(.lightGray)
    .setTextPublisher(&store) {
        print($0)
    }
    .bind(to: &viewModel.$text)
    .build()
```
