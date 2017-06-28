//
//  practiceVC.swift
//  MyApp03
//
//  Created by Seven Tsai on 2017/6/28.
//  Copyright © 2017年 seven. All rights reserved.
//

import UIKit

class practiceVC: UIViewController {

    
    
    @IBOutlet weak var lb1: UILabel!
    
    @IBOutlet weak var typeText: UITextField!
    
    @IBOutlet weak var txf: UITextField!
    
    
    
    
    @IBAction func btnGuess(_ sender: Any) {
       let answer = "1234"
       let textString = typeText.text 
        
       let checkAnswer =  BradAPI.checkAB(answer: answer, guess: textString!)
        
        lb1.text = checkAnswer
        
        txf.text?.append(textString!)
        
        typeText.text = ""
//        typeText.resignFirstResponder()

        
//        showWinnerDialog()
        
        func ok(){
            print("OK")
        }
        let winner:UIAlertController = UIAlertController(title: "123", message: "456", preferredStyle: UIAlertControllerStyle.alert)
        
        let see = UIAlertAction(title: "see", style: UIAlertActionStyle.default, handler: {(action) in ok()})
        
        winner.addAction(see)
        
        

            
         let two =   UIAlertAction(title: "two", style: UIAlertActionStyle.default, handler: {(action) in print("two")})
        winner.addAction(two)
        
        
        
//        self.present(winner, animated: true, completion: nil)
        show(winner, sender: self)
    }
    
    
    func showWinnerDialog() {
        let alert:UIAlertController = UIAlertController(title: "Game Result", message: "Congraguation!!You win", preferredStyle: UIAlertControllerStyle.alert)
        
        let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: {(action:UIAlertAction) -> Void in print("OK")} )
        
        alert.addAction(okAction)
        
        //it was presentViewController(...) before
        self.present(alert, animated: true, completion: nil)   //self 可不寫
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
