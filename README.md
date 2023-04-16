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
## Content
- <a href="https://github.com/devmehmetates/SwiftyKit/blob/main/Sources/SwiftyKit/Kit/Extensions/UIView%20%2B%20Ext.swift">UIView</a>
    - <a href="https://github.com/devmehmetates/SwiftyKit/blob/main/Sources/SwiftyKit/Kit/Extensions/UIView%20%2B%20Ext.swift#L12"><p>func addView(_ :)</p></a>
    - <a href="https://github.com/devmehmetates/SwiftyKit/blob/main/Sources/SwiftyKit/Kit/Extensions/UIView%20%2B%20Ext.swift#L25"><p>func padding(_ :)</p></a>
    - <a href="https://github.com/devmehmetates/SwiftyKit/blob/main/Sources/SwiftyKit/Kit/Extensions/UIView%20%2B%20Ext.swift#L42"><p>func widthToSuperview(_ :)</p></a>
    - <a href="https://github.com/devmehmetates/SwiftyKit/blob/main/Sources/SwiftyKit/Kit/Extensions/UIView%20%2B%20Ext.swift#L53"><p>func width(_ :)</p></a>
    - <a href="https://github.com/devmehmetates/SwiftyKit/blob/main/Sources/SwiftyKit/Kit/Extensions/UIView%20%2B%20Ext.swift#L64"><p>func height(_ :)</p></a>
    - <a href="https://github.com/devmehmetates/SwiftyKit/blob/main/Sources/SwiftyKit/Kit/Extensions/UIView%20%2B%20Ext.swift#L75"><p>func heightToSuperview(_ :)</p></a>
    - <a href="https://github.com/devmehmetates/SwiftyKit/blob/main/Sources/SwiftyKit/Kit/Extensions/UIView%20%2B%20Ext.swift#L86"><p>func frame(_ :)</p></a>
    - <a href="https://github.com/devmehmetates/SwiftyKit/blob/main/Sources/SwiftyKit/Kit/Extensions/UIView%20%2B%20Ext.swift#L106"><p>func center(_ :)</p></a>
    - <a href="https://github.com/devmehmetates/SwiftyKit/blob/main/Sources/SwiftyKit/Kit/Extensions/UIView%20%2B%20Ext.swift#L118"><p>func centerToSuperview(_ :)</p></a>
    - <a href="https://github.com/devmehmetates/SwiftyKit/blob/main/Sources/SwiftyKit/Kit/Extensions/UIView%20%2B%20Ext.swift#L130"><p>func centerHorizontal(_ :)</p></a>
    - <a href="https://github.com/devmehmetates/SwiftyKit/blob/main/Sources/SwiftyKit/Kit/Extensions/UIView%20%2B%20Ext.swift#L141"><p>func centerHorizontalToSuperview(_ :)</p></a>
    - <a href="https://github.com/devmehmetates/SwiftyKit/blob/main/Sources/SwiftyKit/Kit/Extensions/UIView%20%2B%20Ext.swift#L152"><p>func centerVertical(_ :)</p></a>
    - <a href="https://github.com/devmehmetates/SwiftyKit/blob/main/Sources/SwiftyKit/Kit/Extensions/UIView%20%2B%20Ext.swift#L163"><p>func centerVerticalToSuperview(_ :)</p></a>
    - <a href="https://github.com/devmehmetates/SwiftyKit/blob/main/Sources/SwiftyKit/Kit/Extensions/UIView%20%2B%20Ext.swift#L177"><p>func pin(_ :)</p></a>
    - <a href="https://github.com/devmehmetates/SwiftyKit/blob/main/Sources/SwiftyKit/Kit/Extensions/UIView%20%2B%20Ext.swift#L252"><p>func pinToSuperview(_ :)</p></a>
    - <a href="https://github.com/devmehmetates/SwiftyKit/blob/main/Sources/SwiftyKit/Kit/Extensions/UIView%20%2B%20Ext.swift#L330"><p>func fill(_ :)</p></a>
    - <a href="https://github.com/devmehmetates/SwiftyKit/blob/main/Sources/SwiftyKit/Kit/Extensions/UIView%20%2B%20Ext.swift#L433"><p>func fillToSuperView(_ :)</p></a>
    - <a href="https://github.com/devmehmetates/SwiftyKit/blob/main/Sources/SwiftyKit/Kit/Extensions/UIView%20%2B%20Ext.swift#L539"><p>func shadow(_ :)</p></a>
    - <a href="https://github.com/devmehmetates/SwiftyKit/blob/main/Sources/SwiftyKit/Kit/Extensions/UIView%20%2B%20Ext.swift#L557"><p>func stroke(_ :)</p></a>
    - <a href="https://github.com/devmehmetates/SwiftyKit/blob/main/Sources/SwiftyKit/Kit/Extensions/UIView%20%2B%20Ext.swift#L571"><p>func cornerRadius(_ :)</p></a>
    - <a href="https://github.com/devmehmetates/SwiftyKit/blob/main/Sources/SwiftyKit/Kit/Extensions/UIView%20%2B%20Ext.swift#L582"><p>func contentMode(_ :)</p></a>
    - <a href="https://github.com/devmehmetates/SwiftyKit/blob/main/Sources/SwiftyKit/Kit/Extensions/UIView%20%2B%20Ext.swift#L592"><p>func tintColor(_ :)</p></a>
    - <a href="https://github.com/devmehmetates/SwiftyKit/blob/main/Sources/SwiftyKit/Kit/Extensions/UIView%20%2B%20Ext.swift#L602"><p>func backgroundColor(_ :)</p></a>
    - <a href="https://github.com/devmehmetates/SwiftyKit/blob/main/Sources/SwiftyKit/Kit/Extensions/UIView%20%2B%20Ext.swift#L612"><p>func clipsToBounds(_ :)</p></a>
    - <a href="https://github.com/devmehmetates/SwiftyKit/blob/main/Sources/SwiftyKit/Kit/Extensions/UIView%20%2B%20Ext.swift#L622"><p>func transform(_ :)</p></a>

## Contributing
If you find a bug or have a feature request, please open an issue on the GitHub repository. Pull requests are also welcome.

## License
SwiftyKit is released under the Apache License. See <a href="https://github.com/devmehmetates/SwiftyKit/blob/main/LICENSE">LICENSE</a> for more information.
