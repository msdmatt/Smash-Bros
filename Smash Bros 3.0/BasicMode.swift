//
//  BasicMode.swift
//  Smash Bros 3.0
//
//  Created by Matthew Disharoon on 12/12/18.
//  Copyright © 2018 Matthew Disharoon. All rights reserved.
//

import UIKit

class BasicMode: UIViewController {
    
    
// Buttons and Labels from ViewController
    @IBOutlet weak var homeButton: UIButton!
    @IBOutlet weak var team1Button: UIButton!
    @IBOutlet weak var team1WinButton: UIButton!
    @IBOutlet weak var stageButton: UIButton!
    @IBOutlet weak var team2Button: UIButton!
    @IBOutlet weak var team2WinButton: UIButton!
    @IBOutlet weak var letsPlayButton: UIButton!
    @IBOutlet weak var modeButton: UIButton!
    
    @IBOutlet weak var player1Label: UILabel!
    @IBOutlet weak var player2Label: UILabel!
    @IBOutlet weak var player1Character: UIImageView!
    @IBOutlet weak var player2Character: UIImageView!
    @IBOutlet weak var stageLabel: UILabel!
    @IBOutlet weak var stageImage: UIImageView!
    @IBOutlet weak var player3Label: UILabel!
    @IBOutlet weak var player4Label: UILabel!
    @IBOutlet weak var player3Character: UIImageView!
    @IBOutlet weak var player4Character: UIImageView!
    

// Constants and Variables
    let characterImageArray = ["DonkeyKong","Falcon","Fox","Jigglypuff","Kirby","Link","Luigi","Mario","Ness","Pikachu","Samus","Yoshi","DonkeyKong","Falcon","Fox","Jigglypuff","Kirby","Link","Luigi","Mario","Ness","Pikachu","Samus","Yoshi","DonkeyKong","Falcon","Fox","Jigglypuff","Kirby","Link","Luigi","Mario","Ness","Pikachu","Samus","Yoshi","DonkeyKong","Falcon","Fox","Jigglypuff","Kirby","Link","Luigi","Mario","Ness","Pikachu","Samus","Yoshi","Star"]
    let playerArray = ["Chris","Rich","Jeff","Matt","Kat"]
    var chrisLabel:String = "Chris"
    var richLabel:String = "Rich"
    var jeffLabel:String = "Jeff"
    var mattLabel:String = "Matt"
    var katLabel:String = "Kat"
    let stageArray = ["Dreamland","HyruleCastle","PeachCastle","SaffronCity","SectorZ","YoshiIsland"]
    var dreamlandLabel:String = "Kirby's Dreamland"
    var hyruleCastleLabel:String = "Hyrule Castle"
    var peachCastleLabel:String = "Peach's Castle"
    var saffronCityLabel:String = "Saffron City"
    var sectorZLabel:String = "Sector Z"
    var yoshiIslandLabel:String = "Yoshi's Storybook"
    var randomPlayer1Index:Int = 0
    var randomPlayer2Index:Int = 0
    var randomPlayer3Index:Int = 0
    var randomPlayer4Index:Int = 0
    var randomPlayer1CharImage:Int = 0
    var randomPlayer2CharImage:Int = 0
    var randomPlayer3CharImage:Int = 0
    var randomPlayer4CharImage:Int = 0
    var randomTeams:Int = 0
    var randomStage:Int = 0
    
    
// Actions go here
    override func viewDidLoad() {super.viewDidLoad()
        adjustLabelsButtonsBorders();disableScreen()}
    
    @IBAction func ModeButton(_ sender: Any) {changeMode();disableScreen()}
    
    @IBAction func Team1Button(_ sender: Any) {randomizeTeam1Characters()}
    
    @IBAction func Team1WinButton(_ sender: Any) {}
    
    @IBAction func StageButton(_ sender: Any) {randomizeStage()}
    
    @IBAction func Team2Button(_ sender: Any) {randomizeTeam2Characters()}
    
    @IBAction func Team2WinButton(_ sender: Any) {}
    
