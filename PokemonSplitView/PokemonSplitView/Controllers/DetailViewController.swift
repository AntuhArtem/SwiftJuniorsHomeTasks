//
//  DetailViewController.swift
//  Pokemon (with split)
//
//  Created by Artem Antuh on 13.08.2018.
//  Copyright © 2018 Слава. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    

    @IBOutlet weak var detailImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        guard let splitViewController = self.splitViewController,
            let navigationController = splitViewController.viewControllers.first as? UINavigationController,
            let masterViewController = navigationController.topViewController as? PokemonTableViewController
            else {return}
        masterViewController.delegate = self
    }
}

extension DetailViewController: PokemonDelegate {
    func pokemonSelected(_ image: UIImage) {
        detailImage.image = image
    }
    
}
