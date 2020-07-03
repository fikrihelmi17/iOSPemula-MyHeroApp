//
//  ViewController.swift
//  MyHeroApp
//
//  Created by Fikri on 19/05/20.
//  Copyright © 2020 Dicoding Indonesia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heroTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //menambahkan title kepada navigation
        self.navigationItem.title = "Pahlawan Indonesia"
        
        //menghubungkan heroTableView dengan kedua metode dibawa
        heroTableView.dataSource = self
        
        //menambahkan delegate ke table view
        heroTableView.delegate = self
        
        //menghubungkan berkas xib untuk HeroTableViewCell dengan heroTableView.
        heroTableView.register(UINib(nibName: "HeroTableViewCell", bundle: nil), forCellReuseIdentifier: "HeroCell")
    }


}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //digunakan untuk menambahkan total item yang akan muncul di dalam Table View
        return heroes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //Digunakan untuk menghubungkan cell dengan identifier "HeroCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: "HeroCell", for: indexPath) as! HeroTableViewCell
        
        //menetapkan nilai hero ke view di dalam cell
        let hero = heroes[indexPath.row]
        cell.nameHero.text = hero.name
        cell.descHero.text = hero.description
        cell.photoHero.image = hero.photo
        
        //kode ini digunakan untuk membuat imageView memiliki frame bound/lingkaran
        cell.photoHero.layer.cornerRadius = cell.photoHero.frame.height / 2
        cell.photoHero.clipsToBounds = true
        return cell
    }
    
    
}

extension ViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //memanggil view controller dengan berkas NIB/XIB di dalamnya
        let detail = DetailViewController(nibName: "DetailViewController", bundle: nil)
        
        //mengirim data hero
        detail.hero = heroes[indexPath.row]
        
        //push/mendorong view controller lain
        self.navigationController?.pushViewController(detail, animated: true)
    }
    
}



