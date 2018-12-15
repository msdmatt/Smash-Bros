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
    @IBOutlet weak var richLabel: UILabel!
    @IBOutlet weak var richScore: UILabel!
    @IBOutlet weak var jeffLabel: UILabel!
    @IBOutlet weak var jeffScore: UILabel!
    @IBOutlet weak var mattLabel: UILabel!
    @IBOutlet weak var mattScore: UILabel!
    
    var chrisScoreTotal:Int = 0

    @IBAction func BasicModeLoadAction(_ sender: Any) {}
    @IBAction func ChooseOpponentsAction(_ sender: Any) {}
    @IBAction func SameCharAction(_ sender: Any) {}
    @IBAction func WorstCharAction(_ sender: Any) {}
    
    
    override func viewDidLoad() {super.viewDidLoad();
        roundEdges()}
    
    func roundEdges() {
        BasicModeLoadButton.layer.cornerRadius = 7;
        ChooseOpponentsLoadButton.layer.cornerRadius = 7;
        SameCharLoadButton.layer.cornerRadius = 7;
        WorstCharLoadButton.layer.cornerRadius = 7;
        chrisLabel.layer.cornerRadius = 7;
        chrisScore.layer.cornerRadius = 7;
        richLabel.layer.cornerRadius = 7;
        richScore.layer.cornerRadius = 7;
        jeffLabel.layer.cornerRadius = 7;
        jeffScore.layer.cornerRadius = 7;
        mattLabel.layer.cornerRadius = 7;
        mattScore.layer.cornerRadius = 7}
    
    
    
}
