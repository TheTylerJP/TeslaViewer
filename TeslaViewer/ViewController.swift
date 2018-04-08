//
//  ViewController.swift
//  TeslaViewer
//
//  Created by Tyler Phillips on 3/18/18.
//  Copyright © 2018 Tyler Phillips. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let teslaLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Avenir Next", size: 25.0)
        label.textAlignment = .center
        label.backgroundColor = UIColor.clear
        label.textColor = UIColor.white
        label.isUserInteractionEnabled = false
        label.text = "Tesla Viewer"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let modelSLabel: UILabel = {
        let label = UILabel.label()
        label.text = "Model S"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let modelXLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Avenir Next", size: 25.0)
        label.textAlignment = .center
        label.backgroundColor = UIColor.clear
        label.textColor = UIColor.white
        label.isUserInteractionEnabled = false
        label.text = "Model X"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let model3Label: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Avenir Next", size: 25.0)
        label.textAlignment = .center
        label.backgroundColor = UIColor.clear
        label.textColor = UIColor.white
        label.isUserInteractionEnabled = false
        label.text = "Model 3"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let roadsterV1Label: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Avenir Next", size: 25.0)
        label.textAlignment = .center
        label.backgroundColor = UIColor.clear
        label.textColor = UIColor.white
        label.isUserInteractionEnabled = false
        label.text = "Roadster"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let searchTextField: UITextField = {
        let text = UITextField()
        text.text = "Search"
        text.placeholder = "Search"
        text.textColor = UIColor.white
        text.font = UIFont(name: "Avenir Next", size: 20.0)
        text.backgroundColor = UIColor.black
        text.alpha = 0.4
        text.borderStyle = UITextBorderStyle.roundedRect
        text.layer.cornerRadius = -5
        text.autocorrectionType = UITextAutocorrectionType.no
        text.keyboardType = UIKeyboardType.default
        text.returnKeyType = UIReturnKeyType.done
        text.clearButtonMode = UITextFieldViewMode.whileEditing
        text.contentVerticalAlignment = UIControlContentVerticalAlignment.center
        text.translatesAutoresizingMaskIntoConstraints = false
        
        return text
    }()
    
    let blueModel3View: UIImageView = {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "bluemodel3"))
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let modelXView: UIButton = {
        let btn = UIButton()
        btn.setTitle("Model X", for: .normal)
        btn.setTitleColor(.white, for: .normal)
        if let homeImage  = UIImage(named: "model_x.png") {
            btn.setImage(homeImage, for: .normal)
        }
        btn.addTarget(self, action: #selector(silverModelXView(_:)), for:.touchUpInside)
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    let roadsterV1View: UIButton = {
        let btn = UIButton()
        btn.setTitle("Roadster", for: .normal)
        btn.setTitleColor(.white, for: .normal)
        if let homeImage  = UIImage(named: "roadster2-0.png") {
            btn.setImage(homeImage, for: .normal)
        }
        btn.addTarget(self, action: #selector(roadsterView(_:)), for:.touchUpInside)
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    let whiteModelSView: UIButton = {
        let button = UIButton()
        button.setTitle("Model S", for: .normal)
        button.setTitleColor(.white, for: .normal)
        if let homeImage  = UIImage(named: "red_model_s.png") {
            button.setImage(homeImage, for: .normal)
        }
        button.addTarget(self, action: #selector(whiteModelSView(_:)), for:.touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let screensize: CGRect = UIScreen.main.bounds
        let screenWidth = screensize.width
        let screenHeight = screensize.height
        var scrollView: UIScrollView!
        scrollView = UIScrollView(frame: CGRect(x: 0, y: 120, width: screenWidth, height: screenHeight))
        
        assignBackground()
        
        view.addSubview(teslaLabel)
        setupLayout()
        
        scrollView.addSubview(whiteModelSView)
        scrollView.addSubview(blueModel3View)
        scrollView.addSubview(modelXView)
        scrollView.addSubview(roadsterV1View)
        scrollView.addSubview(modelSLabel)
        scrollView.addSubview(modelXLabel)
        scrollView.addSubview(model3Label)
        scrollView.addSubview(roadsterV1Label)
        scrollView.addSubview(searchTextField)
        
        NSLayoutConstraint(item: searchTextField, attribute: .centerX, relatedBy: .equal, toItem: scrollView, attribute: .centerX, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: searchTextField, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 350).isActive = true
        NSLayoutConstraint(item: searchTextField, attribute: .top, relatedBy: .equal, toItem: scrollView, attribute: .topMargin, multiplier: 1, constant: 10).isActive = true
        NSLayoutConstraint(item: searchTextField, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 50).isActive = true
        
        NSLayoutConstraint(item: whiteModelSView, attribute: .centerX, relatedBy: .equal, toItem: scrollView, attribute: .centerX, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: whiteModelSView, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 390).isActive = true
        NSLayoutConstraint(item: whiteModelSView, attribute: .top, relatedBy: .equal, toItem: scrollView, attribute: .topMargin, multiplier: 1, constant: 75).isActive = true
        NSLayoutConstraint(item: whiteModelSView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 160).isActive = true
        
        NSLayoutConstraint(item: modelSLabel, attribute: .centerX, relatedBy: .equal, toItem: scrollView, attribute: .centerX, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: modelSLabel, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 413).isActive = true
        NSLayoutConstraint(item: modelSLabel, attribute: .top, relatedBy: .equal, toItem: scrollView, attribute: .topMargin, multiplier: 1, constant: 150).isActive = true
        NSLayoutConstraint(item: modelSLabel, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 137).isActive = true
        
        NSLayoutConstraint(item: modelXView, attribute: .centerX, relatedBy: .equal, toItem: scrollView, attribute: .centerX, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: modelXView, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 313).isActive = true
        NSLayoutConstraint(item: modelXView, attribute: .top, relatedBy: .equal, toItem: scrollView, attribute: .topMargin, multiplier: 1, constant: 300).isActive = true
        NSLayoutConstraint(item: modelXView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 117).isActive = true
        
        NSLayoutConstraint(item: modelXLabel, attribute: .centerX, relatedBy: .equal, toItem: scrollView, attribute: .centerX, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: modelXLabel, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 313).isActive = true
        NSLayoutConstraint(item: modelXLabel, attribute: .top, relatedBy: .equal, toItem: scrollView, attribute: .topMargin, multiplier: 1, constant: 370).isActive = true
        NSLayoutConstraint(item: modelXLabel, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 117).isActive = true
        
        NSLayoutConstraint(item: blueModel3View, attribute: .centerX, relatedBy: .equal, toItem: scrollView, attribute: .centerX, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: blueModel3View, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 413).isActive = true
        NSLayoutConstraint(item: blueModel3View, attribute: .top, relatedBy: .equal, toItem: scrollView, attribute: .topMargin, multiplier: 1, constant: 500).isActive = true
        NSLayoutConstraint(item: blueModel3View, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 160).isActive = true
        
        NSLayoutConstraint(item: model3Label, attribute: .centerX, relatedBy: .equal, toItem: scrollView, attribute: .centerX, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: model3Label, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 413).isActive = true
        NSLayoutConstraint(item: model3Label, attribute: .top, relatedBy: .equal, toItem: scrollView, attribute: .topMargin, multiplier: 1, constant: 580).isActive = true
        NSLayoutConstraint(item: model3Label, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 137).isActive = true
        
        NSLayoutConstraint(item: roadsterV1View, attribute: .centerX, relatedBy: .equal, toItem: scrollView, attribute: .centerX, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: roadsterV1View, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 390).isActive = true
        NSLayoutConstraint(item: roadsterV1View, attribute: .top, relatedBy: .equal, toItem: scrollView, attribute: .topMargin, multiplier: 1, constant: 1350).isActive = true
        NSLayoutConstraint(item: roadsterV1View, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 230).isActive = true
        
        NSLayoutConstraint(item: roadsterV1Label, attribute: .centerX, relatedBy: .equal, toItem: scrollView, attribute: .centerX, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: roadsterV1Label, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 413).isActive = true
        NSLayoutConstraint(item: roadsterV1Label, attribute: .top, relatedBy: .equal, toItem: scrollView, attribute: .topMargin, multiplier: 1, constant: 1465).isActive = true
        NSLayoutConstraint(item: roadsterV1Label, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 137).isActive = true
        
        
        scrollView.contentSize = CGSize(width: screenWidth, height: 2000)
        view.addSubview(scrollView)
        
    }

    private func setupLayout() {
        teslaLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 35).isActive = true
        teslaLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        teslaLabel.widthAnchor.constraint(equalToConstant: 200).isActive = true
        teslaLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
    }

    @objc func whiteModelSView(_ sender: UIButton){
        
        self.presentingViewController?.dismiss(animated: true, completion: nil)
        
        let vc = ModelSController()
        self.present(vc, animated: true, completion: nil)
        
    }
    
    @objc func silverModelXView(_ sender: UIButton){
        
        self.presentingViewController?.dismiss(animated: true, completion: nil)
        
        let vc = ModelXController()
        self.present(vc, animated: true, completion: nil)
        
    }
    
    @objc func roadsterView(_ sender: UIButton){
        
        self.presentingViewController?.dismiss(animated: true, completion: nil)
        let vc = RoadterController()
        self.present(vc, animated: true, completion: nil)
        
    }
    
    func assignBackground() {
        
        let background = UIImage(named: "background")
        var imageView : UIImageView!
        imageView = UIImageView(frame: view.bounds)
        imageView.contentMode =  UIViewContentMode.scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = background
        imageView.center = view.center
        view.addSubview(imageView)
        self.view.sendSubview(toBack: imageView)
    }
}

