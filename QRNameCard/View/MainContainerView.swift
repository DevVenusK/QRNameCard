//
//  mainView.swift
//  QRNameCard
//
//  Created by 김효성 on 2020/08/31.
//  Copyright © 2020 김효성. All rights reserved.
//

import UIKit

protocol MainContainerViewDelegate {
    func didTapButton(_ action: MainContainerView.Action)
}

final class MainContainerView: UIView {
    enum Action {
        case startCarSacnButton
        case checkSavedCardButton
    }
    
    public var delegate: MainContainerViewDelegate?
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "NameCard"
        return label
    }()
    
    private let startCardScanButton: UIButton = {
        let button = UIButton()
        button.setTitle("Scan", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.addTarget(self, action: #selector(didTapStartCardScanButton(_:)), for: .touchUpInside)
        return button
    }()
    
    private let checkSavedCardButton: UIButton = {
        let button = UIButton()
        button.setTitle("CheckSavedCard", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.addTarget(self, action: #selector(didTapCheckSavedCardButton(_:)), for: .touchUpInside)
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
extension MainContainerView {
    private func setupUI() {
        backgroundColor = .white
        setupTitleLabel()
        setupStartCardScanButton()
        setupCheckSavedCardButton()
    }
    
    private func setupTitleLabel() {
        addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        [titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
         titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 100)]
            .forEach { $0.isActive = true }
    }
    
    private func setupStartCardScanButton() {
        addSubview(startCardScanButton)
        startCardScanButton.translatesAutoresizingMaskIntoConstraints = false
        
        [startCardScanButton.centerXAnchor.constraint(equalTo: centerXAnchor),
         startCardScanButton.centerYAnchor.constraint(equalTo: centerYAnchor),
         startCardScanButton.widthAnchor.constraint(equalToConstant: 200),
         startCardScanButton.heightAnchor.constraint(equalToConstant: 40)]
            .forEach { $0.isActive = true }
    }
    
    private func setupCheckSavedCardButton() {
        addSubview(checkSavedCardButton)
        checkSavedCardButton.translatesAutoresizingMaskIntoConstraints = false
        
        [checkSavedCardButton.centerXAnchor.constraint(equalTo: centerXAnchor),
         checkSavedCardButton.topAnchor.constraint(equalTo: startCardScanButton.bottomAnchor, constant: 20),
         checkSavedCardButton.widthAnchor.constraint(equalToConstant: 200),
         checkSavedCardButton.heightAnchor.constraint(equalToConstant: 40)]
            .forEach { $0.isActive = true }
    }
}

// MARK: Private Function
extension MainContainerView {
   @objc private func didTapStartCardScanButton(_ sender: UIButton) {
        delegate?.didTapButton(.startCarSacnButton)
    }
    
    @objc private func didTapCheckSavedCardButton(_ sender: UIButton) {
        delegate?.didTapButton(.checkSavedCardButton)
    }
}
