//
//  SongDetailViewController.swift
//  iOSArchitecturesDemo
//
//  Created by Егор Кожемин on 15.01.2022.
//  Copyright © 2022 ekireev. All rights reserved.
//

import UIKit

final class SongDetailViewController: UIViewController {
    public var song: ITunesSong
    
    private var songDetailView: SongDetailView {
        return self.view as! SongDetailView
    }
    
    init(song: ITunesSong) {
        self.song = song
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = SongDetailView()
        self.configureUI()
        fillData()
    }
    
    private func configureUI() {
        self.view.backgroundColor = .white
        self.navigationController?.navigationBar.tintColor = UIColor.white;
        self.navigationItem.title = song.artistName
        self.navigationItem.largeTitleDisplayMode = .always
    }
    
    private func fillData() {
        self.songDetailView.titleLabel.text = song.artistName
        self.songDetailView.subtitleLabel.text = song.trackName
    }
    
}
