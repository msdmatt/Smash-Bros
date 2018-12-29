//
//  OtherModeViewController.swift
//  Smash Bros 3.0
//
//  Created by Matthew Disharoon on 12/28/18.
//  Copyright © 2018 Matthew Disharoon. All rights reserved.
//

import UIKit

class OtherModeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        adjustLabelsButtonsBorders()
        hideButtons()
        enableScreen()
        randomizeTeams();randomizeAllCharacter();randomizeStage()
        disableScreen()}

    @IBOutlet weak var homeButton: UIButton!
    @IBOutlet weak var modeButton: UIButton!
    @IBOutlet weak var team1WinButton: UIButton!
    @IBOutlet weak var team2WinButton: UIButton!
    @IBOutlet weak var statsButton: UIButton!
    
    @IBOutlet weak var team1Button: UIButton!
    @IBOutlet weak var player1Label: UILabel!
    @IBOutlet weak var player2Label: UILabel!
    @IBOutlet weak var player1Character: UIImageView!
    @IBOutlet weak var player1bCharacter: UIImageView!
    @IBOutlet weak var player2Character: UIImageView!
    
    @IBOutlet weak var stageLabel: UILabel!
    @IBOutlet weak var stageImage: UIImageView!
    @IBOutlet weak var stageButton: UIButton!
    
    @IBOutlet weak var team2Button: UIButton!
    @IBOutlet weak var player3Label: UILabel!
    @IBOutlet weak var player4Label: UILabel!
    @IBOutlet weak var player3Character: UIImageView!
    @IBOutlet weak var player3bCharacter: UIImageView!
    @IBOutlet weak var player4Character: UIImageView!
    
    @IBOutlet weak var letsPlayButton: UIButton!
    var delegate : UpdateScores?
    
    
    @IBAction func homeButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func team1WinButton(_ sender: Any) {
        matchWinners1()
        delegate?.winnersSelected(winners: matchWinnersInt ?? 0)
        self.dismiss(animated: true, completion: nil)}
    
    @IBAction func modeButton(_ sender: Any) {}
    
    @IBAction func team2WinButton(_ sender: Any) {
        matchWinners2()
        delegate?.winnersSelected(winners: matchWinnersInt ?? 0)
        self.dismiss(animated: true, completion: nil)}
    
    @IBAction func statsButton(_ sender: Any) {
    }
    
    @IBAction func team1Button(_ sender: Any) {
        randomizeTeam1Characters()}
    
    @IBAction func stageButton(_ sender: Any) {
        randomizeStage()}

    @IBAction func team2Button(_ sender: Any) {
        randomizeTeam2Characters()}
    
    @IBAction func letsPlayButton(_ sender: Any) {
        enableScreen()
        unhideButtons()
        randomizeTeams();randomizeAllCharacter();randomizeStage()}
    
// Variables and Constants
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
    var randomPlayer1bCharImage:Int = 0
    var randomPlayer2CharImage:Int = 0
    var randomPlayer3CharImage:Int = 0
    var randomPlayer3bCharImage:Int = 0
    var randomPlayer4CharImage:Int = 0
    var randomTeams:Int = 0
    var randomStage:Int = 0
    
    var modeIntPassed:Int?
    var matchWinnersInt:Int?
    var katPlays:Int?
 
    
