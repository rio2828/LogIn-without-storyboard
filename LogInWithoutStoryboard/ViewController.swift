//
//  ViewController.swift
//  LogInWithoutStoryboard
//
//  Created by 김태현 on 2022/08/05.
//

import UIKit

final class ViewController: UIViewController {
    
    private let logInView = LogInView()
    
    override func loadView() {
        view = logInView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print()
        setUpAddTarget()
    }
    
    func setUpAddTarget() {
        logInView.loginButton.addTarget(self, action: #selector(logInButtonTapped), for: .touchUpInside)
        logInView.passwordResetButton.addTarget(self, action: #selector(resetButtonTapped), for: .touchUpInside)
    }
    
    // 로그인 버튼 누를 시 동작하는 함수
    @objc func logInButtonTapped() {
        print("다음 화면으로 넘어가기")
    }
    
    // 리셋버튼 누를 시 동작하는 함수
    @objc func resetButtonTapped() {
        let alert = UIAlertController(title: "비밀번호 바꾸기", message: "비밀번호를 바꾸시겠습니까?", preferredStyle: .alert)
        let success = UIAlertAction(title: "확인", style: .default) { action in
            print("확인버튼이 눌렸습니다.")
        }
        let cancel = UIAlertAction(title: "취소", style: .cancel) { action in
            print("취소버튼이 눌렸습니다.")
        }
        
        alert.addAction(success)
        alert.addAction(cancel)
        
        // 실제 띄우기
        self.present(alert, animated: true, completion: nil)
    }
}
