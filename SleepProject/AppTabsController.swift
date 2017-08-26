//  Created by Jean-Charles Koch on 05/08/2017.
//  Copyright © 2017 Jean-Charles Koch. All rights reserved.

import UIKit
import Material

class AppTabsController: TabsController {
    open override func prepare() {
        super.prepare()
        view.backgroundColor = Color.cyan.lighten5
        preparePageTabBar()
    }
}

extension AppTabsController {
    fileprivate func preparePageTabBar() {
        tabBarAlignment = .top
        tabBar.isDividerHidden = true
        tabBar.lineAlignment = .bottom
        tabBar.lineColor = Color.cyan.lighten3
        tabBar.backgroundColor = Color.cyan.darken2
    }
}

