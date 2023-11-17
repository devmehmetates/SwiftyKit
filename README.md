# SwiftyKit

![Slide 16_9 - 3](https://user-images.githubusercontent.com/74152011/232314158-24375781-6065-4948-9662-3863e8366bac.png)


SwiftyKit is a Swift package that provides a collection of useful extensions and utilities for iOS app development. It includes extensions for UIKit classes like **UIView, UILabel, UIButton,** and more, as well as some useful utility functions.

## Installation

To install SwiftyKit in your project, simply add the following line to your Package.swift file:

```swift
dependencies: [
    .package(url: "https://github.com/your_username/SwiftyKit.git", from: "1.0.0")
]
```

Then import the module in the files you want to use it in:

```swift
import SwiftyKit
```

## Example Usage
```swift
final class ExampleView: SwiftyViewController {
    override var content: UIView {
        BaseScrollView {
            VerticalStack {
                for _ in 0...10 {
                    HorizontalStack {
                        CardView(image: "https://picsum.photos/200")
                        CardView(image: "https://picsum.photos/200")
                        CardView(image: "https://picsum.photos/200")
                    }.frame(width: 90.0.responsiveW)
                        .distribution(.fillEqually)
                }
            }.padding()
        }
    }
}

final class CardView: UIView {
    private lazy var label = UILabel("History")
        .font(.boldSystemFont(ofSize: 16))
    
    convenience init(image: String) {
        self.init(frame: .zero)
        
        VerticalStack {
            UIImageView()
                .asyncImage(URL(string: image))
                .contentMode(.scaleAspectFit)
                .cornerRadius(8)
                .clipsToBounds(true)
            
            BaseButton(type: .system)
                .setTitle("Update")
                .didClick { [weak self] in
                    self?.label.text = "Updated"
                }
            
            label
        }.padding()
            .backgroundColor(.systemBackground)
            .cornerRadius(10)
            .shadow().embedTo(self)
            .fillToSuperView()
            .frame(height: 50.responsiveW)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
```

## Contributing
If you find a bug or have a feature request, please open an issue on the GitHub repository. Pull requests are also welcome. Also you can check <a href="https://github.com/devmehmetates/SwiftyKit/blob/main/CONTRIBUTING.md">here</a>.

## License
SwiftyKit is released under the Apache License. See <a href="https://github.com/devmehmetates/SwiftyKit/blob/main/LICENSE">LICENSE</a> for more information.
