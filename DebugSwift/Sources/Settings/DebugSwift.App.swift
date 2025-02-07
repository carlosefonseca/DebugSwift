//
//  DebugSwift.App.swift
//  DebugSwift
//
//  Created by Matheus Gois on 11/06/24.
//

import UIKit

extension DebugSwift {
    public enum App {
        public static var customInfo: (() -> [CustomData])?
        public static var customAction: (() -> [CustomAction])?
        public static var customControllers: (() -> [UIViewController])?
        public static var customizeTabBar: ((UITabBarController) -> Void)?

        static var defaultControllers: [UIViewController & MainFeatureType] = [
            NetworkViewController(),
            PerformanceViewController(),
            InterfaceViewController(),
            ResourcesViewController(),
            AppViewController()
        ]

        static var disableMethods: [DebugSwiftSwizzleFeature] = []
    }
}
