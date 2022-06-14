//
//  CalendarView.swift
//  Fitness_App
//
//  Created by KODDER on 13.06.2022.
//

import UIKit

class CalendarView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        backgroundColor = .specialGreen
        layer.cornerRadius = 10
        translatesAutoresizingMaskIntoConstraints = false
    }
}

//MARK: - Set Constraints

extension CalendarView {
    
    private func setConstraints() {
        
    }
}

