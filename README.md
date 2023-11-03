# UIBuilder

## Example

### Label
```swift
lazy var count = LabelBuilder()
    .setText("\(self.store.count)")
    .setTextColor(.black)
    .setTranslatesAuto()
    .setSuperView(self.view)
    .build()
```

### Button
```swift
lazy var button = ButtonBuilder()
    .setAction { self.store.send(.didTap) }
    .setTitle("Button", for: .normal)
    .setTitleColor(.blue, for: .normal)
    .setTranslatesAuto()
    .setSuperView(self.view)
    .build()
```

### TableView
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

### TextField
```swift
lazy var textField = TextFieldBuilder()
    .setPlaceholder("Type Something")
    .setTextColor(.black)
    .setSuperView(self.view)
    .setTranslatesAuto()
    .build()
```
