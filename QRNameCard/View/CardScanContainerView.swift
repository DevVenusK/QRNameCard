//
//  CardScanContainerView.swift
//  QRNameCard
//
//  Created by 김효성 on 2020/08/31.
//  Copyright © 2020 김효성. All rights reserved.
//

import UIKit

final class CardScanContainerView: UIView {
    private let QRScanView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.orange
        return view
    }()
    
    private let QRView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.green
        return view
    }()
    
    private let closeButton: UIButton = {
        let button = UIButton()
        button.setTitle("X", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupUI()
    }
}

// MARK: - Setup UI
extension CardScanContainerView {
    private func setupUI() {
        backgroundColor = UIColor.white
        setupQRScanView()
        setupQRView()
        setupCloseButton()
    }
    
    private func setupQRScanView() {
        addSubview(QRScanView)
        QRScanView.translatesAutoresizingMaskIntoConstraints = false
        
        [QRScanView.topAnchor.constraint(equalTo: topAnchor),
         QRScanView.bottomAnchor.constraint(equalTo: centerYAnchor),
         QRScanView.leadingAnchor.constraint(equalTo: leadingAnchor),
         QRScanView.trailingAnchor.constraint(equalTo: trailingAnchor)]
            .forEach { $0.isActive = true }
    }
    
    private func setupQRView() {
        addSubview(QRView)
        QRView.translatesAutoresizingMaskIntoConstraints = false
        
        [QRView.topAnchor.constraint(equalTo: centerYAnchor),
         QRView.bottomAnchor.constraint(equalTo: bottomAnchor),
         QRView.leadingAnchor.constraint(equalTo: leadingAnchor),
         QRView.trailingAnchor.constraint(equalTo: trailingAnchor)]
            .forEach { $0.isActive = true }
    }
    
    private func setupCloseButton() {
        addSubview(closeButton)
        closeButton.translatesAutoresizingMaskIntoConstraints = false
        
        [closeButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20),
         closeButton.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 20),
         closeButton.widthAnchor.constraint(equalToConstant: 40),
         closeButton.heightAnchor.constraint(equalToConstant: 40)]
            .forEach { $0.isActive = true }
    }
}
