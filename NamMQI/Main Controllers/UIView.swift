//
//  UIView.swift
//  NamMQI
//
//  Created by Abdusamad Mamasoliyev on 16/04/24.
//

import Foundation
import UIKit

extension UIView {
  
    func addSubviews(_ views: UIView...) {
        views.forEach { view in
            self.addSubview(view)
            view.translateFalse()
        }
    }
    
    func translateFalse() {
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func top(_ Anchor: NSLayoutAnchor<NSLayoutYAxisAnchor>, _ Constraint: CGFloat) {
        self.topAnchor.constraint(equalTo: Anchor, constant: Constraint).isActive = true
    }
    
    func bottom(_ Anchor: NSLayoutAnchor<NSLayoutYAxisAnchor>, _ Constraint: CGFloat) {
        self.bottomAnchor.constraint(equalTo: Anchor, constant: Constraint).isActive = true
    }
    
    func left(_ Anchor: NSLayoutAnchor<NSLayoutXAxisAnchor>, _ Constraint: CGFloat) {
        self.leftAnchor.constraint(equalTo: Anchor, constant: Constraint).isActive = true
    }
    
    func right(_ Anchor: NSLayoutAnchor<NSLayoutXAxisAnchor>, _ Constraint: CGFloat) {
        self.rightAnchor.constraint(equalTo: Anchor, constant: Constraint).isActive = true
    }
    
    func X(_ Anchor: NSLayoutAnchor<NSLayoutXAxisAnchor>, _ Constraint: CGFloat) {
        self.centerXAnchor.constraint(equalTo: Anchor, constant: Constraint).isActive = true
    }
    
    func Y(_ Anchor: NSLayoutAnchor<NSLayoutYAxisAnchor>, _ Constraint: CGFloat) {
        self.centerYAnchor.constraint(equalTo: Anchor, constant: Constraint).isActive = true
    }
    
    func width(_ Constraint: CGFloat) {
        self.widthAnchor.constraint(equalToConstant: Constraint).isActive = true
    }
    
    func height(_ Constraint: CGFloat) {
        self.heightAnchor.constraint(equalToConstant: Constraint).isActive = true
    }
    
    func width(_ Anchor: NSLayoutAnchor<NSLayoutDimension>, _ Constraint: CGFloat) {
        self.widthAnchor.constraint(equalTo: Anchor, constant: Constraint).isActive = true
    }
    
    func height(_ Anchor: NSLayoutAnchor<NSLayoutDimension>, _ Constraint: CGFloat) {
        self.heightAnchor.constraint(equalTo: Anchor, constant: Constraint).isActive = true
    }
}
