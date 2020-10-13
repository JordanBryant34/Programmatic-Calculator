//
//  CalcButton.swift
//  ProgrammaticTipCalc
//
//  Created by Jordan Bryant on 10/13/20.
//  Copyright © 2020 Jordan Bryant. All rights reserved.
//

import UIKit

class CalcButton: UIButton {
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        setupView()
    }
    
    func setupView() {
        layer.masksToBounds = true
        layer.cornerRadius = frame.height / 2
            
        tintColor = .clear
        
        setTitleColor(.white, for: .selected)
        
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    func toggleButton(selected: Bool) {
        isSelected = selected
        
        if isSelected {
            backgroundColor = .primaryBlue()
        } else {
            backgroundColor = .secondaryBlue()
        }
    }
}
