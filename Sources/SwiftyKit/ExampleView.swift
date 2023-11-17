//
//  ExampleView.swift
//  
//
//  Created by Mehmet Ateş on 9.04.2023.
//

import SwiftUI

#if DEBUG
@available(iOS 13.0, *)
struct ExampleView_Previews: PreviewProvider {
    static var previews: some View {
        GenericUIViewControllerRepresentable { _ in
            UINavigationController(rootViewController: ExampleView())
        }
    }
}

@available(iOS 13.0, *)
final class ExampleView: SwiftyViewController {
    override var content: UIView {
        BaseScrollView {
            VerticalStack {
                for _ in 0...10 {
                    HorizontalStack {
                        createCardRow("Row", image: "https://picsum.photos/200")
                        createCardRow("Row", image: "https://picsum.photos/200")
                        
                    }.frame(width: 90.0.responsiveW)
                        .distribution(.equalSpacing)
                }
            }.padding()
        }
    }

    private func createCardRow(_ title: String, image: String) -> UIView {
        lazy var label = UILabel("History")
            .font(.boldSystemFont(ofSize: 15))
        
        return VerticalStack {
            UIImageView()
                .asyncImage(URL(string: image))
                .contentMode(.scaleAspectFill)
                .cornerRadius(8)
                .clipsToBounds(true)
            
            BaseButton(type: .system)
                .setTitle("Update Label")
                .didClick {
                    label.text = "Updated"
                }
            
            label
        }.padding()
            .backgroundColor(.systemBackground)
            .cornerRadius(10)
            .shadow()
            .frame(width: 45.0.responsiveW, height: 50.responsiveW)
    }
}
#endif
