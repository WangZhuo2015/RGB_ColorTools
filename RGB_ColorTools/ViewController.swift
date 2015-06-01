//
//  ViewController.swift
//  RGB_ColorTools
//
//  Created by 王卓 on 15/6/1.
//  Copyright (c) 2015年 王卓. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var RedSlider:UISlider!
    var GreenSlider:UISlider!
    var BlueSlider:UISlider!
    var AlphaSlider:UISlider!
    @IBOutlet weak var Switch: UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Switch.on=false
        
        RedSlider=UISlider(frame: CGRectMake(10, 50, 300, 30))
        GreenSlider=UISlider(frame: CGRectMake(10, 90, 300, 30))
        BlueSlider=UISlider(frame: CGRectMake(10, 130, 300, 30))
        AlphaSlider=UISlider(frame: CGRectMake(10, 170, 300, 30))
        
        RedSlider.maximumValue=255
        RedSlider.minimumValue=0
        RedSlider.value=0
        RedSlider.continuous=Switch.on
        RedSlider.addTarget(self, action: Selector("ValueChanged"), forControlEvents: UIControlEvents.ValueChanged)
        RedSlider.backgroundColor=UIColor.redColor()
        
        GreenSlider.maximumValue=255
        GreenSlider.minimumValue=0
        GreenSlider.value=0
        GreenSlider.continuous=Switch.on
        GreenSlider.addTarget(self, action: Selector("ValueChanged"), forControlEvents: UIControlEvents.ValueChanged)
        GreenSlider.backgroundColor=UIColor.greenColor()
        
        BlueSlider.maximumValue=255
        BlueSlider.minimumValue=0
        BlueSlider.value=0
        BlueSlider.continuous=Switch.on
        BlueSlider.addTarget(self, action: Selector("ValueChanged"), forControlEvents: UIControlEvents.ValueChanged)
        BlueSlider.backgroundColor=UIColor.blueColor()
        
        AlphaSlider.maximumValue=255
        AlphaSlider.minimumValue=0
        AlphaSlider.value=0
        AlphaSlider.continuous=Switch.on
        AlphaSlider.addTarget(self, action: Selector("ValueChanged"), forControlEvents: UIControlEvents.ValueChanged)
        
        self.view.addSubview(RedSlider)
        self.view.addSubview(GreenSlider)
        self.view.addSubview(BlueSlider)
        self.view.addSubview(AlphaSlider)
        
        
        
        ViewButton.addTarget(self, action: Selector("ValueChanged"), forControlEvents: UIControlEvents.TouchUpInside)
    }

    @IBOutlet weak var ViewButton: UIButton!
    
    @IBOutlet weak var Label: UILabel!
    
    
    
    func ValueChanged(){
        ViewButton.backgroundColor=UIColor(red: CGFloat(RedSlider.value/255), green: CGFloat(GreenSlider.value/255), blue: CGFloat(BlueSlider.value/255), alpha: CGFloat(AlphaSlider.value/255))
        
        Label.text="RED:\(RedSlider.value)Grenn:\(GreenSlider.value)Blue:\(BlueSlider.value)Alpha:\(AlphaSlider.value)"
    }
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

