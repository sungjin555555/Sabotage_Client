//
//  ActionItemController.swift
//  Sabotage
//
//  Created by 오성진 on 12/27/23.
//

import UIKit

class ActionItemController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        // "액션 아이템 생성" 텍스트를 보여줄 레이블 생성
        let titleLabel = UILabel()
        titleLabel.text = "액션 아이템 생성"
        titleLabel.textAlignment = .center
        titleLabel.font = UIFont.boldSystemFont(ofSize: 20)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // 레이블을 뷰에 추가
        view.addSubview(titleLabel)
        
        // Auto Layout을 사용하여 레이블을 페이지 상단에 위치시킴
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        ])
        
        var actionButton = UIButton(type: .system)
        actionButton.setTitle("+", for: .normal)
        actionButton.titleLabel?.font = UIFont.systemFont(ofSize: 24)
        actionButton.layer.cornerRadius = 25 // 테두리 둥글기 설정
        actionButton.layer.borderWidth = 1 // 테두리 두께 설정
        actionButton.layer.borderColor = UIColor.black.cgColor // 테두리 색상 설정
//        actionButton.addTarget(self, action: #selector(actionButtonTapped), for: .touchUpInside)
        actionButton.isHidden = false // 버튼을 처음부터 보이도록 변경
        
        view.addSubview(actionButton)
        
        actionButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            actionButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            actionButton.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 30),
            actionButton.widthAnchor.constraint(equalToConstant: 350),
            actionButton.heightAnchor.constraint(equalToConstant: 80)
        ])
    }
}
