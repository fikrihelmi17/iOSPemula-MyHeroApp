//
//  HeroCollectionView.swift
//  MyHeroApp
//
//  Created by Fikri on 09/08/20.
//  Copyright © 2020 Dicoding Indonesia. All rights reserved.
//

import UIKit

class HeroCollectionView: UIViewController ,UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet var heroCV: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        heroCV.dataSource = self
        heroCV.delegate = self
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return heroes.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = heroCV.dequeueReusableCell(withReuseIdentifier: "HeroCVCell", for: indexPath) as! HeroCollectionViewCell
        let hero = heroes[indexPath.row]
        cell.imageHero.image = hero.photo
        cell.namaHero.text = hero.name
        cell.deskripsiHero.text = hero.description
        return cell
    }
    
    
    

}
