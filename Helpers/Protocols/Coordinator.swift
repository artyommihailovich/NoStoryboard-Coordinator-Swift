//
//  CoordinatorProtocol.swift
//  StartAppSnp
//
//  Created by Artyom Mihailovich on 3/2/21.
//

import UIKit

public enum Event {
    case buttonTapped
}

public protocol Coordinator {
    var navigationController: UINavigationController? { get set }
    func start()
    func eventHappened(with type: Event)
}

public protocol Coordinate {
    var coordinator: Coordinator? { get set }
}

