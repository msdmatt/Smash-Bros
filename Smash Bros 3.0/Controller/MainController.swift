//
//  ViewController.swift
//  Smash Bros 3.0
//
//  Created by Matthew Disharoon on 12/12/18.
//  Copyright © 2018 Matthew Disharoon. All rights reserved.
//

import UIKit

class MainController: UIViewController, UpdateScores {
    

    @IBOutlet weak var BasicModeLoadButton: UIButton!
    @IBOutlet weak var ChooseOpponentsLoadButton: UIButton!
    @IBOutlet weak var SameCharLoadButton: UIButton!
    @IBOutlet weak var chrisLabel: UILabel!
    @IBOutlet weak var chrisScore: UILabel!
    @IBOutlet weak var richLabel: UILabel!
    @IBOutlet weak var richScore: UILabel!
    @IBOutlet weak var jeffLabel: UILabel!
    @IBOutlet weak var jeffScore: UILabel!
    @IBOutlet weak var mattLabel: UILabel!
    @IBOutlet weak var mattScore: UILabel!
    @IBOutlet weak var katLabel: UILabel!
    @IBOutlet weak var katScore: UILabel!
    @IBOutlet weak var playerScoresLabel: UILabel!
    @IBOutlet weak var player1ScoreIncLabel: UIButton!
    @IBOutlet weak var player2ScoreIncLabel: UIButton!
    @IBOutlet weak var player3ScoreIncLabel: UIButton!
    @IBOutlet weak var player4ScoreIncLabel: UIButton!
    @IBOutlet weak var player5ScoreIncLabel: UIButton!
    @IBOutlet weak var player1ScoreDecLabel: UIButton!
    @IBOutlet weak var player2ScoreDecLabel: UIButton!
    @IBOutlet weak var player3ScoreDecLabel: UIButton!
    @IBOutlet weak var player4ScoreDecLabel: UIButton!
    @IBOutlet weak var player5ScoreDecLabel: UIButton!
    @IBOutlet weak var adjustScoresButton: UIButton!
    @IBOutlet weak var lockScoresButton: UIButton!
    @IBOutlet weak var resetScoresButton: UIButton!
    
    var cornerRadius:CGFloat = 7.00
    var chrisScoreInt:Int = 0
    var richScoreInt:Int = 0
    var jeffScoreInt:Int = 0
    var mattScoreInt:Int = 0
    var katScoreInt:Int = 0
    var winnersInt:Int = 0
    
    func winnersSelected(winners: Int) {
        winnersInt = winners
        updateScoresSituations()
        lockScores()}
    
    @IBAction func BasicModeLoadAction(_ sender: Any) {
        lockScores()
        performSegue(withIdentifier: "goToModeScreen", sender: self)}
    
    @IBAction func ChooseOpponentsAction(_ sender: Any) {
        lockScores()
        performSegue(withIdentifier: "goToModeScreen", sender: self)}
    
    @IBAction func SameCharAction(_ sender: Any) {
        lockScores()
        performSegue(withIdentifier: "goToModeScreen", sender: self)}
        
    @IBAction func player1ScoreInc(_ sender: Any) {
        scoreChangeButtonPressed()}
    
    @IBAction func player2ScoreInc(_ sender: Any) {
        scoreChangeButtonPressed()}
    
    @IBAction func player3ScoreInc(_ sender: Any) {
        scoreChangeButtonPressed()}
    
    @IBAction func player4ScoreInc(_ sender: Any) {
        scoreChangeButtonPressed()}
    
    @IBAction func player5ScoreInc(_ sender: Any) {
        scoreChangeButtonPressed()}
    
    @IBAction func player1ScoreDec(_ sender: Any) {
        scoreChangeButtonPressed()}
    
    @IBAction func player2ScoreDec(_ sender: Any) {
        scoreChangeButtonPressed()}
    
    @IBAction func player3ScoreDec(_ sender: Any) {
        scoreChangeButtonPressed()}
    
    @IBAction func player4ScoreDec(_ sender: Any) {
        scoreChangeButtonPressed()}
    
    @IBAction func player5ScoreDec(_ sender: Any) {
        scoreChangeButtonPressed()}
    
    @IBAction func adjustScores(_ sender: Any) {
        unlockScores()}
    
    @IBAction func lockScores(_ sender: Any) {
        lockScores()}
    
    @IBAction func resetScores(_ sender: Any) {
        if player1ScoreIncLabel.isEnabled == true {
            resetScores();lockScores()}}
    
