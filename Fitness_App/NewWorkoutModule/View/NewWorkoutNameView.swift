//
//  NewWorkoutNameView.swift
//  Fitness_App
//
//  Created by KODDER on 26.06.2022.
//

import UIKit

class NewWorkoutNameView: UIView {
    
    private let nameLabel = UILabel(text: "Name")
    
    let nameTextField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = .specialBrown
        textField.layer.cornerRadius = 15
        textField.textColor = .specialGray
        textField.font = .robotoBold20()
        textField.clearButtonMode = .always
        textField.leftView = UIView(frame: CGRect(x: 0,
                                                  y: 0,
                                                  width: 15,
                                                  height: textField.frame.height))
        textField.leftViewMode = .always
        textField.returnKeyType = .done
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
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
        addSubview(nameTextField)
    }
}

//MARK: - Set Constraints

extension NewWorkoutNameView {
    
    private func setConstraints() {
        
        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: topAnchor),
            nameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10)
        ])
        
        NSLayoutConstraint.activate([
            nameTextField.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 3),
            nameTextField.leadingAnchor.constraint(equalTo: leadingAnchor),
            nameTextField.trailingAnchor.constraint(equalTo: trailingAnchor),
            nameTextField.heightAnchor.constraint(equalToConstant: 38)
        ])
        
    }
}
