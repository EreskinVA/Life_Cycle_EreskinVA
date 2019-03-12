//
//  ViewController.swift
//  Life_Cycle_EreskinVA
//
//  Created by Vladimir Ereskin on 12/03/2019.
//  Copyright © 2019 Vladimir Ereskin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        message()
    }
    
    deinit {
        message()
    }
    
    func message(_ function: String = #function) {
        print("\(Date()) \(title ?? ""): \(function)")
        globalMessages.append("\(Date()) \(title ?? ""): \(function)")
        (children.last as? MessageTVController)?.tableView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        message()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        message()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        message()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        message()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        message()
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        message()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        message()
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        message()
    }
    
    @IBAction func unwind(segue: UIStoryboardSegue) {
        message()
    }


}

