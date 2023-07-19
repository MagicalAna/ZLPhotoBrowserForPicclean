//
//  UIViewController+Addition.swift
//  totowallet
//
//  Created by Yuan Ana on 2020/12/28.
//

import Foundation
import UIKit


public extension UIViewController {
    func bottomSafeAreaPadding() -> CGFloat {
        if #available(iOS 11.0, *) {
            return view.safeAreaInsets.bottom
        } else {
            return 0
        }
	}
}
