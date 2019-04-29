//
//  MyButton.swift
//  CalculadoraBasica
//
//  Created by Jesus Martinez on 4/28/19.
//  Copyright © 2019 Jesus Martinez. All rights reserved.
//

import UIKit

class MyButton: UIButton {
    let HStackView: UIStackView = {
        let stackview = UIStackView()
        stackview.alignment = .fill
        stackview.axis = .horizontal
        stackview.distribution = .fill
        stackview.backgroundColor = .purple
        return stackview
    }()
    let ButtonC: UIButton = {
        let button = UIButton()
        button.backgroundColor = .blue
        button.widthAnchor.constraint(equalToConstant: 64).isActive = true
        button.heightAnchor.constraint(equalToConstant: 64).isActive = true
        return button
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

