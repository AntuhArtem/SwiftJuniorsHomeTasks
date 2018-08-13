//
//  PokemonTableViewController.swift
//  Pokemon (with split)
//
//  Created by Artem Antuh on 13.08.2018.
//  Copyright © 2018 Слава. All rights reserved.
//

import UIKit

class PokemonTableViewController: UITableViewController {
    
    var delegate: PokemonDelegate?
    var pokemons = ["bulbasaur",
                    "eeyee",
                    "pikachu"]
    
    @IBOutlet var pokemonTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pokemons.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = pokemonTableView.dequeueReusableCell(withIdentifier: "pokemonCell", for: indexPath)
            as? PokemonCell else {return UITableViewCell()}
        cell.pokemonImage.image = UIImage(named: pokemons[indexPath.row])
        cell.pokemonLabel.text = pokemons[indexPath.row]
        return cell
    }
    
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let image = UIImage(named: pokemons[indexPath.row]) else {return}
        delegate?.pokemonSelected(image)
    }


}
