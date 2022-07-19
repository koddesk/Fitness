//
//  RealmManager.swift
//  Fitness_App
//
//  Created by KODDER on 15.07.2022.
//

import UIKit
import RealmSwift

class RealmManager {

    static let shared = RealmManager()
    private init() {}
    
    let localRealm = try! Realm()
    
    func saveWorkoutModel(model: WorkoutModel) {
        try! localRealm.write{
            localRealm.add(model)
        }
    }
}

