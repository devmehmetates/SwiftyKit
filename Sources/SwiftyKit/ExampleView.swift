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
                for _ in 0...10 {
                    HorizontalStack {
                        createCardRow("Row", image: "https://picsum.photos/200")
                        createCardRow("Row", image: "https://picsum.photos/200")
                    }.frame(width: 90.0.responsiveW)
                        .distribution(.equalSpacing)
                }
            }.padding()
        }.addView(view)
            .fillToSuperView()
    }
    
    private func createCardRow(_ title: String, image: String) -> UIView {
        VerticalStack {
            UIImageView()
                .asyncImage(URL(string: image))
                .contentMode(.scaleAspectFill)
                .frame(width: 35.0.responsiveW, height: 35.0.responsiveW)
            UILabel("History")
                .font(.boldSystemFont(ofSize: 15))
        }.padding()
            .backgroundColor(.systemBackground)
            .cornerRadius(10)
            .shadow()
    }
}
#endif