    //MARK Functions
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToModeScreen" {
            let destinationVC = segue.destination as! ModeViewController
            destinationVC.delegate = self}
        if segue.identifier == "goToModeScreen" && BasicModeLoadButton.isTouchInside == true {
            let destinationVC = segue.destination as! ModeViewController
            destinationVC.modeIntPassed = 1}
        else if segue.identifier == "goToModeScreen" && ChooseOpponentsLoadButton.isTouchInside == true {
            let destinationVC = segue.destination as! ModeViewController
            destinationVC.modeIntPassed = 2}
        else if segue.identifier == "goToModeScreen" && SameCharLoadButton.isTouchInside == true {
            let destinationVC = segue.destination as! ModeViewController
            destinationVC.modeIntPassed = 3}}
    
    override func viewDidLoad() {super.viewDidLoad();roundEdges(); updateScoresSituations();lockScores()}
    
    func roundEdges() {
        playerScoresLabel.layer.masksToBounds = true;
        playerScoresLabel.layer.cornerRadius = cornerRadius;
        BasicModeLoadButton.layer.masksToBounds = true;
        BasicModeLoadButton.layer.cornerRadius = cornerRadius;
        ChooseOpponentsLoadButton.layer.cornerRadius = cornerRadius;
        SameCharLoadButton.layer.cornerRadius = cornerRadius;
        chrisLabel.layer.masksToBounds = true;
        chrisScore.layer.masksToBounds = true;
        richLabel.layer.masksToBounds = true;
        richScore.layer.masksToBounds = true;
        jeffLabel.layer.masksToBounds = true;
        jeffScore.layer.masksToBounds = true;
        mattLabel.layer.masksToBounds = true;
        mattScore.layer.masksToBounds = true;
        katLabel.layer.masksToBounds = true;
        katScore.layer.masksToBounds = true;
        player1ScoreIncLabel.layer.masksToBounds = true;
        player2ScoreIncLabel.layer.masksToBounds = true;
        player3ScoreIncLabel.layer.masksToBounds = true;
        player4ScoreIncLabel.layer.masksToBounds = true;
        player5ScoreIncLabel.layer.masksToBounds = true;
        player1ScoreDecLabel.layer.masksToBounds = true;
        player2ScoreDecLabel.layer.masksToBounds = true;
        player3ScoreDecLabel.layer.masksToBounds = true;
        player4ScoreDecLabel.layer.masksToBounds = true;
        player5ScoreDecLabel.layer.masksToBounds = true;
        chrisLabel.layer.cornerRadius = cornerRadius;
        chrisScore.layer.cornerRadius = cornerRadius;
        richLabel.layer.cornerRadius = cornerRadius;
        richScore.layer.cornerRadius = cornerRadius;
        jeffLabel.layer.cornerRadius = cornerRadius;
        jeffScore.layer.cornerRadius = cornerRadius;
        mattLabel.layer.cornerRadius = cornerRadius;
        mattScore.layer.cornerRadius = cornerRadius;
        katLabel.layer.cornerRadius = cornerRadius;
        katScore.layer.cornerRadius = cornerRadius;
        adjustScoresButton.layer.masksToBounds = true;
        lockScoresButton.layer.masksToBounds = true;
        resetScoresButton.layer.masksToBounds = true;
        player1ScoreIncLabel.layer.cornerRadius = cornerRadius;
        player2ScoreIncLabel.layer.cornerRadius = cornerRadius;
        player3ScoreIncLabel.layer.cornerRadius = cornerRadius;
        player4ScoreIncLabel.layer.cornerRadius = cornerRadius;
        player5ScoreIncLabel.layer.cornerRadius = cornerRadius;
        player1ScoreDecLabel.layer.cornerRadius = cornerRadius;
        player2ScoreDecLabel.layer.cornerRadius = cornerRadius;
        player3ScoreDecLabel.layer.cornerRadius = cornerRadius;
        player4ScoreDecLabel.layer.cornerRadius = cornerRadius;
        player5ScoreDecLabel.layer.cornerRadius = cornerRadius;
        adjustScoresButton.layer.cornerRadius = cornerRadius;
        lockScoresButton.layer.cornerRadius = cornerRadius;
        resetScoresButton.layer.cornerRadius = cornerRadius}
    
    func updateScoresSituations() {
        if winnersInt == 12 {chrisScoreInt = chrisScoreInt + 1; richScoreInt = richScoreInt + 1}
        if winnersInt == 13 {chrisScoreInt = chrisScoreInt + 1; jeffScoreInt = jeffScoreInt + 1}
        if winnersInt == 14 {chrisScoreInt = chrisScoreInt + 1; mattScoreInt = mattScoreInt + 1}
        if winnersInt == 15 {chrisScoreInt = chrisScoreInt + 1; katScoreInt = katScoreInt + 1}
        if winnersInt == 21 {richScoreInt = richScoreInt + 1; chrisScoreInt = chrisScoreInt + 1}
        if winnersInt == 23 {richScoreInt = richScoreInt + 1; jeffScoreInt = jeffScoreInt + 1}
        if winnersInt == 24 {richScoreInt = richScoreInt + 1; mattScoreInt = mattScoreInt + 1}
        if winnersInt == 25 {richScoreInt = richScoreInt + 1; katScoreInt = katScoreInt + 1}
        if winnersInt == 31 {jeffScoreInt = jeffScoreInt + 1; chrisScoreInt = chrisScoreInt + 1}
        if winnersInt == 32 {jeffScoreInt = jeffScoreInt + 1; richScoreInt = richScoreInt + 1}
        if winnersInt == 34 {jeffScoreInt = jeffScoreInt + 1; mattScoreInt = mattScoreInt + 1}
        if winnersInt == 35 {jeffScoreInt = jeffScoreInt + 1; katScoreInt = katScoreInt + 1}
        if winnersInt == 41 {mattScoreInt = mattScoreInt + 1; chrisScoreInt = chrisScoreInt + 1}
        if winnersInt == 42 {mattScoreInt = mattScoreInt + 1; richScoreInt = richScoreInt + 1}
        if winnersInt == 43 {mattScoreInt = mattScoreInt + 1; jeffScoreInt = jeffScoreInt + 1}
        if winnersInt == 45 {mattScoreInt = mattScoreInt + 1; katScoreInt = katScoreInt + 1}
        if winnersInt == 51 {katScoreInt = katScoreInt + 1; chrisScoreInt = chrisScoreInt + 1}
        if winnersInt == 52 {katScoreInt = katScoreInt + 1; richScoreInt = richScoreInt + 1}
        if winnersInt == 53 {katScoreInt = katScoreInt + 1; jeffScoreInt = jeffScoreInt + 1}
        if winnersInt == 54 {katScoreInt = katScoreInt + 1; mattScoreInt = mattScoreInt + 1}
        chrisScore.text = String(chrisScoreInt)
        richScore.text = String(richScoreInt)
        jeffScore.text = String(jeffScoreInt)
        mattScore.text = String(mattScoreInt)
        katScore.text = String(katScoreInt)}
 
    func scoreChangeButtonPressed(){
        if player1ScoreIncLabel.isTouchInside == true {
            chrisScoreInt = chrisScoreInt + 1}
        if player2ScoreIncLabel.isTouchInside == true {
            richScoreInt = richScoreInt + 1}
        if player3ScoreIncLabel.isTouchInside == true {
            jeffScoreInt = jeffScoreInt + 1}
        if player4ScoreIncLabel.isTouchInside == true {
            mattScoreInt = mattScoreInt + 1}
        if player5ScoreIncLabel.isTouchInside == true {
            katScoreInt = katScoreInt + 1}
        if player1ScoreDecLabel.isTouchInside == true {
            chrisScoreInt = chrisScoreInt - 1}
        if player2ScoreDecLabel.isTouchInside == true {
            richScoreInt = richScoreInt - 1}
        if player3ScoreDecLabel.isTouchInside == true {
            jeffScoreInt = jeffScoreInt - 1}
        if player4ScoreDecLabel.isTouchInside == true {
            mattScoreInt = mattScoreInt - 1}
        if player5ScoreDecLabel.isTouchInside == true {
            katScoreInt = katScoreInt - 1}
        chrisScore.text = String(chrisScoreInt)
        richScore.text = String(richScoreInt)
        jeffScore.text = String(jeffScoreInt)
        mattScore.text = String(mattScoreInt)
        katScore.text = String(katScoreInt)}

    func resetScores(){
        chrisScoreInt = 0
        jeffScoreInt = 0
        richScoreInt = 0
        mattScoreInt = 0
        katScoreInt = 0
        chrisScore.text = String(chrisScoreInt)
        richScore.text = String(richScoreInt)
        jeffScore.text = String(jeffScoreInt)
        mattScore.text = String(mattScoreInt)
        katScore.text = String(katScoreInt)}
        
    func lockScores(){
        player1ScoreIncLabel.isEnabled = false;
        player1ScoreDecLabel.isEnabled = false;
        player2ScoreIncLabel.isEnabled = false;
        player2ScoreDecLabel.isEnabled = false;
        player3ScoreIncLabel.isEnabled = false;
        player3ScoreDecLabel.isEnabled = false;
        player4ScoreIncLabel.isEnabled = false;
        player4ScoreDecLabel.isEnabled = false;
        player5ScoreIncLabel.isEnabled = false;
        player5ScoreDecLabel.isEnabled = false}
    
    func unlockScores(){
        player1ScoreIncLabel.isEnabled = true;
        player1ScoreDecLabel.isEnabled = true;
        player2ScoreIncLabel.isEnabled = true;
        player2ScoreDecLabel.isEnabled = true;
        player3ScoreIncLabel.isEnabled = true;
        player3ScoreDecLabel.isEnabled = true;
        player4ScoreIncLabel.isEnabled = true;
        player4ScoreDecLabel.isEnabled = true;
        player5ScoreIncLabel.isEnabled = true;
        player5ScoreDecLabel.isEnabled = true}
    
    }
    


