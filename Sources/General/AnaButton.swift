//
//  AnaButton.swift
//  photoframe
//
//  Created by MagicAna on 2022/2/25.
//

import UIKit


enum AnaButtonTitleType {
	case top
	case bottom
	case leading
	case training
}


class AnaButton: UIButton {
	var type = AnaButtonTitleType.top
	var margin: CGFloat = 0
	
	
	convenience init(type: AnaButtonTitleType, margin: CGFloat) {
		self.init()
		self.type = type
		self.margin = margin
	}
	
	
	override func titleRect(forContentRect contentRect: CGRect) -> CGRect {
		let titleRect = super.titleRect(forContentRect: contentRect)
		let imageRect = super.imageRect(forContentRect: contentRect)
		var point: CGPoint!
		switch type {
		case .top:
			point = CGPoint(x: (contentRect.width - titleRect.width) / 2,
							y: (contentRect.height - titleRect.height - margin - imageRect.height) / 2)
		case .bottom:
			point = CGPoint(x: (contentRect.width - titleRect.width) / 2,
							y: (contentRect.height - imageRect.height - margin - titleRect.height) / 2 + imageRect.height + margin)
		case .leading:
			point = CGPoint(x: (contentRect.width - titleRect.width - margin - imageRect.width) / 2,
							y: (contentRect.height - titleRect.height) / 2)
		case .training:
			point = CGPoint(x: (contentRect.width - imageRect.width - margin - titleRect.width) / 2 + imageRect.width + margin,
							y: (contentRect.height - titleRect.height) / 2)
		}
		return CGRect(origin: point, size: titleRect.size)
	}
	
	
	override func imageRect(forContentRect contentRect: CGRect) -> CGRect {
		let titleRect = super.titleRect(forContentRect: contentRect)
		let imageRect = super.imageRect(forContentRect: contentRect)
		var point: CGPoint!
		switch type {
		case .top:
			point = CGPoint(x: (contentRect.width - imageRect.width) / 2,
							y: (contentRect.height - titleRect.height - margin - imageRect.height) / 2 + titleRect.height + margin)
		case .bottom:
			point = CGPoint(x: (contentRect.width - imageRect.width) / 2,
							y: (contentRect.height - imageRect.height - margin - titleRect.height) / 2)
		case .leading:
			point = CGPoint(x: (contentRect.width - titleRect.width - margin - imageRect.width) / 2 + titleRect.width + margin,
							y: (contentRect.height - imageRect.height) / 2)
		case .training:
			point = CGPoint(x: (contentRect.width - imageRect.width - margin - titleRect.width) / 2,
							y: (contentRect.height - imageRect.height) / 2)
		}
		return CGRect(origin: point, size: imageRect.size)
	}
}
