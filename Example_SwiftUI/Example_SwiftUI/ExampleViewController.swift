//
//  ExampleViewController.swift
//  Example_SwiftUI
//
//  Created by Carlos Fonseca on 07/02/2025.
//

import SwiftUI

public class ExampleViewController: UIHostingController<ExampleScreen> {
    public init() {
        super.init(rootView: ExampleScreen())
        self.tabBarItem = UITabBarItem(title: "Example", image: UIImage(systemName: "ellipsis.rectangle"), tag: 0)
    }

    @available(*, unavailable)
    public required init?(coder _: NSCoder) {
        fatalError("not implemented")
    }

    public override func viewDidLoad() {
        super.viewDidLoad()
        title = "Example"
    }
}

public struct ExampleScreen: View {
    public var body: some View {
        Text("Example")
    }
}
