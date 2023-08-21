//
//  Logic.swift
//  MBCore
//
//  Created by ITService on 19/08/23.
//

import Foundation
import UIKit

public  class Logic {
    public static func startLogic() {
        print("BLYAT00000")
    }
}

@IBDesignable public class View : UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .red
        
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.backgroundColor = .red
    }
}
