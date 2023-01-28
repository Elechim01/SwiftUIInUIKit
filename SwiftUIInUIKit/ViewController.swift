//
//  ViewController.swift
//  UIKitApp
//
//  Created by Michele Manniello on 06/11/21.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        Hidding Nav Bar...
//        self.navigationController?.navigationBar.isHidden = true
        extractView()
    }
    
    
// MARK:  Extracting SwiftUi View And Setting to UIKit View..
    func extractView(){
        let hostView = UIHostingController(rootView: HomeView(onTapEditProfile: {
            print("Ciao")
        }))
        hostView.view.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(hostView.view)
        
//        Constraints...
//        Clipping SwiftUI View to UiKit View...
        let constraints = [
            hostView.view.topAnchor.constraint(equalTo: view.topAnchor),
            hostView.view.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            hostView.view.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            hostView.view.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
//            Height And Width...
            hostView.view.widthAnchor.constraint(equalTo: view.widthAnchor),
            hostView.view.heightAnchor.constraint(equalTo: view.heightAnchor)
        ]
        self.view.addConstraints(constraints)
        
    }

}

