//
//  ViewController.swift
//  BBB
//
//  Created by ITService on 21/08/23.
//

import UIKit
import MBCore
import SkeletonView

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let view1 = UIView()
        view.addSubview(view1)
        view1.isSkeletonable = true
        view1.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            view1.heightAnchor.constraint(equalToConstant: 100),
            view1.widthAnchor.constraint(equalToConstant: 100),
            view1.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            view1.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])
        
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            view1.showAnimatedGradientSkeleton()
            Logic.startLogic()
        }
    }


}

