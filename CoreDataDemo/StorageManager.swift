//
//  StorageManager.swift
//  CoreDataDemo
//
//  Created by Никита Рыжкин on 07.12.2021.
//

import Foundation
import CoreData

class StorageManager {
    static let shared = StorageManager()
    
    func save(context: NSManagedObjectContext) {
        if context.hasChanges {
            do {
                try context.save()
            } catch let error {
                print(error)
            }
        }
    }
    
    func delete(task: Task, context: NSManagedObjectContext) {
        context.delete(task)
        save(context: context)
    }
    
    private init() {}
}
