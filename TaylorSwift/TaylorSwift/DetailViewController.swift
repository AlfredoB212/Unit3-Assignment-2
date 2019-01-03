//
//  DetailViewController.swift
//  TaylorSwift
//
//  Created by Alfredo Barragan on 1/3/19.
//  Copyright © 2019 Alfredo Barragan. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var trackName: UILabel!
    @IBOutlet weak var artistName: UILabel!
    @IBOutlet weak var releaseDate: UILabel!
    
    public var result: Result!
        
    override func viewDidLoad() {
        super.viewDidLoad()
            updateEventUI()
            
        }
        private func updateEventUI() {
            title = result.trackName
            
            trackName.text = result.trackName
            artistName.text = result.artistName
            releaseDate.text = result.releaseDate
}
}
