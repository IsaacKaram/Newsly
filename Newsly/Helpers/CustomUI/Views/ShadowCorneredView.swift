//
//  ShadowCorneredView.swift
//  Newsly
//
//  Created by Isaac Karam on 29/03/22.
//

import UIKit

class ShadowCorneredView: UIView {
    
    @IBInspectable public var cornerRadius: CGFloat = 10
    
    // MARK: - View Lifecycle
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupView()
    }
    
    // MARK: - Helper Methods
    
    private func setupView() {
        self.layer.cornerRadius = cornerRadius
        self.clipsToBounds = true
        self.layer.shadowColor = UIColor.gray.cgColor
        self.layer.shadowOffset = .zero
        self.layer.shadowOpacity = 0.5
        self.layer.shadowRadius = 2
        self.layer.masksToBounds = false
    }
}
