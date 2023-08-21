//
//  ViewController.swift
//  AAA
//
//  Created by ITService on 21/08/23.
//

import Alamofire
import MBCore
//import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        AF.request("https://httpbin.org/get").response { response in
            debugPrint(response)
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            Logic.startLogic()
        }
    }


}

