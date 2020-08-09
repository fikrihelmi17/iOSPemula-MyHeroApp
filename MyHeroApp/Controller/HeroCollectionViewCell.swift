//
//  HeroCollectionViewCell.swift
//  MyHeroApp
//
//  Created by Fikri on 09/08/20.
//  Copyright © 2020 Dicoding Indonesia. All rights reserved.
//

import UIKit

class HeroCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var imageHero: UIImageView!
    @IBOutlet weak var namaHero: UILabel!
    @IBOutlet weak var deskripsiHero: UILabel!
        
    override func awakeFromNib() {
        super.awakeFromNib()
     
    }
}
