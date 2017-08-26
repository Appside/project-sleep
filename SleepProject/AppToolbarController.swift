//  Created by Jean-Charles Koch on 05/08/2017.
//  Copyright © 2017 Jean-Charles Koch. All rights reserved.

import UIKit
import Material

class AppToolbarController: ToolbarController {
    fileprivate var menuButton: IconButton!
    fileprivate var starButton: IconButton!
    fileprivate var searchButton: IconButton!
    
    open override func prepare() {
        super.prepare()
        prepareMenuButton()
        //prepareStarButton()
        //prepareSearchButton()
        prepareStatusBar()
        prepareToolbar()
    }
}

extension AppToolbarController {
    fileprivate func prepareMenuButton() {
        menuButton = IconButton(image: Icon.cm.menu, tintColor: .white)
        menuButton.pulseColor = .white
    }
    
    fileprivate func prepareStarButton() {
        starButton = IconButton(image: Icon.cm.star, tintColor: .white)
        starButton.pulseColor = .white
    }
    
    fileprivate func prepareSearchButton() {
        searchButton = IconButton(image: Icon.cm.search, tintColor: .white)
        searchButton.pulseColor = .white
    }
    
    fileprivate func prepareStatusBar() {
        statusBarStyle = .lightContent
        statusBar.backgroundColor = Color.cyan.darken3
    }
    
    fileprivate func prepareToolbar() {
        toolbar.depthPreset = .none
        toolbar.backgroundColor = Color.cyan.darken2
        
        toolbar.title = "Project Sleep"
        toolbar.titleLabel.textColor = .white
        toolbar.titleLabel.textAlignment = .left
        
        toolbar.detailLabel.textColor = .white
        toolbar.detailLabel.textAlignment = .left
        
        toolbar.leftViews = [menuButton]
        //toolbar.rightViews = [starButton, searchButton]
    }
}
