//
//  ExampleView.swift
//  
//
//  Created by Mehmet Ateş on 9.04.2023.
//

import SwiftUI

#if DEBUG
@available(iOS 13.0, *)
final class ExampleView: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Deneme"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        BaseScrollView() {
            VerticalStack {
                UILabel()
                    .text(.exampleText)
                    .numberOfLines(0)
                    .padding(.horizontal, padding: 50)
                    .padding(.vertical, padding: 20)
                UILabel()
                    .text(.exampleText)
                    .numberOfLines(0)
                UILabel()
                    .text(.exampleText)
                    .numberOfLines(0)
                UILabel()
                    .text(.exampleText)
                    .numberOfLines(0)
                UILabel()
                    .text(.exampleText)
                    .numberOfLines(0)
                HorizontalStack {
                    UILabel()
                        .text("Deneme")
                    UILabel()
                        .text("Deneme")
                }
                BaseTextField()
                    .placeholder("Metin")
            }.padding()
        }.addView(view)
            .fillToSuperView()
    }
}

@available(iOS 13.0, *)
struct ExampleView_Previews: PreviewProvider {
    static var previews: some View {
        GenericUIViewControllerRepresentable { _ in
            UINavigationController(rootViewController: ExampleView())
        }
    }
}
#endif

extension String {
    static var exampleText =
"""
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam facilisis ipsum id ornare finibus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Duis vitae metus ut lectus pulvinar facilisis. Etiam pretium, nulla ut blandit facilisis, risus est porttitor mauris, vitae aliquam nisi lorem sit amet ante. Ut suscipit orci quis erat accumsan finibus. Mauris in mi et elit varius posuere. Morbi lacinia nisi eget nisi lacinia tempus. Sed a egestas tellus, sit amet vulputate mauris. Aenean efficitur nec eros vel aliquam. In non ligula pharetra, ullamcorper ligula et, rhoncus nisi. Mauris ullamcorper mi purus, ullamcorper consectetur orci tempor a. Vestibulum quis semper nunc. Praesent malesuada ornare leo, vestibulum euismod nisl dignissim vel.
"""
}