    @IBAction func LetsPlayButton(_ sender: Any) {
        enableScreen();
        if modeButton.currentTitle == "Basic Mode" {randomizeTeams();randomizeCharacter();randomizeStage()}
        else if modeButton.currentTitle == "Choose your opponents" {randomizeTeams();randomizeCharacter();randomizeStage()}
        else if modeButton.currentTitle == "Same character" {randomizeTeams(); sameCharacters();randomizeStage()}
        else if modeButton.currentTitle == "Worst character" {randomizeTeams();randomizeCharacter();randomizeStage()}}

    
    
// Functions go here
// Don't forget to do if statements based on which mode you're in
    
    func hideButtons() {
        team1WinButton.isHidden = true;
        team2WinButton.isHidden = true;
        team1Button.isHidden = true;
        team2Button.isHidden = true;
        stageButton.isHidden = true;
        team1Button.isHidden = true;
        team2Button.isHidden = true}
        
    func unhideButtons(){
        team1WinButton.isHidden = false;
        team2WinButton.isHidden = false;
        team1Button.isHidden = false;
        team2Button.isHidden = false;
        stageButton.isHidden = false;
        team1Button.isHidden = false;
        team2Button.isHidden = false}
        
    func adjustLabelsButtonsBorders(){
        homeButton.layer.cornerRadius = 7;
        letsPlayButton.layer.cornerRadius = 7;
        team1WinButton.layer.cornerRadius = 7;
        team2WinButton.layer.cornerRadius = 7}
    
    func randomizeTeams(){
        randomPlayer1Index = Int.random(in: 0...3)
        randomPlayer2Index = Int.random(in: 0...3)
        randomPlayer3Index = Int.random(in: 0...3)
        randomPlayer4Index = Int.random(in: 0...3)
        randomPlayer1Index = Int.random(in: 0...3);
        if randomPlayer1Index == 0 {player1Label.text = chrisLabel}
        if randomPlayer1Index == 1 {player1Label.text = richLabel}
        if randomPlayer1Index == 2 {player1Label.text = jeffLabel}
        if randomPlayer1Index == 3 {player1Label.text = mattLabel}
        if randomPlayer2Index == 4 {player1Label.text = katLabel}
        if randomPlayer2Index == 0 {player2Label.text = chrisLabel}
        if randomPlayer2Index == 1 {player2Label.text = richLabel}
        if randomPlayer2Index == 2 {player2Label.text = jeffLabel}
        if randomPlayer2Index == 3 {player2Label.text = mattLabel}
        if randomPlayer2Index == 4 {player2Label.text = katLabel}
        if randomPlayer3Index == 0 {player3Label.text = chrisLabel}
        if randomPlayer3Index == 1 {player3Label.text = richLabel}
        if randomPlayer3Index == 2 {player3Label.text = jeffLabel}
        if randomPlayer3Index == 3 {player3Label.text = mattLabel}
        if randomPlayer3Index == 4 {player3Label.text = katLabel}
        if randomPlayer4Index == 0 {player4Label.text = chrisLabel}
        if randomPlayer4Index == 1 {player4Label.text = richLabel}
        if randomPlayer4Index == 2 {player4Label.text = jeffLabel}
        if randomPlayer4Index == 3 {player4Label.text = mattLabel}
        if randomPlayer4Index == 4 {player4Label.text = katLabel}
        if player1Label.text == player2Label.text {randomizeTeams()}
        if player1Label.text == player3Label.text {randomizeTeams()}
        if player1Label.text == player4Label.text {randomizeTeams()}
        if player2Label.text == player3Label.text {randomizeTeams()}
        if player2Label.text == player4Label.text {randomizeTeams()}
        if player3Label.text == player4Label.text {randomizeTeams()}}

    func randomizeCharacter(){
        randomPlayer1CharImage = Int.random(in: 0...48)
        player1Character.image = UIImage(named: characterImageArray[randomPlayer1CharImage])
        randomPlayer2CharImage = Int.random(in: 0...48)
        player2Character.image = UIImage(named: characterImageArray[randomPlayer2CharImage])
        randomPlayer3CharImage = Int.random(in: 0...48)
        player3Character.image = UIImage(named: characterImageArray[randomPlayer3CharImage])
        randomPlayer4CharImage = Int.random(in: 0...48)
        player4Character.image = UIImage(named: characterImageArray[randomPlayer4CharImage])
        if player1Character.image == player2Character.image {randomizeCharacter()}
        if player1Character.image == player3Character.image {randomizeCharacter()}
        if player1Character.image == player4Character.image {randomizeCharacter()}
        if player2Character.image == player3Character.image {randomizeCharacter()}
        if player2Character.image == player4Character.image {randomizeCharacter()}
        if player3Character.image == player4Character.image {randomizeCharacter()}}
    
