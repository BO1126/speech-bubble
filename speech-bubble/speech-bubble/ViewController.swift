//
//  ViewController.swift
//  speech-bubble
//
//  Created by 이정우 on 2022/03/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var speechBubbleView : UIView!
    @IBOutlet weak var humanView : UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func createTalkBubble(){
        let talkBubbleView = talkBubbleView()
        talkBubbleView.frame = CGRect(x: 80, y: 100, width: speechBubbleView.frame.width, height: speechBubbleView.frame.height)
        talkBubbleView.backgroundColor = .clear
        speechBubbleView.addSubview(talkBubbleView)
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+3, execute: {
            talkBubbleView.removeFromSuperview()
        })
    }
    
    @IBAction func createThinkingBubble(){
        let thinkingBubbleView = thinkingBubbleView()
        thinkingBubbleView.frame = CGRect(x: 0, y: 0, width: speechBubbleView.frame.width, height: speechBubbleView.frame.height)
        thinkingBubbleView.backgroundColor = .clear
        speechBubbleView.addSubview(thinkingBubbleView)
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+3, execute: {
            thinkingBubbleView.removeFromSuperview()
        })
    }
    
    @IBAction func createShoutingBubble(){
        
    }

}

class talkBubbleView : UIView {
    override func draw(_ rect: CGRect) {
        let path = UIBezierPath(ovalIn: CGRect(x: 3, y: 3, width: rect.width-100, height: rect.height-150))
        UIColor.black.setStroke()
        path.lineWidth = 1
        path.stroke()
        
        let path2 = UIBezierPath()
        path2.move(to: CGPoint(x: 3, y: 200))
        path2.addLine(to: CGPoint(x: 25, y: 150))
        path2.addLine(to: CGPoint(x: 49, y: 170))
        path2.addLine(to: CGPoint(x: 3, y: 200))
        UIColor.white.setFill()
        path2.fill()
        
        let path3 = UIBezierPath()
        path3.move(to: CGPoint(x: 3, y: 200))
        path3.addLine(to: CGPoint(x: 25, y: 150))
        path3.stroke()
        
        let path4 = UIBezierPath()
        path4.move(to: CGPoint(x: 3, y: 200))
        path4.addLine(to: CGPoint(x: 49, y: 170))
        path4.stroke()
    }
}

class thinkingBubbleView : UIView {
    override func draw(_ rect: CGRect) {
        let path = UIBezierPath(ovalIn: CGRect(x: 3, y: 3, width: rect.width-100, height: rect.height-150))
        UIColor.black.setStroke()
        path.lineWidth = 1
        path.stroke()
    }
}
