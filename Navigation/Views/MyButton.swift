//
//  MyButton.swift
//  Navigation
//
//  Created by Сони Авдеева on 28/6/21.
//  Copyright © 2021 Artem Novichkov. All rights reserved.
//

import UIKit

final class MyButton: UIButton {
    var onTap: (() -> Void)?
    var type: ButtonType
    init(type: ButtonType, onTap: (() -> Void)?) {
        self.onTap = onTap
        self.type = type
        super.init(frame: .zero)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc private func buttonPressed() {
        onTap?()
    }
}