// Functions
    func matchWinners1(){
        if player1Label.text == "Chris" && player2Label.text == "Rich" {
            matchWinnersInt = 12}
        if player1Label.text == "Chris" && player2Label.text == "Jeff" {
            matchWinnersInt = 13}
        if player1Label.text == "Chris" && player2Label.text == "Matt" {
            matchWinnersInt = 14}
        if player1Label.text == "Chris" && player2Label.text == "Kat" {
            matchWinnersInt = 15}
        if player1Label.text == "Rich" && player2Label.text == "Chris" {
            matchWinnersInt = 21}
        if player1Label.text == "Rich" && player2Label.text == "Jeff" {
            matchWinnersInt = 23}
        if player1Label.text == "Rich" && player2Label.text == "Matt" {
            matchWinnersInt = 24}
        if player1Label.text == "Rich" && player2Label.text == "Kat" {
            matchWinnersInt = 25}
        if player1Label.text == "Jeff" && player2Label.text == "Chris" {
            matchWinnersInt = 31}
        if player1Label.text == "Jeff" && player2Label.text == "Rich" {
            matchWinnersInt = 32}
        if player1Label.text == "Jeff" && player2Label.text == "Matt" {
            matchWinnersInt = 34}
        if player1Label.text == "Jeff" && player2Label.text == "Kat" {
            matchWinnersInt = 35}
        if player1Label.text == "Matt" && player2Label.text == "Chris" {
            matchWinnersInt = 41}
        if player1Label.text == "Matt" && player2Label.text == "Rich" {
            matchWinnersInt = 42}
        if player1Label.text == "Matt" && player2Label.text == "Jeff" {
            matchWinnersInt = 43}
        if player1Label.text == "Matt" && player2Label.text == "Kat" {
            matchWinnersInt = 45}
        if player1Label.text == "Kat" && player2Label.text == "Chris" {
            matchWinnersInt = 51}
        if player1Label.text == "Kat" && player2Label.text == "Rich" {
            matchWinnersInt = 52}
        if player1Label.text == "Kat" && player2Label.text == "Jeff" {
            matchWinnersInt = 53}
        if player1Label.text == "Kat" && player2Label.text == "Matt" {
            matchWinnersInt = 54}
        if player2Label.text == "Chris" && player1Label.text == "Rich" {
            matchWinnersInt = 12}
        if player2Label.text == "Chris" && player1Label.text == "Jeff" {
            matchWinnersInt = 13}
        if player2Label.text == "Chris" && player1Label.text == "Matt" {
            matchWinnersInt = 14}
        if player2Label.text == "Chris" && player1Label.text == "Kat" {
            matchWinnersInt = 15}
        if player2Label.text == "Rich" && player1Label.text == "Chris" {
            matchWinnersInt = 21}
        if player2Label.text == "Rich" && player1Label.text == "Jeff" {
            matchWinnersInt = 23}
        if player2Label.text == "Rich" && player1Label.text == "Matt" {
            matchWinnersInt = 24}
        if player2Label.text == "Rich" && player1Label.text == "Kat" {
            matchWinnersInt = 25}
        if player2Label.text == "Jeff" && player1Label.text == "Chris" {
            matchWinnersInt = 31}
        if player2Label.text == "Jeff" && player1Label.text == "Rich" {
            matchWinnersInt = 32}
        if player2Label.text == "Jeff" && player1Label.text == "Matt" {
            matchWinnersInt = 34}
        if player2Label.text == "Jeff" && player1Label.text == "Kat" {
            matchWinnersInt = 35}
        if player2Label.text == "Matt" && player1Label.text == "Chris" {
            matchWinnersInt = 41}
        if player2Label.text == "Matt" && player1Label.text == "Rich" {
            matchWinnersInt = 42}
        if player2Label.text == "Matt" && player1Label.text == "Jeff" {
            matchWinnersInt = 43}
        if player2Label.text == "Matt" && player1Label.text == "Kat" {
            matchWinnersInt = 45}
        if player2Label.text == "Kat" && player1Label.text == "Chris" {
            matchWinnersInt = 51}
        if player2Label.text == "Kat" && player1Label.text == "Rich" {
            matchWinnersInt = 52}
        if player2Label.text == "Kat" && player1Label.text == "Jeff" {
            matchWinnersInt = 53}
        if player2Label.text == "Kat" && player1Label.text == "Matt" {
            matchWinnersInt = 54}}
    
    func matchWinners2(){
        if player3Label.text == "Chris" && player4Label.text == "Rich" {
            matchWinnersInt = 12}
        if player3Label.text == "Chris" && player4Label.text == "Jeff" {
            matchWinnersInt = 13}
        if player3Label.text == "Chris" && player4Label.text == "Matt" {
            matchWinnersInt = 14}
        if player3Label.text == "Chris" && player4Label.text == "Kat" {
            matchWinnersInt = 15}
        if player3Label.text == "Rich" && player4Label.text == "Chris" {
            matchWinnersInt = 21}
        if player3Label.text == "Rich" && player4Label.text == "Jeff" {
            matchWinnersInt = 23}
        if player3Label.text == "Rich" && player4Label.text == "Matt" {
            matchWinnersInt = 24}
        if player3Label.text == "Rich" && player4Label.text == "Kat" {
            matchWinnersInt = 25}
        if player3Label.text == "Jeff" && player4Label.text == "Chris" {
            matchWinnersInt = 31}
        if player3Label.text == "Jeff" && player4Label.text == "Rich" {
            matchWinnersInt = 32}
        if player3Label.text == "Jeff" && player4Label.text == "Matt" {
            matchWinnersInt = 34}
        if player3Label.text == "Jeff" && player4Label.text == "Kat" {
            matchWinnersInt = 35}
        if player3Label.text == "Matt" && player4Label.text == "Chris" {
            matchWinnersInt = 41}
        if player3Label.text == "Matt" && player4Label.text == "Rich" {
            matchWinnersInt = 42}
        if player3Label.text == "Matt" && player4Label.text == "Jeff" {
            matchWinnersInt = 43}
        if player3Label.text == "Matt" && player4Label.text == "Kat" {
            matchWinnersInt = 45}
        if player3Label.text == "Kat" && player4Label.text == "Chris" {
            matchWinnersInt = 51}
        if player3Label.text == "Kat" && player4Label.text == "Rich" {
            matchWinnersInt = 52}
        if player3Label.text == "Kat" && player4Label.text == "Jeff" {
            matchWinnersInt = 53}
        if player3Label.text == "Kat" && player4Label.text == "Matt" {
            matchWinnersInt = 54}
        if player4Label.text == "Chris" && player3Label.text == "Rich" {
            matchWinnersInt = 12}
        if player4Label.text == "Chris" && player3Label.text == "Jeff" {
            matchWinnersInt = 13}
        if player4Label.text == "Chris" && player3Label.text == "Matt" {
            matchWinnersInt = 14}
        if player4Label.text == "Chris" && player3Label.text == "Kat" {
            matchWinnersInt = 15}
        if player4Label.text == "Rich" && player3Label.text == "Chris" {
            matchWinnersInt = 21}
        if player4Label.text == "Rich" && player3Label.text == "Jeff" {
            matchWinnersInt = 23}
        if player4Label.text == "Rich" && player3Label.text == "Matt" {
            matchWinnersInt = 24}
        if player4Label.text == "Rich" && player3Label.text == "Kat" {
            matchWinnersInt = 25}
        if player4Label.text == "Jeff" && player3Label.text == "Chris" {
            matchWinnersInt = 31}
        if player4Label.text == "Jeff" && player3Label.text == "Rich" {
            matchWinnersInt = 32}
        if player4Label.text == "Jeff" && player3Label.text == "Matt" {
            matchWinnersInt = 34}
        if player4Label.text == "Jeff" && player3Label.text == "Kat" {
            matchWinnersInt = 35}
        if player4Label.text == "Matt" && player3Label.text == "Chris" {
            matchWinnersInt = 41}
        if player4Label.text == "Matt" && player3Label.text == "Rich" {
            matchWinnersInt = 42}
        if player4Label.text == "Matt" && player3Label.text == "Jeff" {
            matchWinnersInt = 43}
        if player4Label.text == "Matt" && player3Label.text == "Kat" {
            matchWinnersInt = 45}
        if player4Label.text == "Kat" && player3Label.text == "Chris" {
            matchWinnersInt = 51}
        if player4Label.text == "Kat" && player3Label.text == "Rich" {
            matchWinnersInt = 52}
        if player4Label.text == "Kat" && player3Label.text == "Jeff" {
            matchWinnersInt = 53}
        if player4Label.text == "Kat" && player3Label.text == "Matt" {
            matchWinnersInt = 54}}
    
    
    func hideButtons() {
        team1Button.isHidden = true;
        team2Button.isHidden = true;
        stageButton.isHidden = true;
        team1Button.isHidden = true;
        team2Button.isHidden = true}
    
    func unhideButtons(){
        team1Button.isHidden = false;
        team2Button.isHidden = false;
        stageButton.isHidden = false;
        team1Button.isHidden = false;
        team2Button.isHidden = false}
    
    func hideImages(){
        player1Label.isHidden = true;
        player2Label.isHidden = true;
        player3Label.isHidden = true;
        player4Label.isHidden = true;
        stageLabel.isHidden = true;
        stageImage.isHidden = true;
        player1Character.isHidden = true;
        player1bCharacter.isHidden = true;
        player2Character.isHidden = true;
        player3Character.isHidden = true;
        player3bCharacter.isHidden = true;
        player4Character.isHidden = true}
    
    func unHideImages(){
        player1Label.isHidden = false;
        player2Label.isHidden = false;
        player3Label.isHidden = false;
        player4Label.isHidden = false;
        stageLabel.isHidden = false;
        stageImage.isHidden = false;
        player1Character.isHidden = false;
        player1bCharacter.isHidden = false;
        player2Character.isHidden = false;
        player3Character.isHidden = false;
        player3bCharacter.isHidden = false;
        player4Character.isHidden = false}
    
    func adjustLabelsButtonsBorders(){
        homeButton.layer.cornerRadius = 7;
        statsButton.layer.cornerRadius = 7;
        letsPlayButton.layer.cornerRadius = 7;
        team1WinButton.layer.cornerRadius = 7;
        team2WinButton.layer.cornerRadius = 7;
        player1Label.layer.masksToBounds = true;
        player1Label.layer.cornerRadius = 7;
        player1Label.layer.maskedCorners = [.layerMinXMinYCorner];
        player2Label.layer.masksToBounds = true;
        player2Label.layer.cornerRadius = 7;
        player2Label.layer.maskedCorners = [.layerMaxXMinYCorner];
        player3Label.layer.masksToBounds = true;
        player3Label.layer.cornerRadius = 7;
        player3Label.layer.maskedCorners = [.layerMinXMinYCorner];
        player4Label.layer.masksToBounds = true;
        player4Label.layer.cornerRadius = 7;
        player4Label.layer.maskedCorners = [.layerMaxXMinYCorner];
        player1Character.layer.masksToBounds = true;
        player1Character.layer.cornerRadius = 7;
        player1Character.layer.maskedCorners = [.layerMinXMaxYCorner];
        player2Character.layer.masksToBounds = true;
        player2Character.layer.cornerRadius = 7;
        player2Character.layer.maskedCorners = [.layerMaxXMaxYCorner];
        player3Character.layer.masksToBounds = true;
        player3Character.layer.cornerRadius = 7;
        player3Character.layer.maskedCorners = [.layerMinXMaxYCorner];
        player4Character.layer.masksToBounds = true;
        player4Character.layer.cornerRadius = 7;
        player4Character.layer.maskedCorners = [.layerMaxXMaxYCorner];
        stageLabel.layer.masksToBounds = true;
        stageLabel.layer.cornerRadius = 7;
        stageLabel.layer.maskedCorners = [.layerMinXMinYCorner,.layerMaxXMinYCorner];
        stageImage.layer.masksToBounds = true;
        stageImage.layer.cornerRadius = 7;
        stageImage.layer.maskedCorners = [.layerMinXMaxYCorner,.layerMaxXMaxYCorner]
        modeButton.layer.masksToBounds = true;
        modeButton.layer.cornerRadius = 7}
    
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
        if randomPlayer1Index == 4 {player1Label.text = katLabel}
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
    
    func randomizeAllCharacter(){
        randomizeTeam1Characters()
        randomizeTeam2Characters()}
    
    func randomizeTeam1Characters() {
        randomPlayer1CharImage = Int.random(in: 0...48)
        player1Character.image = UIImage(named: characterImageArray[randomPlayer1CharImage])
        randomPlayer1bCharImage = Int.random(in: 0...48)
        player1bCharacter.image = UIImage(named: characterImageArray[randomPlayer1bCharImage])
        randomPlayer2CharImage = Int.random(in: 0...48)
        player2Character.image = UIImage(named: characterImageArray[randomPlayer2CharImage])
        if player1Character.image == player1bCharacter.image {randomizeTeam1Characters()}
        if player1Character.image == player2Character.image {randomizeTeam1Characters()}
        if player1Character.image == player3Character.image {randomizeTeam1Characters()}
        if player1Character.image == player3bCharacter.image {randomizeTeam1Characters()}
        if player1Character.image == player4Character.image {randomizeTeam1Characters()}
        if player1bCharacter.image == player3Character.image {randomizeTeam1Characters()}
        if player1bCharacter.image == player3bCharacter.image {randomizeTeam1Characters()}
        if player1bCharacter.image == player4Character.image {randomizeTeam1Characters()}
        if player2Character.image == player1Character.image {randomizeTeam1Characters()}
        if player2Character.image == player1bCharacter.image {randomizeTeam1Characters()}
        if player2Character.image == player3Character.image {randomizeTeam1Characters()}
        if player2Character.image == player3bCharacter.image {randomizeTeam1Characters()}
        if player2Character.image == player4Character.image {randomizeTeam1Characters()}}
    
    func randomizeTeam2Characters() {
        randomPlayer3CharImage = Int.random(in: 0...48)
        player3Character.image = UIImage(named: characterImageArray[randomPlayer3CharImage])
        randomPlayer3bCharImage = Int.random(in: 0...48)
        player3bCharacter.image = UIImage(named: characterImageArray[randomPlayer3bCharImage])
        randomPlayer4CharImage = Int.random(in: 0...48)
        player4Character.image = UIImage(named: characterImageArray[randomPlayer4CharImage])
        if player3Character.image == player1Character.image {randomizeTeam2Characters()}
        if player3Character.image == player1bCharacter.image {randomizeTeam2Characters()}
        if player3Character.image == player2Character.image {randomizeTeam2Characters()}
        if player3Character.image == player3bCharacter.image {randomizeTeam2Characters()}
        if player3Character.image == player4Character.image {randomizeTeam2Characters()}
        if player3bCharacter.image == player1Character.image {randomizeTeam2Characters()}
        if player3bCharacter.image == player1bCharacter.image {randomizeTeam2Characters()}
        if player3bCharacter.image == player2Character.image {randomizeTeam2Characters()}
        if player4Character.image == player3Character.image {randomizeTeam2Characters()}
        if player4Character.image == player3bCharacter.image {randomizeTeam2Characters()}
        if player4Character.image == player1Character.image {randomizeTeam2Characters()}
        if player4Character.image == player1bCharacter.image {randomizeTeam2Characters()}
        if player4Character.image == player2Character.image {randomizeTeam2Characters()}}

    func randomizeStage() {
        randomStage = Int.random(in: 0...5)
        stageImage.image = UIImage(named: stageArray[randomStage])
        if randomStage == 0 {stageLabel.text = dreamlandLabel}
        if randomStage == 1 {stageLabel.text = hyruleCastleLabel}
        if randomStage == 2 {stageLabel.text = peachCastleLabel}
        if randomStage == 3 {stageLabel.text = saffronCityLabel}
        if randomStage == 4 {stageLabel.text = sectorZLabel}
        if randomStage == 5 {stageLabel.text = yoshiIslandLabel}}
    
    func disableScreen(){
        team1Button.isEnabled = false;
        team2Button.isEnabled = false;
        stageButton.isEnabled = false}
    
    func enableScreen(){
        team1Button.isEnabled = true;
        team2Button.isEnabled = true;
        stageButton.isEnabled = true}
    
}
