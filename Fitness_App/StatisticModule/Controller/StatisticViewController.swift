//
//  StatisticViewController.swift
//  Fitness_App
//
//  Created by KODDER on 16.06.2022.
//

import UIKit

class StatisticViewController: UIViewController {
    
    private let statisticLabel: UILabel = {
        let label = UILabel()
        label.text = "STATISTIC"
        label.font = .robotoMedium24()
        label.textColor = .specialGray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var segmentControl: UISegmentedControl = {
        let segmentControl = UISegmentedControl(items: ["Week", "Month"])
        segmentControl.backgroundColor = .specialGreen
        segmentControl.selectedSegmentTintColor = .specialYellow
        segmentControl.selectedSegmentIndex = 0
        let font = UIFont(name: "Roboto-Medium", size: 16)
        segmentControl.setTitleTextAttributes([.font: font as Any, .foregroundColor: UIColor.white], for: .normal)
        segmentControl.setTitleTextAttributes([.font: font as Any, .foregroundColor: UIColor.specialGray], for: .selected)
        segmentControl.addTarget(self, action: #selector(segmentedChange), for: .valueChanged)
        segmentControl.translatesAutoresizingMaskIntoConstraints = false
        return segmentControl
    }()
    
    private let exercisesLabel: UILabel = {
        let label = UILabel()
        label.text = "Exercises"
        label.font = .robotoMedium14()
        label.textColor = .specialLightBrown
        label.adjustsFontSizeToFitWidth = true
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let statisticView = StatisticView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        setConstraints()
    }
    
    private func setupViews() {
        view.backgroundColor = .specialBackground
        
        view.addSubview(statisticLabel)
        view.addSubview(segmentControl)
        view.addSubview(exercisesLabel)
        view.addSubview(statisticView)
    }
    
    @objc private func segmentedChange() {
        if segmentControl.selectedSegmentIndex == 0 {
            print("Week")
        } else {
            print("Month")
        }
    }
}

//MARK: - Set Constraints

extension StatisticViewController {
    
    private func setConstraints() {
        
        NSLayoutConstraint.activate([
            statisticLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            statisticLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
        NSLayoutConstraint.activate([
            segmentControl.topAnchor.constraint(equalTo: statisticLabel.bottomAnchor, constant: 5),
            segmentControl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            segmentControl.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
        
        NSLayoutConstraint.activate([
            exercisesLabel.topAnchor.constraint(equalTo: segmentControl.bottomAnchor, constant: 10),
            exercisesLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            exercisesLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
        
        NSLayoutConstraint.activate([
            statisticView.topAnchor.constraint(equalTo: exercisesLabel.bottomAnchor, constant: 5),
            statisticView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            statisticView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            statisticView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -80)
        ])
    }
}
