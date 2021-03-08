//
//  ViewController.swift
//  StartAppSnp
//
//  Created by Artyom Mihailovich on 2/5/21.
//

import UIKit
import SnapKit

final class MainViewController: UIViewController, Coordinate {
    var coordinator: Coordinator?
    
    lazy private var label = UILabel().do {
        $0.textAlignment = .center
        $0.tintColor = .black
        $0.font = UIFont.with(.text, weight: .light)
        $0.text = "Fish text webite......"
    }
    
    lazy private var button = UIButton().do {
        $0.setTitle("Go to second screen", for: .normal)
        $0.titleLabel?.font = UIFont.with(.text, weight: .light)
        $0.tintColor = .white
        $0.backgroundColor = .systemGray4
        $0.layer.cornerRadius = 12
        $0.layer.masksToBounds = true
        $0.addTarget(self, action: #selector(buttonDidTap), for: .touchUpInside)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationController()
        setupSubViews()
    }

    private func setupNavigationController() {
        navigationItem.title = "Main"
        navigationItem.largeTitleDisplayMode = .always
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    private func setupSubViews() {
        view.addSubviews(label,
                         button)
        
        label.snp.makeConstraints {
            $0.center.equalToSuperview()
            $0.height.equalTo(30)
            $0.left.right.equalToSuperview().inset(20)
        }
        
        button.snp.makeConstraints {
            $0.top.equalTo(label.snp.bottom).offset(8)
            $0.left.right.equalToSuperview().inset(100)
            $0.height.equalTo(30)
        }
    }
    
    @objc
    private func buttonDidTap() {
        coordinator?.eventHappened(with: .buttonTapped )
    }
}
