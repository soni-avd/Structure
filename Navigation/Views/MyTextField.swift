//
//  MyTextField.swift
//  Navigation
//
//  Created by Сони Авдеева on 12/7/21.
//  Copyright © 2021 Artem Novichkov. All rights reserved.
//

import UIKit

class MyTextField: UITextField {
    
    var onText: ((String) -> Void)?
    
    init(placeholder: String,
         onText: ((String) -> Void)?) {
        self.onText = onText
        super.init(frame: .zero)
        self.placeholder = placeholder
        self.translatesAutoresizingMaskIntoConstraints = false
        self.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    @objc private func buttonTapped() {
        guard let text = text, !text.isEmpty else { return }
        onText?(text)
    }
}

