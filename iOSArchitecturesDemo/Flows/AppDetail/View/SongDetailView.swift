//
//  SongDetailView.swift
//  iOSArchitecturesDemo
//
//  Created by Егор Кожемин on 15.01.2022.
//  Copyright © 2022 ekireev. All rights reserved.
//

import UIKit

final class SongDetailView: UIView {
    
    private(set) lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 20.0)
        label.numberOfLines = 2
        return label
    }()
    
    private(set) lazy var subtitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .lightGray
        label.font = UIFont.systemFont(ofSize: 14.0)
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.configureUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.configureUI()
    }
    
    private func configureUI() {
        self.backgroundColor = .white
        self.setupLayout()
        self.setupConstraints()
    }
    
    private func setupLayout() {
        self.addSubview(self.titleLabel)
        self.addSubview(self.subtitleLabel)
    }
    
    private func setupConstraints(){
        NSLayoutConstraint.activate([
            
            self.titleLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 20.0),
            self.titleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 8.0),
            
            self.subtitleLabel.topAnchor.constraint(equalTo: self.titleLabel.bottomAnchor, constant: 12.0),
            self.subtitleLabel.leftAnchor.constraint(equalTo: self.titleLabel.leftAnchor),
            self.subtitleLabel.rightAnchor.constraint(equalTo: self.titleLabel.rightAnchor),
        ])
    }
}
