//
//  quizViewController.swift
//  politigage
//
//  Created by Charlotte Miller on 2/27/16.
//  Copyright © 2016 beadlejack. All rights reserved.
//

import UIKit

class quizViewController: UIViewController {
    var questionNum = 1
    
    var urlList: [String] = ["https://www.govtrack.us/api/v2/bill/","https://www.govtrack.us/api/v2/bill/","https://www.govtrack.us/api/v2/bill/","https://www.govtrack.us/api/v2/bill/","https://www.govtrack.us/api/v2/bill/"]
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func selectQuestion(){
        var questions: [String] = ["Opinions on Immigration?","Opinions on Social Welfare?","Opinions on Marijuana?","Opinions on Public Education Funding?","How much to spend on defense budget?"]
        switch(questionNum){
        case 1:
            questionLabel.text=questions[questionNum]
            button1.setTitle("Border security should be increased.",forState: UIControlState.Normal)
            button2.setTitle("There should exist immigration quotas.",forState: UIControlState.Normal)
            button3.setTitle("Prefer not to answer, or have no opinion.",forState: UIControlState.Normal)
            button4.setTitle("Immigrants are welcome with a certain level of education.",forState: UIControlState.Normal)
            questionNum++
            break
        case 2:
            questionLabel.text=questions[questionNum]
            button1.setTitle("Repeal Obamacare.",forState: UIControlState.Normal)
            button2.setTitle("Increase social security funding.",forState: UIControlState.Normal)
            questionNum++

            break
        case 3:
            questionLabel.text=questions[questionNum]
            button1.setTitle("Leave as a schedule 1 drug.",forState: UIControlState.Normal)
            button2.setTitle("Decriminalize but heavily regulate it.",forState: UIControlState.Normal)
            button3.setTitle("Remove from schedule 1 drug status.",forState: UIControlState.Normal)
            button4.setTitle("Support federal decriminalization.",forState: UIControlState.Normal)
            questionNum++

            break
        case 4:
            questionLabel.text=questions[questionNum]
            button1.setTitle("Abolish public school funding.",forState: UIControlState.Normal)
            button2.setTitle("Reduce public school funding.",forState: UIControlState.Normal)
            button3.setTitle("Have no opinion.",forState: UIControlState.Normal)
            button4.setTitle("Compulsory education through high school.",forState: UIControlState.Normal)
            button5.setTitle("Government should fund kindergarten through college.",forState: UIControlState.Normal)
            questionNum++

            break
        case 5:
            questionLabel.text=questions[questionNum]
            button1.setTitle("A little.",forState: UIControlState.Normal)
            button2.setTitle("A lot.",forState: UIControlState.Normal)
            break
        default:
            break
        }
        
        
    }
    
    @IBAction func button1Action(sender: AnyObject) {
        if(questionNum == 1){
            urlList[questionNum-1]+("343741")
        }
        if(questionNum == 2){
            urlList[questionNum-1] + ("336329")
        }
        if(questionNum == 3){
            urlList[questionNum-1]+("332000")
        }
        if(questionNum == 4){
         urlList[questionNum-1]+("338894")
        }
        if(questionNum == 5){
            urlList[questionNum-1]+("342485")
        }
    }

    @IBAction func button2Action(sender: AnyObject) {
        if(questionNum == 1){
            urlList[questionNum-1]+("343717")
        }
        if(questionNum == 2){
            urlList[questionNum-1] + ("343748")
        }
        if(questionNum == 3){
            urlList[questionNum-1] + ("332000")
        }
        if(questionNum == 4){
            urlList[questionNum-1]+("338894")
        }
        if(questionNum == 5){
            urlList[questionNum-1]+("343635")
        }
    }
    
    @IBAction func button3Action(sender: AnyObject) {
        if(questionNum == 1){
            urlList[questionNum-1]+("343497")
        }
        if(questionNum == 2){
            urlList[questionNum-1] + ("343717")
        }
        if(questionNum == 3){
            urlList[questionNum-1]+("338465")
        }
        if(questionNum == 4){
            urlList[questionNum-1]+("336399")
        }
    }
    
    @IBAction func button4Action(sender: AnyObject) {
        if(questionNum == 1){
            urlList[questionNum-1]+("343497")
        }
        if(questionNum == 2){
            urlList[questionNum-1] + ("343717")
        }
        if(questionNum == 3){
            urlList[questionNum-1]+("342489")
        }
        if(questionNum == 4){
            urlList[questionNum-1]+("343681")
        }
    }
    
    @IBAction func button5Action(sender: AnyObject){
        if(questionNum == 4){
            urlList[questionNum-1]+("336399")
        }
    }
    
/*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
