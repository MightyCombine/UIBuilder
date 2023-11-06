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
@Published var items: [Int] = [0]
    
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
    .registerCell(UITableViewCell.self, identifier: "UITableViewCell")
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
    
lazy var refresh = RefreshControlBuilder()
    .setRefreshPublisher(&cancellables) {
        self.shouldRefresh()
    }.build()

var cellSize: CGSize {
    let width = view.frame.width / 3 - 1
    return .init(width: width, height: width)
}
lazy var flow = CollectionViewFlowLayoutBuilder()
    .setMinimumLineSpacing(1)
    .setMinimumInteritemSpacing(1)
    .setScrollDirection(.vertical)
    .setItemSize(cellSize)
    .build()

lazy var collectionView = CollectionViewBuilder()
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
