//
//  CalcTextField.swift
//  ProgrammaticTipCalc
//
//  Created by Jordan Bryant on 10/13/20.
//  Copyright © 2020 Jordan Bryant. All rights reserved.
//

import UIKit

class CalcTextField: UITextField {
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        setupView()
    }
    
    private func setupView() {
        backgroundColor = .secondaryBlue()
        textColor = .white
        
        layer.masksToBounds = true
        layer.cornerRadius = 4
        layer.borderWidth = 1
        layer.borderColor = UIColor.primaryBlue().cgColor
        
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: 10, dy: 10)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: 10, dy: 10)
    }
    
    override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: 10, dy: 10)
    }
}
