//
//  SecondVCTableViewCell.swift
//  StartAppSnp
//
//  Created by Artyom Mihailovich on 3/2/21.
//

import UIKit
import SnapKit

final class SecondVCTableViewCell: UITableViewCell {
    
    lazy var label = UILabel().do {
        $0.font = UIFont.with(.text, weight: .light)
    }
    
    lazy var descriptionLabel = UILabel().do {
        $0.font = UIFont.with(.text, weight: .light)
    }
    
    lazy private var stackView = UIStackView().do {
        $0.axis = .vertical
        $0.alignment = .leading
        $0.spacing = 8
        $0.distribution = .fillEqually
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupSubViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func setupSubViews() {
        stackView.addArrangedSubview(label)
        stackView.addArrangedSubview(descriptionLabel)
        
        contentView.addSubview(stackView)
        
        stackView.snp.makeConstraints {
            $0.edges.equalToSuperview().inset(15)
        }
    }
}
