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
        navigationController?.navigationBar.backgroundColor = .systemBackground
        view.backgroundColor(.gray.withAlphaComponent(0.1))
        
        BaseScrollView {
            VerticalStack {
                UIView()
                
                VerticalStack {
                    UILabel()
                        .text("Section Title")
                        .font(.systemFont(ofSize: 14))
                        .textColor(.gray)
                        .padding(padding: 5)
                        .padding(.horizontal)

                    for num in 0...2 {
                        stackCreator("Key: \(num)", description: "Value")
                    }
                }
                VerticalStack {
                    for num in 0...2 {
                        stackCreator("Key: \(num)", description: "Value")
                    }
                }
                
                VerticalStack {
                    for num in 0...20 {
                        stackCreator("Key: \(num)", description: "Value")
                    }
                }
                
                BaseButton(type: .system)
                    .setTitle("Onay")
                    .backgroundColor(.white)
                    .tintColor(.red)
                    .height(56)
                    .cornerRadius(10)
                    .stroke(borderColor: .black.withAlphaComponent(0.2))
                    .padding(.horizontal)
            }.spacing(20)
        }.addView(view)
            .fillToSuperView()
    }
    
    func stackCreator(_ title: String, description: String) -> UIView {

        HorizontalStack {
            UILabel()
                .text(title)
                .font(.systemFont(ofSize: 16, weight: .bold))
            Spacer()
            UILabel()
                .text(description)
                .font(.systemFont(ofSize: 16))
        }.padding()
            .backgroundColor(.systemBackground)
            .cornerRadius(10)
            .padding(.horizontal)
            .padding(.vertical, padding: 5)
            .shadow()
            
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
