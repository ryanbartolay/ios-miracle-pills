//
//  MusicListVC.swift
//  SwappingScreens
//
//  Created by gotech on 05/09/2017.
//  Copyright © 2017 gotech. All rights reserved.
//

import UIKit

class MusicListVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.blue
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func load3rdFramePressed(_ sender: Any) {
        let songTitle = "Hello World"
        performSegue(withIdentifier: "PlaySongVC", sender: songTitle)
    }
    @IBAction func backBtnPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
  
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? PlaySongVC {
            if let song = sender as? String {
                destination.selectedSong = song
                
            }
        }
    }
 

}
