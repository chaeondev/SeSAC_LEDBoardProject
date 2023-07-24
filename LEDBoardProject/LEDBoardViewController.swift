//
//  LEDBoardViewController.swift
//  LEDBoardProject
//
//  Created by ChaewonMac on 2023/07/24.
//

import UIKit

class LEDBoardViewController: UIViewController {

    @IBOutlet var typingBackgroundView: UIView!
    @IBOutlet var sendButton: UIButton!
    @IBOutlet var colorChangeButton: UIButton!
    
    @IBOutlet var boardTextField: UITextField!
    
    @IBOutlet var mainBoardLabel: UILabel!
    
    let colorList: [UIColor] = [.systemBlue, .systemCyan, .green, .opaqueSeparator, .orange, .systemRed, .systemPink]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        designBackgroundView()
        designSendButton()
        designColorChangeButton()
        
    }
    
    
    @IBAction func boardTextField(_ sender: UITextField) {
        mainBoardLabel.text = boardTextField.text
        boardTextField.text = ""
    }

    
    @IBAction func sendButtonClicked(_ sender: UIButton) {
        view.endEditing(true)
        mainBoardLabel.text = boardTextField.text
        boardTextField.text = ""
    }
    
    @IBAction func colorChangeButtonClicked(_ sender: UIButton) {
        let randomColor = colorList.randomElement()!
        colorChangeButton.setTitleColor(randomColor, for: .normal)
        mainBoardLabel.textColor = randomColor
    }
    
    @IBAction func boardTapGestureTapped(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
        typingBackgroundView.isHidden.toggle()
    }
    
    
    func designBackgroundView() {
        typingBackgroundView.layer.cornerRadius = 10
    }
    
    func designSendButton() {
        sendButton.layer.cornerRadius = 10
        sendButton.layer.borderColor = UIColor.black.cgColor
        sendButton.layer.borderWidth = 1
        sendButton.titleLabel?.font = .boldSystemFont(ofSize: 18)
    }
    
    func designColorChangeButton() {
        colorChangeButton.layer.cornerRadius = 10
        colorChangeButton.layer.borderColor = UIColor.black.cgColor
        colorChangeButton.layer.borderWidth = 1
        colorChangeButton.titleLabel?.font = .boldSystemFont(ofSize: 18)
        
        colorChangeButton.setTitleColor(.systemRed, for: .normal)
    }
    
    

}
