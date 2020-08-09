//
//  DetailViewController.swift
//  MyHeroApp
//
//  Created by Fikri on 19/05/20.
//  Copyright © 2020 Dicoding Indonesia. All rights reserve	d.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var nameHero: UILabel!
    @IBOutlet weak var photoHero: UIImageView!
    @IBOutlet weak var descHero: UILabel!
    
    //digunakan untuk menampung data Hero
    var hero: Hero?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //digunakan untuk menetapkan nilai hero ke beberapa view yang ada
        if let result = hero {
            photoHero.image = result.photo
            nameHero.text = result.name
            descHero.text = result.description
        }
    }
}
