//
//  ViewController.swift
//  QRNameCard
//
//  Created by 김효성 on 2020/08/31.
//  Copyright © 2020 김효성. All rights reserved.
//

import AVFoundation
import UIKit

final class MainViewController: UIViewController {

    private var mainContainerView: UIView!
    
    init(mainContainerView: UIView) {
        self.mainContainerView = mainContainerView
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
}

// MARK: - Setup UI
extension MainViewController {
    private func setupUI() {
        guard let mainContainerView = mainContainerView as? MainContainerView else { return }
        view.addSubview(mainContainerView)
        mainContainerView.delegate = self
        mainContainerView.translatesAutoresizingMaskIntoConstraints = false

        [mainContainerView.topAnchor.constraint(equalTo: view.topAnchor),
         mainContainerView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
         mainContainerView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
         mainContainerView.trailingAnchor.constraint(equalTo: view.trailingAnchor)]
            .forEach { $0.isActive = true }
    }
}

// MARK: - MainContainerViewDelegate
extension MainViewController: MainContainerViewDelegate {
    func didTapButton(_ action: MainContainerView.Action) {
        switch action {
        case .startCarSacnButton:
            let viewController = CardScanViewController(cardScanContainerView: CardScanContainerView())
            viewController.modalPresentationStyle = .fullScreen
            present(viewController, animated: true)
        case .checkSavedCardButton:
            print("Tap")
        }
    }
}
