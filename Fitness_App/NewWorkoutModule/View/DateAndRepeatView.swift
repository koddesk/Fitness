//
//  DateAndRepeatView.swift
//  Fitness_App
//
//  Created by KODDER on 28.06.2022.
//

import Foundation
import UIKit

class DateAndRepeatView: UIView {
    
    private let nameLabel = UILabel(text: "Date and repeat")
    
    private let insideView: UIView = {
        let view = UIView()
        view.backgroundColor = .specialBrown
        view.layer.cornerRadius = 15
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let datePicker: UIDatePicker = {
        let datePicker = UIDatePicker()
        datePicker.datePickerMode = .date
        datePicker.tintColor = .specialGreen
        datePicker.translatesAutoresizingMaskIntoConstraints = false
        return datePicker
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        backgroundColor = .none
        translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(nameLabel)
        addSubview(insideView)
        addSubview(datePicker)
    }
}

//MARK: - Set Constraints

extension DateAndRepeatView {
    
    private func setConstraints() {
        
        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: topAnchor),
            nameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10)
        ])
        
        NSLayoutConstraint.activate([
            insideView.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 3),
            insideView.leadingAnchor.constraint(equalTo: leadingAnchor),
            insideView.trailingAnchor.constraint(equalTo: trailingAnchor),
            insideView.heightAnchor.constraint(equalToConstant: 150)
        ])
        
        NSLayoutConstraint.activate([
            datePicker.topAnchor.constraint(equalTo: insideView.topAnchor, constant: 5),
            datePicker.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 25)
        ])
    }
}
