//
//  changeColorViewController.swift
//  MammaMiaOnePieceWorkPants
//
//  Created by Chang Sophia on 2018/8/12.
//  Copyright © 2018年 Chang Sophia. All rights reserved.
//

import UIKit

class changeColorViewController: UIViewController {
    
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var patternImageView: UIImageView!
    @IBOutlet weak var donnaImageView: UIImageView!
    @IBOutlet weak var rectangleImageView: UIImageView!
    @IBOutlet weak var circleImageView: UIImageView!
    
    @IBOutlet weak var circle1ImageView: UIImageView!
    
    
    
    
    
    @IBAction func resSliderValueChange(_ sender: Any) {
        let image = UIImage(named: "donna")
        let donnaImageView = UIImageView(image: image)
        let patternImageView = UIImageView(frame: donnaImageView.frame)
        patternImageView.image = UIImage(named: "pattern")
        patternImageView.addSubview(donnaImageView)
    
    }
    
    @IBAction func greenSliderValueChange(_ sender: Any) {
        let image = UIImage(named: "donna")
        let donnaImageView = UIImageView(image: image)
        let patternImageView = UIImageView(frame: donnaImageView.frame)
        patternImageView.image = UIImage(named: "pattern")
        patternImageView.addSubview(donnaImageView)
        
       
        
    }
    @IBAction func blueSliderValueChange(_ sender: Any) {
        let image = UIImage(named: "donna")
        let donnaImageView = UIImageView(image: image)
        let patternImageView = UIImageView(frame: donnaImageView.frame)
        patternImageView.image = UIImage(named: "pattern")
        patternImageView.addSubview(donnaImageView)
        
       
    }
    
    
    @IBAction func colorSliderChange(_ sender: UISlider) {
        var pattern = CGRect(x: 153, y: 197, width: 150, height: 225)
        patternImageView.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        pattern = CGRect(x: 0, y: 0, width: patternImageView.frame.width, height: patternImageView.frame.height)
        let rectangle = CGRect(x: 36, y: 156, width: 89, height: 68)
        let rectangleImageView = UIView(frame:rectangle)
        rectangleImageView.backgroundColor = UIColor(red:227/255, green: 10/255, blue: 23/255, alpha: 1)
        
        let circle = CGRect(x:rectangleImageView.frame.width/4,y: rectangleImageView.frame.height/6,width: 44, height:44)
        let circleImageView = UIView(frame:circle)
        circleImageView.backgroundColor = UIColor(red:1, green:1, blue: 1, alpha: 1)
        circleImageView.layer.cornerRadius = 22
        circleImageView.clipsToBounds = true
       
        let circle1 = CGRect(x:circleImageView.frame.width/6,y: circleImageView.frame.height/8,width:34, height:34)
        let circle1ImageView = UIView(frame:circle1)
        circle1ImageView.backgroundColor = UIColor(red:227/255, green:10/255, blue: 23/255, alpha: 1)
        circle1ImageView.layer.cornerRadius = 17
        circle1ImageView.clipsToBounds = true
        
        let circle2 = CGRect(x:circle1ImageView.frame.width/4,y: circle1ImageView.frame.height/8,width:26, height:26)
        let circle2ImageView = UIView(frame:circle2)
        circle2ImageView.backgroundColor = UIColor(red:1, green:1, blue: 1, alpha: 1)
        circle2ImageView.layer.cornerRadius = 13
        circle2ImageView.clipsToBounds = true
        
        
        
        patternImageView.addSubview(rectangleImageView)
        rectangleImageView.addSubview(circleImageView)
        circleImageView.addSubview(circle1ImageView)
        circle1ImageView.addSubview(circle2ImageView)
        
        
            donnaImageView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 0)
        
            if sender == redSlider {
                redLabel.text = String(format:"%.f", redSlider.value*255)
            }else if sender == greenSlider {
                greenLabel.text = String(format:"%.f", greenSlider.value*255)
            }else if sender ==  blueSlider {
                blueLabel.text = String(format:"%.f", blueSlider.value*255)
            }
    }
    
   

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
