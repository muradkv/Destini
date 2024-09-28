//
//  ViewController.swift
//  Destini
//
//  Created by murad on 27.09.2024.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: - Propertries
    
    private let mainView = MainView()
    
    //MARK: - Life cycle
    
    override func loadView() {
        view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

}