    func randomizeTeam1Characters() {
        if modeButton.currentTitle == "Basic Mode" || modeButton.currentTitle == "Choose your opponents" || modeButton.currentTitle == "Worst character" {
        randomPlayer1CharImage = Int.random(in: 0...48)
        player1Character.image = UIImage(named: characterImageArray[randomPlayer1CharImage])
        randomPlayer2CharImage = Int.random(in: 0...48)
        player2Character.image = UIImage(named: characterImageArray[randomPlayer2CharImage])
        if player1Character.image == player3Character.image {randomizeTeam1Characters()}
        if player1Character.image == player4Character.image {randomizeTeam1Characters()}
        if player2Character.image == player1Character.image {randomizeTeam1Characters()}
        if player2Character.image == player3Character.image {randomizeTeam1Characters()}
            if player2Character.image == player4Character.image {randomizeTeam1Characters()}}
        else {sameCharacters()}}
    
    func randomizeTeam2Characters() {
        if modeButton.currentTitle == "Basic Mode" || modeButton.currentTitle == "Choose your opponents" || modeButton.currentTitle == "Worst character" {
        randomPlayer3CharImage = Int.random(in: 0...48)
        player3Character.image = UIImage(named: characterImageArray[randomPlayer3CharImage])
        randomPlayer4CharImage = Int.random(in: 0...48)
        player4Character.image = UIImage(named: characterImageArray[randomPlayer4CharImage])
        if player3Character.image == player1Character.image {randomizeTeam2Characters()}
        if player3Character.image == player2Character.image {randomizeTeam2Characters()}
        if player4Character.image == player3Character.image {randomizeTeam2Characters()}
        if player4Character.image == player1Character.image {randomizeTeam2Characters()}
            if player4Character.image == player2Character.image {randomizeTeam2Characters()}}
        else {sameCharacters()}}

    func randomizeStage() {
        randomStage = Int.random(in: 0...5)
        stageImage.image = UIImage(named: stageArray[randomStage])
        if randomStage == 0 {stageLabel.text = dreamlandLabel}
        if randomStage == 1 {stageLabel.text = hyruleCastleLabel}
        if randomStage == 2 {stageLabel.text = peachCastleLabel}
        if randomStage == 3 {stageLabel.text = saffronCityLabel}
        if randomStage == 4 {stageLabel.text = sectorZLabel}
        if randomStage == 5 {stageLabel.text = yoshiIslandLabel}}

    func sameCharacters () {
        randomPlayer1CharImage = Int.random(in: 0...7)
        player1Character.image = UIImage(named:characterImageArray[randomPlayer1CharImage])
        player2Character.image = UIImage(named:characterImageArray[randomPlayer1CharImage])
        player3Character.image = UIImage(named:characterImageArray[randomPlayer1CharImage])
        player4Character.image = UIImage(named:characterImageArray[randomPlayer1CharImage])}
    
    func changeMode() {
        unhideButtons();
        if modeButton.currentTitle == "Basic Mode" {
            modeButton.setTitle("Choose your opponents", for: .normal)}
        else if modeButton.currentTitle == "Choose your opponents" {
            modeButton.setTitle("Same character", for: .normal)}
        else if modeButton.currentTitle == "Same character" {
            modeButton.setTitle("Worst character", for: .normal)}
        else {self.modeButton.setTitle("Basic Mode", for: .normal)}}
    
    func disableScreen(){
        team1Button.isEnabled = false;
        team2Button.isEnabled = false;
        stageButton.isEnabled = false}
    
    func enableScreen(){
        team1Button.isEnabled = true;
        team2Button.isEnabled = true;
        stageButton.isEnabled = true}
        
    }
