//
//  ViewController.swift
//  Smash Bros 3.0
//
//  Created by Matthew Disharoon on 12/12/18.
//  Copyright © 2018 Matthew Disharoon. All rights reserved.
//

import UIKit

class MainController: UIViewController {
    
    @IBOutlet weak var BasicModeLoadButton: UIButton!
    @IBOutlet weak var ChooseOpponentsLoadButton: UIButton!
    @IBOutlet weak var SameCharLoadButton: UIButton!
    @IBOutlet weak var WorstCharLoadButton: UIButton!
    @IBOutlet weak var chrisLabel: UILabel!
    @IBOutlet weak var chrisScore: UILabel!
    var chrisScoreInt:Int = 0
    @IBOutlet weak var richLabel: UILabel!
    @IBOutlet weak var richScore: UILabel!
    var richScoreInt:Int = 0
    @IBOutlet weak var jeffLabel: UILabel!
    @IBOutlet weak var jeffScore: UILabel!
    var jeffScoreInt:Int = 0
    @IBOutlet weak var mattLabel: UILabel!
    @IBOutlet weak var mattScore: UILabel!
    var mattScoreInt:Int = 0
    @IBOutlet weak var katLabel: UILabel!
    @IBOutlet weak var katScore: UILabel!
    var katScoreInt:Int = 0
    @IBOutlet weak var playerScoresLabel: UILabel!
    
    @IBAction func BasicModeLoadAction(_ sender: Any) {
        performSegue(withIdentifier: "goToModeScreen", sender: self)}
    
    @IBAction func ChooseOpponentsAction(_ sender: Any) {
        performSegue(withIdentifier: "goToModeScreen", sender: self)}
    
    @IBAction func SameCharAction(_ sender: Any) {
        performSegue(withIdentifier: "goToModeScreen", sender: self)}
    
    @IBAction func WorstCharAction(_ sender: Any) {}
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToModeScreen" && BasicModeLoadButton.isTouchInside == true {
            let destinationVC = segue.destination as! ModeViewController
            destinationVC.modeIntPassed = 1}
        else if segue.identifier == "goToModeScreen" && ChooseOpponentsLoadButton.isTouchInside == true {
            let destinationVC = segue.destination as! ModeViewController
            destinationVC.modeIntPassed = 2}
        else if segue.identifier == "goToModeScreen" && SameCharLoadButton.isTouchInside == true {
            let destinationVC = segue.destination as! ModeViewController
            destinationVC.modeIntPassed = 3}}
    
    override func viewDidLoad() {super.viewDidLoad();roundEdges()}
    
    func roundEdges() {
        playerScoresLabel.layer.masksToBounds = true;
        playerScoresLabel.layer.cornerRadius = 7;
        BasicModeLoadButton.layer.masksToBounds = true;
        BasicModeLoadButton.layer.cornerRadius = 7;
        ChooseOpponentsLoadButton.layer.cornerRadius = 7;
        SameCharLoadButton.layer.cornerRadius = 7;
        WorstCharLoadButton.layer.cornerRadius = 7;
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
        chrisLabel.layer.cornerRadius = 7;
        chrisScore.layer.cornerRadius = 7;
        richLabel.layer.cornerRadius = 7;
        richScore.layer.cornerRadius = 7;
        jeffLabel.layer.cornerRadius = 7;
        jeffScore.layer.cornerRadius = 7;
        mattLabel.layer.cornerRadius = 7;
        mattScore.layer.cornerRadius = 7;
        katLabel.layer.cornerRadius = 7;
        katScore.layer.cornerRadius = 7}
    
//    func updateScoresSituations() {
//        if scoresUpdated == 12 {chrisScoreInt = chrisScoreInt + 1; richScoreInt = richScoreInt + 1}
//        if scoresUpdated == 13 {chrisScoreInt = chrisScoreInt + 1; jeffScoreInt = jeffScoreInt + 1}
//        if scoresUpdated == 14 {chrisScoreInt = chrisScoreInt + 1; mattScoreInt = mattScoreInt + 1}
//        if scoresUpdated == 21 {richScoreInt = richScoreInt + 1; chrisScoreInt = chrisScoreInt + 1}
//        if scoresUpdated == 23 {richScoreInt = richScoreInt + 1; jeffScoreInt = jeffScoreInt + 1}
//        if scoresUpdated == 24 {richScoreInt = richScoreInt + 1; mattScoreInt = mattScoreInt + 1}
//        if scoresUpdated == 31 {jeffScoreInt = jeffScoreInt + 1; chrisScoreInt = chrisScoreInt + 1}
//        if scoresUpdated == 32 {jeffScoreInt = jeffScoreInt + 1; richScoreInt = richScoreInt + 1}
//        if scoresUpdated == 34 {jeffScoreInt = jeffScoreInt + 1; mattScoreInt = mattScoreInt + 1}
//        if scoresUpdated == 41 {mattScoreInt = mattScoreInt + 1; chrisScoreInt = chrisScoreInt + 1}
//        if scoresUpdated == 42 {mattScoreInt = mattScoreInt + 1; richScoreInt = richScoreInt + 1}
//        if scoresUpdated == 43 {mattScoreInt = mattScoreInt + 1; jeffScoreInt = jeffScoreInt + 1}}
    
}

