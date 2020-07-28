//
//  Demo1ViewController.swift
//  TravelApp
//
//  Created by Toan on 7/26/20.
//  Copyright © 2020 Toan. All rights reserved.
//

import UIKit
import Stevia
class Demo1ViewController: UIViewController {
    let restoreLable :UILabel = {
        let label = UILabel()
        label.text = "Restore"
        label.textColor = .white
        label.font = UIFont.mainFont(font: .Helvetica, size: 16)
        return label
    }()
    
    
    let headerImage : UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "header")
        return image
    }()
    let backButton : UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "backIcon"), for: .normal)
        return button
    }()
    let mainView : CustomView = {
        let view = CustomView()
        view.backgroundColor = .white
        return view
    }()
    let PictrueLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Helvetica-bold", size: 24)
        label.textColor = .white
        label.numberOfLines = 0
        label.textAlignment = .center
        label.text = "PictrueThis"
        
        return label
    }()
    let primiumLabel: UILabel = {
           let label = UILabel()
           label.font = UIFont(name: "Helvetica-thin", size: 16)
           label.textColor = .white
           label.numberOfLines = 0
           label.textAlignment = .center
           label.text = "P R E M I U M"
           
           return label
       }()
    let thankLabel: UILabel = {
        let label = UILabel()
        label.text = "Thanks for trusting"
        label.font = UIFont.mainFont(font: .Helvetica, size: 20)
        
        return label
    }()
    let thisLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Helvetica-bold", size: 24)
        
        
        label.text = "PictureThis!"
        
        return label
    }()
    let greenView : UIView = {
        let view = UIView()
        view.backgroundColor = .greenColor()
        view.layer.cornerRadius = 20
        return view
    }()
    let greenView2 : UIView = {
           let view = UIView()
        view.backgroundColor = .greenColor()
           view.layer.cornerRadius = 20
           return view
       }()
    let  backUpDataView  : CustumView2 = {
        let view = CustumView2()
        view.backgroundColor =  .darkGreenColor()
       return view
    }()
    let backDataLabel  : UILabel   = {
       let label = UILabel()
        label.text = "To back up your data and ensure continued use ,"
        label.numberOfLines = 0
        label.font = UIFont.mainFont(font: .Helvetica, size: 21)
        label.textColor = .white
        return label
    }()
    let memberLabel  : UILabel   = {
       let label = UILabel()
        label.text = "become our PREMIUM member"
        label.numberOfLines = 0
        label.font = UIFont(name: "Helvetica-bold", size: 21)
        label.textColor = .lightGreenColor()
        return label
    }()
    let moneyLabel  : UILabel   = {
       let label = UILabel()
        label.text = "Safeguard your nature exploration with just $ 29.99/yr."
        label.numberOfLines = 0
        label.font = UIFont.mainFont(font: .Helvetica, size: 22)
        label.textColor = .black
        return label
    }()
    let continueButton  : CustommButton = {
        let button = CustommButton()
        button.layer.cornerRadius = 20
        button.clipsToBounds = true
        button.setTitle("CONTINUE", for: .normal)
        button.titleLabel?.font = UIFont(name: "Helvetica-bold", size: 20)
        button.setTitleColor(.white, for: .normal)
        return button
    }()
    let  bottomLabel : UILabel = {
        let label = UILabel()
        label.text = "you can cancel subcription of free trial anytime by cancelling your"
        label.font = UIFont.mainFont(font: .Helvetica, size: 10)
        label.textColor = .lightGray
        label.textAlignment = .center
        return label
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(customView: restoreLable)
        self.navigationController!.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController!.navigationBar.shadowImage = UIImage()
        self.navigationController!.navigationBar.isTranslucent = true
        view.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.95, alpha: 1.00)
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(customView: backButton)
        
        addSV()
        layout()
}
func addSV(){
        view.sv([headerImage,mainView,PictrueLabel,primiumLabel,continueButton,bottomLabel])
        mainView.sv([thankLabel,thisLabel,greenView,greenView2,backUpDataView,moneyLabel])
        backUpDataView.sv([backDataLabel,memberLabel])
    }
    func layout(){
        view.layout(0,
                    |-0-headerImage-0-| ~ UIScreen.screenHeight()/2
        )
        view.layout(
            UIScreen.screenHeight()/2-180,
            |-100-PictrueLabel.centerHorizontally()-100-|,
            |-100-primiumLabel.centerHorizontally()-100-|,
            20,
            |-(-20)-mainView-0-| ~ 300,
            40,
             |-50-continueButton-50-| ~ 60
        )
        view.layout(
            |-20-bottomLabel-20-|,
            16
        )
        mainView.layout(
        10,
        |-50-thankLabel-20-|,
        2,
        |-50-thisLabel-20-|,
        5,
        |-220-greenView-(-20)-| ~ 80
        
        )
        mainView.layout(
        90,
        |-(-20)-greenView2-220-| ~ 80
        )
        mainView.layout(
        80,
        |-20-backUpDataView.width(UIScreen.screenWidth()-50)-0-| ~ 120
        )
        backUpDataView.layout(
        20,
        |-30-backDataLabel-90-| ~ 50,
        |-30-memberLabel-20-|
        )
        mainView.layout(
        |-50-moneyLabel-10-|,
        20
        )
        
    }
    
    
    
}
