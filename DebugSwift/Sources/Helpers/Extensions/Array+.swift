//
//  Array+.swift
//  DebugSwift
//
//  Created by Carlos Fonseca on 07/02/2025.
//

import UIKit

@MainActor
public extension Array where Element: UIViewController {
    mutating func move(_ feature: DebugSwiftFeature, to: Int) {
        guard let index = firstIndex(where: {
            (($0 as? UINavigationController)?.viewControllers.first as? MainFeatureType)?.controllerType == feature
        }) else { return }
        insert(remove(at: index), at: to)
    }

    mutating func move<T>(_: T.Type, to: Int) {
        guard let index = firstIndex(where: {
            ($0 as? UINavigationController)?.viewControllers.first is T
        }) else { return }
        insert(remove(at: index), at: to)
    }
}
