//
//  HeroTableViewCell.swift
//  MyHeroApp
//
//  Created by Fikri on 19/05/20.
//  Copyright © 2020 Dicoding Indonesia. All rights reserved.
//

import UIKit

class HeroTableViewCell: UITableViewCell {

    @IBOutlet weak var photoHero: UIImageView!
    @IBOutlet weak var nameHero: UILabel!
    @IBOutlet weak var descHero: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
