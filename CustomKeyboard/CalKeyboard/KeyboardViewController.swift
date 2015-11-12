//
//  KeyboardViewController.swift
//  KeyboardApp
//
//  Created by Abraham Lin on 11/11/2015.
//  Copyright © 2015 Abraham Lin. All rights reserved.
//

import UIKit

class KeyboardViewController: UIInputViewController {

    @IBOutlet var nextKeyboardButton: UIButton!
    @IBOutlet var returnKeyboardButton: UIButton!
    @IBOutlet var deleteKeyboardButton: UIButton!
    @IBOutlet var spaceKeyboardButton: UIButton!
    
    @IBOutlet var oneLenny: UIButton!
    @IBOutlet var twoLenny: UIButton!
    @IBOutlet var threeLenny: UIButton!
    @IBOutlet var fourLenny: UIButton!
    @IBOutlet var fiveLenny: UIButton!
    @IBOutlet var sixLenny: UIButton!
    @IBOutlet var sevenLenny: UIButton!
    @IBOutlet var eightLenny: UIButton!
    @IBOutlet var nineLenny: UIButton!
    @IBOutlet var tenLenny: UIButton!
    @IBOutlet var elevenLenny: UIButton!
    @IBOutlet var twelveLenny: UIButton!
    @IBOutlet var thirteenLenny: UIButton!
    @IBOutlet var fourteenLenny: UIButton!
    @IBOutlet var fifteenLenny: UIButton!
    @IBOutlet var sixteenLenny: UIButton!
    
    @IBOutlet var max: UIButton!
    
    
    
    var keyboardView: UIView!
    //if non-optional, I would neet an init method
    

    override func updateViewConstraints() {
        super.updateViewConstraints()
    
        // Add custom view sizing constraints here
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        loadKeyboard()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated
    }

    override func textWillChange(textInput: UITextInput?) {
        // The app is about to change the document's contents. Perform any preparation here.
    }

    override func textDidChange(textInput: UITextInput?) {

    }
    
    func printOneLemmy() {
        let proxy = self.textDocumentProxy as UIKeyInput
        proxy.insertText("( ͡° ͜ʖ ͡°)")
    }
    func printTwoLemmy() {
        let proxy = self.textDocumentProxy as UIKeyInput
        proxy.insertText("( ͠° ͟ʖ ͡°)")
    }
    func printThreeLemmy() {
        let proxy = self.textDocumentProxy as UIKeyInput
        proxy.insertText("ᕦ( ͡° ͜ʖ ͡°)ᕤ")
    }
    func printFourLemmy() {
        let proxy = self.textDocumentProxy as UIKeyInput
        proxy.insertText("( ͡~ ͜ʖ ͡°)")
    }
    func printFiveLemmy() {
        let proxy = self.textDocumentProxy as UIKeyInput
        proxy.insertText("( ͡o ͜ʖ ͡o)")
    }
    func printSixLemmy() {
        let proxy = self.textDocumentProxy as UIKeyInput
        proxy.insertText("͡° ͜ʖ ͡ -")
    }
    func printSevenLemmy() {
        let proxy = self.textDocumentProxy as UIKeyInput
        proxy.insertText("( ͡͡ ° ͜ ʖ ͡ °)﻿")
    }
    func printEightLemmy() {
        let proxy = self.textDocumentProxy as UIKeyInput
        proxy.insertText("( ͡^ ͜ʖ ͡^)")
    }
    func printNineLemmy() {
        let proxy = self.textDocumentProxy as UIKeyInput
        proxy.insertText("(ง ͠° ͟ل͜ ͡°)ง")
    }
    func printTenLemmy() {
        let proxy = self.textDocumentProxy as UIKeyInput
        proxy.insertText("┌∩┐(-_-)")
    }
    func printElevenLemmy() {
        let proxy = self.textDocumentProxy as UIKeyInput
        proxy.insertText("( ͡°╭͜ʖ╮͡° )")
    }
    func printTwelveLemmy() {
        let proxy = self.textDocumentProxy as UIKeyInput
        proxy.insertText("~(‾▿‾)~")
    }
    func printThirteenLemmy() {
        let proxy = self.textDocumentProxy as UIKeyInput
        proxy.insertText("ヽ༼ຈل͜ຈ༽ﾉ")
    }
    func printFourteenLemmy() {
        let proxy = self.textDocumentProxy as UIKeyInput
        proxy.insertText("(ノಠ益ಠ)ノ彡")
    }
    func printFifteenLemmy() {
        let proxy = self.textDocumentProxy as UIKeyInput
        proxy.insertText("{ ͡• ͜ʖ ͡•}")
    }
    func printSixteenLemmy() {
        let proxy = self.textDocumentProxy as UIKeyInput
        proxy.insertText("ヽ(￣(ｴ)￣)ﾉ")
    }
    func printMaxLemmy() {
        let image = UIImage(named: "maximal_meme.png")
        UIPasteboard.generalPasteboard().image = image;
    }
    
