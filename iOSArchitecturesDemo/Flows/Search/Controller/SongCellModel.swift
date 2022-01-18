//
//  SongCellModel.swift
//  iOSArchitecturesDemo
//
//  Created by Егор Кожемин on 15.01.2022.
//  Copyright © 2022 ekireev. All rights reserved.
//

import Foundation

struct SongCellModel {
    let title: String
    let subtitle: String?
}

final class SongCellModelFactory {
    
    static func cellModel(from model: ITunesSong) -> SongCellModel {
        return SongCellModel(title: model.artistName ?? "",
                            subtitle: model.collectionName ?? "")
    }
}
