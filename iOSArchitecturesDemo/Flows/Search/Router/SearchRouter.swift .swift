//
//  SearchRouter.swift .swift
//  iOSArchitecturesDemo
//
//  Created by Егор Кожемин on 19.01.2022.
//  Copyright © 2022 ekireev. All rights reserved.
//

import UIKit

protocol SearchRouterInput {
    
    func openDetails(for app: ITunesApp)
    
    func openAppInITunes(_ app: ITunesApp)
}

final class SearchRouter: SearchRouterInput {
    
    weak var viewController: UIViewController?
    
    func openDetails(for app: ITunesApp) {
        let appDetaillViewController = AppDetailViewController(app: app)
        self.viewController?.navigationController?.pushViewController(appDetaillViewController, animated: true)
    }
    
    func openAppInITunes(_ app: ITunesApp) {
        guard let urlString = app.appUrl, let url = URL(string: urlString) else {
            return
        }
        UIApplication.shared.open(url, options: [:], completionHandler: nil)
    }
}
