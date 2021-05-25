//
//  ViewController.swift
//  Presentation
//
//  Created by 三浦　一真 on 2021/05/25.
//

import UIKit

class ViewController: UIViewController, UIViewControllerTransitioningDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func modalAction(_ sender: AnyObject) {
           let modalVC = self.storyboard?.instantiateViewController(withIdentifier: "modal")
           modalVC!.modalPresentationStyle = .custom
           modalVC!.transitioningDelegate = self
           present(modalVC!, animated: true, completion: nil)
       }

       func presentationController(forPresented presented: UIViewController, presenting: UIViewController?, source: UIViewController) -> UIPresentationController? {
           return PresentationController(presentedViewController: presented, presenting: presenting)
       }
}

