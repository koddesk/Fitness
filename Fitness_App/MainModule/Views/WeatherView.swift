//
//  WeatherView.swift
//  Fitness_App
//
//  Created by KODDER on 14.06.2022.
//

import UIKit

class WeatherView: UIView {
    
    private let weatherIconImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "sun")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let weatherStatusLabel: UILabel = {
        let label = UILabel()
        label.text = "Солнечно"
        label.font = .robotoMedium18()
        label.textColor = .specialGray
        label.adjustsFontSizeToFitWidth = true
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let weatherDescriptionLabel: UILabel = {
        let label = UILabel()
        label.text = "Хорошая погода, чтобы позаниматься на улице"
        label.adjustsFontSizeToFitWidth = true
        label.textColor = .specialLightBrown
        label.font = .robotoMedium14()
        label.numberOfLines = 2
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
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
        backgroundColor = .white
        layer.cornerRadius = 10
        translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(weatherIconImageView)
        addSubview(weatherStatusLabel)
        addSubview(weatherDescriptionLabel)
    }
}

//MARK: - Set Constraints

extension WeatherView {
    
    private func setConstraints() {
        
        NSLayoutConstraint.activate([
            weatherIconImageView.centerYAnchor.constraint(equalTo: centerYAnchor),
            weatherIconImageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            weatherIconImageView.widthAnchor.constraint(equalToConstant: 60),
            weatherIconImageView.heightAnchor.constraint(equalToConstant: 60)
        ])
        
        NSLayoutConstraint.activate([
            weatherStatusLabel.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            weatherStatusLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            weatherStatusLabel.trailingAnchor.constraint(equalTo: weatherIconImageView.leadingAnchor, constant: -10),
            weatherStatusLabel.heightAnchor.constraint(equalToConstant: 20)
        ])
        
        NSLayoutConstraint.activate([
            weatherDescriptionLabel.topAnchor.constraint(equalTo: weatherStatusLabel.bottomAnchor, constant: 0),
            weatherDescriptionLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            weatherDescriptionLabel.trailingAnchor.constraint(equalTo: weatherIconImageView.leadingAnchor, constant: -10),
            weatherDescriptionLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -5)
        ])
    }
}
