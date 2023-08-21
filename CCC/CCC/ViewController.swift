//
//  ViewController.swift
//  CCC
//
//  Created by ITService on 21/08/23.
//

import UIKit
import SkeletonView
import MBCore

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.isSkeletonable = true
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            let gradient = SkeletonGradient(baseColor: UIColor.midnightBlue)
            self.view.showAnimatedGradientSkeleton(usingGradient: gradient)
            Logic.startLogic()
        }
    }


}

