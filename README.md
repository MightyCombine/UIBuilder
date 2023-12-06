# 🏗️ UIBuilder

## ✔️ Examples

### UIView
✅ Builder
```swift
private lazy var view = UIBuilder()
        .setBackgroundColor(.black)
        .build()
```
✅ SelfBuildable 

### UILabel
```swift
private var store = Set<AnyCancellable>()

✅ Builder
lazy var label = LabelBuilder()
    .setText("\(Hello World)")
    .setTextColor(.black)
    .setPointTextColor("Hello", color: .red)
    .setLineHeight(30)
    .setTranslatesAutoresizing()
    .addToSuperView(self.view)
    .setTapPublusher(&store) {
        print("Tap")
    }
    .build()
    
✅ SelfBuildable 
lazy var label = UILabel {
    $0.text = "Label"
    $0.textColor = .black
    $0.addToSuperView(self.view)
}
```

### UIButton
```swift
private var store = Set<AnyCancellable>()

✅ Builder
lazy var button = ButtonBuilder()
    .setTitle("Button", for: .normal)
    .setTitleColor(.blue, for: .normal)
    .setTranslatesAutoresizing()
    .setBackgroundCornerRadius(20.0)
    .setImageEdgeInsets(edgeInsets)
    .addToSuperView(self.view)
    .setEventPublisher(&store) {
        print("Tap")
    }
    .build()
    
✅ SelfBuildable 
lazy var button = UIButton {
    $0.setTitle("Button", for: .normal)
    $0.setTitleColor(.blue, for: .normal)
    $0.eventPublisher(for: .touchDown).sink {
        print("Tap")
    }.store(in: &store)
    $0.addToSuperView(self.view)
}
```

### UITableView
```swift
private var store = Set<AnyCancellable>()
@Published var items: [Int] = [0]
    
✅ Builder
lazy var tableRefresh = RefreshControlBuilder()
    .setRefreshPublisher(&store) {
        print("Should Refresh")
    }
    .build()

✅ Builder
lazy var tableView = TableViewBuilder()
    .setSectionHeaderTopPadding(16)
    .setRefreshControl(tableRefresh)
    .setDelegate(self)
    .setDataSource(self)
    .setTranslatesAutoresizing()
    .addToSuperView(self.view)
    .registerCell(UITableViewCell.self, identifier: "UITableViewCell")
    .registerHeaderFooter(HeaderView.self, "HeaderViewe")
    .bind(items: $items, &cancellables, self.buildTableViewCell(_:_:_:))
    .build()
    
func buildTableViewCell(_ table: UITableView, _ indexPath: IndexPath, _ element: Int) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "UITableViewCell", for: indexPath)
    cell.textLabel?.text = String(element)
    return cell
}
```

### UICollectionView
```swift
@Published var items: [Int] = [0]
private var cancellables = Set<AnyCancellable>()
    
✅ Builder
lazy var refresh = RefreshControlBuilder()
    .setRefreshPublisher(&cancellables) {
        self.shouldRefresh()
    }.build()

var cellSize: CGSize {
    let width = view.frame.width / 3 - 1
    return .init(width: width, height: width)
}
✅ Builder
lazy var flow = CollectionViewFlowLayoutBuilder()
    .setMinimumLineSpacing(1)
    .setMinimumInteritemSpacing(1)
    .setScrollDirection(.vertical)
    .setItemSize(cellSize)
    .build()

✅ Builder
lazy var collectionView = CollectionViewBuilder()
    .register(
        HeaderView.self, 
        forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, 
        withReuseIdentifier: HeaderView.identifier
    )
    .setRefreshControl(self.refresh)
    .registerCell(CustomCollectionCell.self, identifier: "CustomCollectionCell")
    .bind(items: $items, &cancellables, buildCollectionViewCell(_:_:_:))
    .setTranslatesAutoresizing()
    .addToSuperView(self.view)
    .setFlowLayout(flow)
    .build()
    
func buildCollectionViewCell(_ collectionView: UICollectionView, _ indexPath: IndexPath, _ element: Int) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CustomCollectionCell", for: indexPath) as! CustomCollectionCell
    cell.setImageView()
    return cell
} 
```

### UITextField
```swift
private var store = Set<AnyCancellable>()

✅ Builder
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

✅ Builder
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

### UISwitch
```swift 
private var cancellables = Set<AnyCancellable>()

✅ Builder
lazy var uiSwitch = SwitchBuilder()
    .bind(to: &viewModel.$switchStatus)
    .setSwitchPublisher(&cancellables) {
        print($0)
    }
    .addToSuperView(self.view)
    .setTranslatesAutoresizing()
    .build()
```

### UIStackView
```swift 
private var cancellables = Set<AnyCancellable>()

✅ Builder
private lazy var inputStackView = StackViewBuilder()
    .addArragedSubviews(view1, view2, view3)
    .setSpacing(4.0)
    .setCustomSpacing(10.0, after: view2)
    .setAlignment(.fill)
    .setIsUserInteractionEnabled(true)
    .addToSuperView(self.view)
    .setBackgroundColor(.gray)
    .build()
```
