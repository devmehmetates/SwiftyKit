//
//  File.swift
//  
//
//  Created by Mehmet Ateş on 15.04.2023.
//

import UIKit

public extension UIImageView {
    @available(iOS 13.0, *)
    @discardableResult
    func imageSystemName(_ systemName: String) -> Self {
        let image = UIImage(systemName: systemName)
        self.image = image
        return self
    }
    
    @discardableResult
    func imageNamed(_ named: String) -> Self {
        let image = UIImage(named: named)
        self.image = image
        return self
    }
    
    func asyncImage(_ url: URL?) -> Self {
        guard let url else { return self }
        
        URLSession.shared.dataTask(with: url) { data, _, error in
            if error != nil { debugPrint("Image load failed") }
            guard let data, let image = UIImage(data: data) else { return }
            DispatchQueue.main.async {
                self.image = image
            }
        }.resume()
        return self
    }
}