    func addSpace() {
        let proxy = self.textDocumentProxy as UIKeyInput
        proxy.insertText(" ")
    }
    
    func didTapDelete() {
        var proxy = textDocumentProxy as UITextDocumentProxy
        proxy.deleteBackward()
    }
    
    func loadKeyboard() {
        var keyboardNib = UINib(nibName: "Keyboard", bundle: nil)
        keyboardView = keyboardNib.instantiateWithOwner(self, options: nil)[0] as! UIView
        view.addSubview(keyboardView);
        keyboardView.frame = view.frame
        nextKeyboardButton.addTarget(self, action: "advanceToNextInputMode", forControlEvents: .TouchUpInside)
        returnKeyboardButton.addTarget(self, action: "dismissKeyboard", forControlEvents: .TouchUpInside)
        spaceKeyboardButton.addTarget(self, action: "addSpace", forControlEvents: .TouchUpInside)
        deleteKeyboardButton.addTarget(self, action: "didTapDelete", forControlEvents: .TouchUpInside)
        
        oneLenny.addTarget(self, action: "printOneLemmy", forControlEvents: .TouchUpInside)
        twoLenny.addTarget(self, action: "printTwoLemmy", forControlEvents: .TouchUpInside)
        threeLenny.addTarget(self, action: "printThreeLemmy", forControlEvents: .TouchUpInside)
        fourLenny.addTarget(self, action: "printFourLemmy", forControlEvents: .TouchUpInside)
        fiveLenny.addTarget(self, action: "printFiveLemmy", forControlEvents: .TouchUpInside)
        sixLenny.addTarget(self, action: "printSixLemmy", forControlEvents: .TouchUpInside)
        sevenLenny.addTarget(self, action: "printSevenLemmy", forControlEvents: .TouchUpInside)
        eightLenny.addTarget(self, action: "printEightLemmy", forControlEvents: .TouchUpInside)
        nineLenny.addTarget(self, action: "printNineLemmy", forControlEvents: .TouchUpInside)
        tenLenny.addTarget(self, action: "printTenLemmy", forControlEvents: .TouchUpInside)
        elevenLenny.addTarget(self, action: "printElevenLemmy", forControlEvents: .TouchUpInside)
        twelveLenny.addTarget(self, action: "printTwelveLemmy", forControlEvents: .TouchUpInside)
        thirteenLenny.addTarget(self, action: "printThirteenLemmy", forControlEvents: .TouchUpInside)
        fourteenLenny.addTarget(self, action: "printFourteenLemmy", forControlEvents: .TouchUpInside)
        fifteenLenny.addTarget(self, action: "printFifteenLemmy", forControlEvents: .TouchUpInside)
        sixteenLenny.addTarget(self, action: "printSixteenLemmy", forControlEvents: .TouchUpInside)
        
        max.addTarget(self, action: "printMaxLemmy", forControlEvents: .TouchUpInside)
        
    }

}
















