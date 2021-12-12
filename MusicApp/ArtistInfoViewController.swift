//
//  ArtistInfoViewController.swift
//  MusicApp
//
//  Created by Lisa Sternik on 12/6/21.
//

import UIKit

class ArtistInfoViewController: UIViewController {
  
    lazy var containerView: UIView = {
        
        let view = UIView()
        view.backgroundColor = .blue
        view.addSubview(profileImageview)
        profileImageview.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        profileImageview.anchor(top: view.topAnchor, left: view.leftAnchor, paddingTop: 88, width: 120, height: 120)
        profileImageview.layer.cornerRadius = 120 / 2
        
        view.addSubview(nameLabel)
        nameLabel.anchor(top: profileImageview.bottomAnchor, paddingTop: 16)
        nameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        view.addSubview(emailLabel)
        emailLabel.anchor(top: profileImageview.bottomAnchor, paddingTop: 16)
        emailLabel.anchor(top: nameLabel.bottomAnchor, paddingTop: 6)
        return view
        
    }()
    
    
    let profileImageview: UIImageView = {
        let iv = UIImageView()
        iv.image = Image("weeknd")
        iv.contentMode = .scaleAspectFill
        iv.clipsToBounds = true
        iv.layer.borderWidth = 2
        iv.layer.borderColor = UIColor.white.cgColor
        return iv
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.text = "Artist Name"
        label.font = UIFont.boldSystemFont(ofSize: 26)
        label.textColor = .white
        return label
    }()
    
    
    let emailLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.text = "name.lastname@gmail.com"
        label.font = UIFont.boldSystemFont(ofSize: 22)
        label.textColor = .white
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .white
        view.addSubview(containerView)
        containerView.anchor(top: view.topAnchor, left: view.leftAnchor, right: view.rightAnchor, height: 280)
        view.addSubview(profileImageview)
        profileImageview.anchor(top: view.topAnchor, left: view.leftAnchor, paddingTop: 44, paddingLeft: 32, width: 120, height: 120)
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return.lightContent
    }


}

// Function to locate elements on the screen
extension UIView {
    
    func anchor(top: NSLayoutYAxisAnchor? = nil, left: NSLayoutXAxisAnchor? = nil, bottom: NSLayoutXAxisAnchor? = nil, right: NSLayoutXAxisAnchor? = nil, paddingTop: CGFloat? = 0, paddingLeft: CGFloat? = 0, paddingBottom: CGFloat? = 0, paddingRight: CGFloat? = 0, width: CGFloat? = nil, height: CGFloat? = nil) {
        
        translatesAutoresizingMaskIntoConstraints = false
        
        if let top = top {
                topAnchor.constraint(equalTo: top, constant: paddingTop!).isActive = true
            }
        if let left = left {
                leftAnchor.constraint(equalTo: left, constant: paddingLeft!).isActive = true
            }
        if let bottom = bottom {
            if let paddingBottom = paddingBottom {
                bottomAnchor.constraint(equalTo: bottom, constant: -paddingBottom).isActive = true
            }
        }
        if let right = right {
                rightAnchor.constraint(equalTo: right, constant: paddingRight!).isActive = true
            }
        if let height = height {
            heightAnchor.constraint(equalToConstant: height).isActive = true
            }
        if let width = width {
            widthAnchor.constraint(equalToConstant: width).isActive = true
            }
    }
}
