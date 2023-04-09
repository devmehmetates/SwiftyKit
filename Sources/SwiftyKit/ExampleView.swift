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
    var label = LabelBuilder()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label
            .addView(view)
            .centerToSuperview()
            .text("Deneme")
            .textColor(.red)
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
