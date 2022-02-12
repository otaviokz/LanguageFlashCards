//
//  NSSortDescriptor+Utils.swift
//  LanguageFlashCards
//
//  Created by Otávio Zabaleta on 12/02/2022.
//

import CoreData

extension NSSortDescriptor {
    convenience init<Root, Value>(_ keyPath: KeyPath<Root, Value>, ascending: Bool = true) {
        self.init(keyPath: keyPath, ascending: ascending)
    }

    static func ascending<Root, Value>(keyPath: KeyPath<Root, Value>) -> NSSortDescriptor {
        .init(keyPath: keyPath, ascending: true)
    }

    static func descending<Root, Value>(keyPath: KeyPath<Root, Value>) -> NSSortDescriptor {
        .init(keyPath: keyPath, ascending: false)
    }
}
