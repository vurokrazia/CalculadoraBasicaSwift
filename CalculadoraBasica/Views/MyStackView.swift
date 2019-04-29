//
//  MyStackView.swift
//  CalculadoraBasica
//
//  Created by Jesus Martinez on 4/28/19.
//  Copyright © 2019 Jesus Martinez. All rights reserved.
//

import UIKit

class MyStackView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.backgroundColor = .blue
        
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not implemented")
    }
}
