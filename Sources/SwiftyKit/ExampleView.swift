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
    let label = LabelBuilder()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        StackBuilder()
            .axis(.vertical)
            .addView(view)
            .centerToSuperview()
            .stroke(borderColor: .red)
            .addArrangedSubviews(
                ButtonBuilder(type: .system)
                    .setTitle("Deneme"),
                StackBuilder()
                    .addArrangedSubviews(
                        TextFieldBuilder()
                            .placeholder("Metin")
                            .onEdit{ text in
                                self.label.text(text)
                            }.onEditEnd{ text in
                                self.label.text("End")
                            }.onEditBegin{ text in
                                self.label.text("Begin")
                            },
                        label
                            .text("Deneme")
                    )
            )
    }
}

@available(iOS 13.0, *)
struct ExampleView_Previews: PreviewProvider {
    static var previews: some View {
        GenericUIViewControllerRepresentable { _ in
            ExampleView()
        }
    }
}
#endif
