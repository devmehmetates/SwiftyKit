# SwiftyKit

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
final class ExampleView: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Navigation Title"
        self.navigationController?.navigationBar.prefersLargeTitles = true
        createView()
    }
    
    func createView() {
        BaseScrollView {
            VerticalStack {
                for number in 0...10 {
                    HorizontalStack {
                        UILabel("Key: \(number)")
                        Spacer()
                        UILabel("Value")
                    }.padding()
                        .backgroundColor(.systemBackground)
                        .cornerRadius(10)
                        .shadow()
                }
            }.spacing(15)
                .padding()
        }.addView(view)
            .fillToSuperView()
    }
}
```
## Contributing
If you find a bug or have a feature request, please open an issue on the GitHub repository. Pull requests are also welcome.

## License
SwiftyKit is released under the Apache License. See <a href="https://github.com/devmehmetates/SwiftyKit/blob/main/LICENSE">LICENSE</a> for more information.
