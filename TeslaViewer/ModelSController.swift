//
//  ModelSController.swift
//  TeslaViewer
//
//  Created by Tyler Phillips on 3/18/18.
//  Copyright © 2018 Tyler Phillips. All rights reserved.
//

import Foundation
import UIKit

class ModelSController: UIViewController {
    
    let modelSLabel: UIButton = {
        let btn = UIButton()
        btn.setTitle("Model S", for: .normal)
        btn.addTarget(self, action: #selector(modelSLabel(_:)), for:.touchUpInside)
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    let teslaLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Avenir Next", size: 35.0)
        label.textAlignment = .center
        label.backgroundColor = UIColor.clear
        label.textColor = UIColor.white
        label.isUserInteractionEnabled = false
        label.text = "Model S Specs:"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let seventyFiveDLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Avenir Next", size: 25.0)
        label.textAlignment = .left
        label.backgroundColor = UIColor.clear
        label.textColor = UIColor.white
        label.isUserInteractionEnabled = false
        label.text = "75D:"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let seventyFiveDSpecView: UIImageView = {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "75DSpec"))
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
   
    let oneHundredDLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Avenir Next", size: 25.0)
        label.textAlignment = .left
        label.backgroundColor = UIColor.clear
        label.textColor = UIColor.white
        label.isUserInteractionEnabled = false
        label.text = "100D:"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let oneHundredDSpecView: UIImageView = {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "100DSpec"))
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let poneHundredDLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Avenir Next", size: 25.0)
        label.textAlignment = .left
        label.backgroundColor = UIColor.clear
        label.textColor = UIColor.white
        label.isUserInteractionEnabled = false
        label.text = "P100D:"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let poneHundredDSpecView: UIImageView = {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "P100DSpec"))
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let sTopView: UIImageView = {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "modelSTopView"))
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()

    let sFrontView: UIImageView = {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "modelS_front"))
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let screensize: CGRect = UIScreen.main.bounds
        let screenWidth = screensize.width
        let screenHeight = screensize.height
        var scrollView: UIScrollView!
        scrollView = UIScrollView(frame: CGRect(x: 0, y: 120, width: screenWidth, height: screenHeight))
        
        assignBackground()
        
        view.addSubview(modelSLabel)
        setupLayout()
        
        
        scrollView.addSubview(teslaLabel)
        scrollView.addSubview(seventyFiveDLabel)
        scrollView.addSubview(seventyFiveDSpecView)
        scrollView.addSubview(oneHundredDLabel)
        scrollView.addSubview(oneHundredDSpecView)
        scrollView.addSubview(poneHundredDLabel)
        scrollView.addSubview(poneHundredDSpecView)
        scrollView.addSubview(sTopView)
        scrollView.addSubview(sFrontView)

        
        NSLayoutConstraint(item: teslaLabel, attribute: .centerX, relatedBy: .equal, toItem: scrollView, attribute: .centerX, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: teslaLabel, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 413).isActive = true
        NSLayoutConstraint(item: teslaLabel, attribute: .top, relatedBy: .equal, toItem: scrollView, attribute: .topMargin, multiplier: 1, constant: 5).isActive = true
        NSLayoutConstraint(item: teslaLabel, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 137).isActive = true
        
        NSLayoutConstraint(item: seventyFiveDLabel, attribute: .centerX, relatedBy: .equal, toItem: scrollView, attribute: .centerX, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: seventyFiveDLabel, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 300).isActive = true
        NSLayoutConstraint(item: seventyFiveDLabel, attribute: .top, relatedBy: .equal, toItem: scrollView, attribute: .topMargin, multiplier: 1, constant: 60).isActive = true
        NSLayoutConstraint(item: seventyFiveDLabel, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 137).isActive = true
        
        NSLayoutConstraint(item: seventyFiveDSpecView, attribute: .centerX, relatedBy: .equal, toItem: scrollView, attribute: .centerX, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: seventyFiveDSpecView, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 325).isActive = true
        NSLayoutConstraint(item: seventyFiveDSpecView, attribute: .top, relatedBy: .equal, toItem: scrollView, attribute: .topMargin, multiplier: 1, constant: 150).isActive = true
        NSLayoutConstraint(item: seventyFiveDSpecView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 300).isActive = true
        
        NSLayoutConstraint(item: oneHundredDLabel, attribute: .centerX, relatedBy: .equal, toItem: scrollView, attribute: .centerX, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: oneHundredDLabel, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 300).isActive = true
        NSLayoutConstraint(item: oneHundredDLabel, attribute: .top, relatedBy: .equal, toItem: scrollView, attribute: .topMargin, multiplier: 1, constant: 400).isActive = true
        NSLayoutConstraint(item: oneHundredDLabel, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 137).isActive = true
        
        NSLayoutConstraint(item: oneHundredDSpecView, attribute: .centerX, relatedBy: .equal, toItem: scrollView, attribute: .centerX, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: oneHundredDSpecView, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 325).isActive = true
        NSLayoutConstraint(item: oneHundredDSpecView, attribute: .top, relatedBy: .equal, toItem: scrollView, attribute: .topMargin, multiplier: 1, constant: 500).isActive = true
        NSLayoutConstraint(item: oneHundredDSpecView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 300).isActive = true
        
        NSLayoutConstraint(item: poneHundredDLabel, attribute: .centerX, relatedBy: .equal, toItem: scrollView, attribute: .centerX, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: poneHundredDLabel, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 300).isActive = true
        NSLayoutConstraint(item: poneHundredDLabel, attribute: .top, relatedBy: .equal, toItem: scrollView, attribute: .topMargin, multiplier: 1, constant: 750).isActive = true
        NSLayoutConstraint(item: poneHundredDLabel, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 137).isActive = true
        
        NSLayoutConstraint(item: poneHundredDSpecView, attribute: .centerX, relatedBy: .equal, toItem: scrollView, attribute: .centerX, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: poneHundredDSpecView, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 325).isActive = true
        NSLayoutConstraint(item: poneHundredDSpecView, attribute: .top, relatedBy: .equal, toItem: scrollView, attribute: .topMargin, multiplier: 1, constant: 850).isActive = true
        NSLayoutConstraint(item: poneHundredDSpecView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 300).isActive = true
        
        NSLayoutConstraint(item: sTopView, attribute: .centerX, relatedBy: .equal, toItem: scrollView, attribute: .centerX, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: sTopView, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 274).isActive = true
        NSLayoutConstraint(item: sTopView, attribute: .top, relatedBy: .equal, toItem: scrollView, attribute: .topMargin, multiplier: 1, constant: 1200).isActive = true
        NSLayoutConstraint(item: sTopView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 406).isActive = true

        NSLayoutConstraint(item: sFrontView, attribute: .centerX, relatedBy: .equal, toItem: scrollView, attribute: .centerX, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: sFrontView, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 374).isActive = true
        NSLayoutConstraint(item: sFrontView, attribute: .top, relatedBy: .equal, toItem: scrollView, attribute: .topMargin, multiplier: 1, constant: 1700).isActive = true
        NSLayoutConstraint(item: sFrontView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 229).isActive = true

        
        scrollView.contentSize = CGSize(width: screenWidth, height: 2200)
        view.addSubview(scrollView)
        
    }
    
    private func setupLayout() {
        modelSLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 35).isActive = true
        modelSLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        modelSLabel.widthAnchor.constraint(equalToConstant: 200).isActive = true
        modelSLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        
    }
    
    func assignBackground(){
        let background = UIImage(named: "black")
        
        var imageView : UIImageView!
        imageView = UIImageView(frame: view.bounds)
        imageView.contentMode =  UIViewContentMode.scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = background
        imageView.center = view.center
        view.addSubview(imageView)
        self.view.sendSubview(toBack: imageView)
        
    }
    
    @objc func modelSLabel(_ sender: UIButton){
        
        self.presentingViewController?.dismiss(animated: true, completion: nil)
        
        let vc = ViewController()
        self.present(vc, animated: true, completion: nil)
        
    }
    
}


