//
//  AppDetailDescriptionView.swift
//  iOSArchitecturesDemo
//
//  Created by Егор Кожемин on 14.01.2022.
//  Copyright © 2022 ekireev. All rights reserved.
//

import UIKit

final class AppDetailDescriptionView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.configureUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.configureUI()
    }
    
    private(set) lazy var captionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Что нового"
        label.font = UIFont.boldSystemFont(ofSize: 25.0)
        label.numberOfLines = 2
        return label
    }()
    
    private(set) lazy var versionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Version 0.0.0"
        label.font = UIFont.boldSystemFont(ofSize: 16.0)
        label.textColor = .gray
        label.numberOfLines = 2
        return label
    }()
    
    private(set) lazy var releaseNotesLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "description..."
        label.font = UIFont.systemFont(ofSize: 16)
        label.textColor = .black
        return label
    }()
    
    private func configureUI() {
        self.backgroundColor = .white
        self.addSubview(self.captionLabel)
        self.addSubview(self.versionLabel)
        self.addSubview(self.releaseNotesLabel)
        self.setupConstraints()
    }
    
    private func setupConstraints(){
        
        NSLayoutConstraint.activate([
            
            self.captionLabel.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 8),
            self.captionLabel.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: 8),
            self.captionLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            
            self.versionLabel.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 8),
            self.versionLabel.bottomAnchor.constraint(equalTo: self.captionLabel.bottomAnchor, constant: 20),
            
            self.releaseNotesLabel.bottomAnchor.constraint(equalTo: self.versionLabel.bottomAnchor, constant: 30),
            self.releaseNotesLabel.trailingAnchor.constraint(equalTo: self.captionLabel.trailingAnchor),
            self.releaseNotesLabel.leadingAnchor.constraint(equalTo: self.captionLabel.leadingAnchor),
            
        ])
    }
}
