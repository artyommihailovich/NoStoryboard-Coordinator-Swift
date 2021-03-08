//
//  SceneDelegate.swift
//  StartAppSnp
//
//  Created by Artyom Mihailovich on 2/5/21.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let scene = (scene as? UIWindowScene) else { return }
        let navigationController = UINavigationController()
        let coordinator = MainCoordinator()
        
        coordinator.navigationController = navigationController
        
        window = UIWindow(windowScene: scene)
        window?.backgroundColor = .offWhite
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
        
        coordinator.start()
    }
}

