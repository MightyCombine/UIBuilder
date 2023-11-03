# 🏗️ UIBuilder

## ✔️ Examples

### UILabel
```swift
lazy var label = LabelBuilder()
    .setText("\(Hello World)")
    .setTextColor(.black)
    .setTranslatesAuto()
    .setSuperView(self.view)
    .build()
```

### UIButton
```swift
lazy var button = ButtonBuilder()
    .setAction { self.didTapButton() }
    .setTitle("Button", for: .normal)
    .setTitleColor(.blue, for: .normal)
    .setTranslatesAuto()
    .setSuperView(self.view)
    .build()
```

### UITableView
```swift
lazy var tableRefresh = RefreshControlBuilder()
    .addTarget(self, action: #selector(refresh), for: .valueChanged)
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
lazy var textField = TextFieldBuilder()
    .setPlaceholder("Type Something")
    .setTextColor(.black)
    .setSuperView(self.view)
    .setTranslatesAuto()
    .build()
```
