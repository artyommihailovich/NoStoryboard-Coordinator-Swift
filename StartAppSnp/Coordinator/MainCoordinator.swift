//
//  MainCoordinator.swift
//  StartAppSnp
//
//  Created by Artyom Mihailovich on 3/4/21.
//

import UIKit

final class MainCoordinator: Coordinator {
    
    var navigationController: UINavigationController?
    
    func start() {
        var mainViewController: UIViewController & Coordinate = MainViewController()
        mainViewController.coordinator = self
        navigationController?.setViewControllers([mainViewController], animated: false)
    }
    
    func eventHappened(with type: Event) {
        switch type {
        case .buttonTapped:
            var viewController: UIViewController & Coordinate = SecondViewController()
            viewController.coordinator = self
            navigationController?.pushViewController(viewController, animated: true)
        }
    }
}
