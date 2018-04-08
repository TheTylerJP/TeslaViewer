//
//  Roadster1Controller.swift
//  TeslaViewer
//
//  Created by Tyler Phillips on 4/5/18.
//  Copyright © 2018 Tyler Phillips. All rights reserved.
//lol

import Foundation
import UIKit

class RoadterController: UIViewController {
    
    
    let roadsterLabel: UIButton = {
        let btn = UIButton()
        btn.setTitle("Roadster", for: .normal)
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
        label.text = "Roadster Specs:"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let roadsterSpecView: UIImageView = {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "roadsterSpec"))
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let roadsterView: UIImageView = {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "roadster"))
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
        
        view.addSubview(roadsterLabel)
        setupLayout()
        
        
        scrollView.addSubview(teslaLabel)
        scrollView.addSubview(roadsterSpecView)
        scrollView.addSubview(roadsterView)
        
        
        NSLayoutConstraint(item: teslaLabel, attribute: .centerX, relatedBy: .equal, toItem: scrollView, attribute: .centerX, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: teslaLabel, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 413).isActive = true
        NSLayoutConstraint(item: teslaLabel, attribute: .top, relatedBy: .equal, toItem: scrollView, attribute: .topMargin, multiplier: 1, constant: 5).isActive = true
        NSLayoutConstraint(item: teslaLabel, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 137).isActive = true
       
        NSLayoutConstraint(item: roadsterSpecView, attribute: .centerX, relatedBy: .equal, toItem: scrollView, attribute: .centerX, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: roadsterSpecView, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 345).isActive = true
        NSLayoutConstraint(item: roadsterSpecView, attribute: .top, relatedBy: .equal, toItem: scrollView, attribute: .topMargin, multiplier: 1, constant: 150).isActive = true
        NSLayoutConstraint(item: roadsterSpecView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 400).isActive = true
        
        NSLayoutConstraint(item: roadsterView, attribute: .centerX, relatedBy: .equal, toItem: scrollView, attribute: .centerX, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: roadsterView, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 325).isActive = true
        NSLayoutConstraint(item: roadsterView, attribute: .top, relatedBy: .equal, toItem: scrollView, attribute: .topMargin, multiplier: 1, constant: 600).isActive = true
        NSLayoutConstraint(item: roadsterView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 300).isActive = true
        
        scrollView.contentSize = CGSize(width: screenWidth, height: 2200)
        view.addSubview(scrollView)
        
    }
    
    private func setupLayout() {
        roadsterLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 35).isActive = true
        roadsterLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        roadsterLabel.widthAnchor.constraint(equalToConstant: 200).isActive = true
        roadsterLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
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

