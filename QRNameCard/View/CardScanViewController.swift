//
//  CardScanViewController.swift
//  QRNameCard
//
//  Created by 김효성 on 2020/08/31.
//  Copyright © 2020 김효성. All rights reserved.
//

import AVFoundation
import UIKit

final class CardScanViewController: UIViewController {
    
    private let cardScanContainerView: UIView!
    
    init(cardScanContainerView: UIView) {
        self.cardScanContainerView = cardScanContainerView
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
}

// MARK: - Setup UI
extension CardScanViewController {
    private func setupUI() {
        guard let cardScanContainerView = cardScanContainerView as? CardScanContainerView else { return }
        view.addSubview(cardScanContainerView)
        
        cardScanContainerView.translatesAutoresizingMaskIntoConstraints = false
        
        [cardScanContainerView.topAnchor.constraint(equalTo: view.topAnchor),
         cardScanContainerView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
         cardScanContainerView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
         cardScanContainerView.trailingAnchor.constraint(equalTo: view.trailingAnchor)]
            .forEach { $0.isActive = true }
    }
}
