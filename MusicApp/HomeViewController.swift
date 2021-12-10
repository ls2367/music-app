//
//  ViewController.swift
//  MusicApp
//
//  Created by Lisa Sternik on 12/2/21.
//
//finds out if user is Artist or Visitor - path hereafter will differ

import UIKit

class HomeViewController: UIViewController {
    @IBAction func artistButton(_ sender: Any) {
        print("Artist Button Pressed")
        self.performSegue(withIdentifier: "ArtistLoginSegue", sender: self)
    }
    @IBAction func visitorButton(_ sender: Any) {
        print("Visitor Button Pressed")
        self.performSegue(withIdentifier: "EventViewSegue", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

