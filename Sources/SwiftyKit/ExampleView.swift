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

@available(iOS 13.0, *)
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
#endif
