//
//  ViewController.swift
//  Navigation
//
//  Created by Artem Novichkov on 12.09.2020.
//  Copyright © 2020 Artem Novichkov. All rights reserved.
//

import UIKit
import StorageService

final class FeedViewController: UIViewController {
    
    let post = Post(title: "Post")
    
    private lazy var buttonOpen: MyButton = {
        let button = MyButton(type:.system) { [weak self] in
            
            let postStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let postViewController = postStoryboard.instantiateViewController(withIdentifier: "Post") as! PostViewController
            self?.navigationController?.pushViewController(postViewController, animated: true)
        }
        button.setTitle("Post", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .yellow
        return button
    }()
    private lazy var buttonPost: MyButton = {
        let button = MyButton(type:.system) { [weak self] in
            let postStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let postViewController = postStoryboard.instantiateViewController(withIdentifier: "Post") as! PostViewController
            self?.navigationController?.pushViewController(postViewController, animated: true)
        }
        button.setTitle("Post", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .yellow
        return button
    }()
    
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        print(type(of: self), #function)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        print(type(of: self), #function)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(type(of: self), #function)
        
        let stackViewButtons = UIStackView()
        stackViewButtons.axis = .vertical
        stackViewButtons.spacing = 10
        stackViewButtons.alignment = .fill
        stackViewButtons.distribution = .fillEqually
        stackViewButtons.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(stackViewButtons)
        stackViewButtons.addArrangedSubview(buttonOpen)
        stackViewButtons.addArrangedSubview(buttonPost)
        
        NSLayoutConstraint.activate([
            stackViewButtons.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackViewButtons.centerYAnchor.constraint(equalTo: view.centerYAnchor)
            
        ])
        
    }
    //    private func buttonPressed() -> Void {
    //
    //        let postStoryboard = UIStoryboard(name: "Main", bundle: nil)
    //        let postViewController = postStoryboard.instantiateViewController(withIdentifier: "Post") as! PostViewController
    //        navigationController?.pushViewController(postViewController, animated: true)
    //    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print(type(of: self), #function)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print(type(of: self), #function)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print(type(of: self), #function)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print(type(of: self), #function)
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        print(type(of: self), #function)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        print(type(of: self), #function)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "post" else {
            return
        }
        guard let postViewController = segue.destination as? PostViewController else {
            return
        }
        postViewController.post = post
    }
}
