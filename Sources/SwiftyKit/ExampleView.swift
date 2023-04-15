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
    var images = [
        "https://media-rockstargames-com.akamaized.net/rockstargames-newsite/img/global/downloads/buddyiconsconavatars/v_casino_heist2_256x256.jpg",
        "https://media-rockstargames-com.akamaized.net/rockstargames-newsite/img/global/downloads/buddyiconsconavatars/v_casino_heist3_256x256.jpg",
        "https://media-rockstargames-com.akamaized.net/rockstargames-newsite/img/global/downloads/buddyiconsconavatars/v_doomsdayheist2_256x256.jpg",
        "https://media-rockstargames-com.akamaized.net/rockstargames-newsite/img/global/downloads/buddyiconsconavatars/v_gunrunning_girl_256x256.jpg",
        "https://media-rockstargames-com.akamaized.net/rockstargames-newsite/img/global/downloads/buddyiconsconavatars/v_halloweensurprise_girl_256x256.jpg"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Metin"
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.backgroundColor = .systemBackground
        view.backgroundColor(.gray.withAlphaComponent(0.1))
        
        BaseScrollView {
            VerticalStack {
                UIImageView()
                    .imageSystemName("applelogo")
                    .contentMode(.scaleAspectFit)
                    .padding(.top)

                for (index, image) in images.lazy.enumerated() {
                    createProfileCard(image, title: "Avatar: \(index)")
                }
                
                BaseTextField()
                    .placeholder("Metin")
                    .onEdit { text in
                        self.title = text
                    }
                    .padding(.horizontal)
                
                BaseButton(type: .system)
                    .setTitle("Değiştir")
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
    
    func createProfileCard(_ image: String, title: String) -> UIView {
        HorizontalStack {
            UIImageView()
                .asyncImage(URL(string: image))
                .contentMode(.scaleAspectFit)
                .clipsToBounds(true)
                .frame(width: 50, height: 50)
                .backgroundColor(.gray.withAlphaComponent(0.2))
                .cornerRadius(10)
            UILabel(title)
                .textColor(.red)
                .font(.systemFont(ofSize: 12, weight: .light))
            Spacer()
            BaseButton(type: .system)
                .didClick {
                    let vc = UIViewController()
                    vc.view.backgroundColor = .systemBackground
                    vc.navigationController?.navigationBar.prefersLargeTitles = false
                    vc.view.backgroundColor(.blue)
                    UIImageView()
                        .asyncImage(URL(string: image))
                        .contentMode(.scaleAspectFill)
                        .addView(vc.view)
                        .centerToSuperview()
                    self.navigationController?.pushViewController(vc, animated: true)
                }
                .setTitle("Detail")
                .padding(.horizontal)
        }.spacing(10)
            .backgroundColor(.systemBackground)
            .cornerRadius(10)
            .shadow()
            .padding(.horizontal)
            
    }
    
    func createAdvantageCard(_ image: String) -> UIView {
        VerticalStack {
            UIImageView()
                .asyncImage(URL(string: image))
                .contentMode(.scaleAspectFill)
                .clipsToBounds(true)
            HorizontalStack {
                UISwitch()
                Spacer()
                UILabel()
                    .text("Avantajı Seç")
                    .padding(.horizontal)
            }.alignment(.center)
                .height(50)
                .padding(.leading)
        }.height(200)
            .cornerRadius(10)
            .backgroundColor(.systemBackground)
            .padding(.horizontal)
            .shadow(offset: CGSize(width: 0, height: 9))
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
