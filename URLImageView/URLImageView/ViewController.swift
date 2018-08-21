//
//  ViewController.swift
//  URLImageView
//
//  Created by Artem Antuh on 8/21/18.
//  Copyright © 2018 Artem Antuh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var image: UIImageView!
    @IBAction func ip7(_ sender: Any) {
        print("Image iP7 loaded")
    }
    @IBAction func ip8(_ sender: Any) {
        print("Image iP8 loaded")
    }
    @IBAction func ipX(_ sender: Any) {
        print("Image iPX loaded")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        func get_image(_ url_str: String, _ imageView: UIImageView) {
            let url: URL = URL(string: url_str)!
            let session = URLSession.shared
            let task = session.dataTask(with: url, completionHandler: {
                (data, response, error) in
                if data != nil
                {
                    let image = UIImage(data: data!)
                    if (image != nil)
                    {
                        DispatchQueue.main.async(execute:{
                            imageView.image = image
                        })
                    }
                }
            })
            task.resume()
        }
        
        get_image("https://store.storeimages.cdn-apple.com/4981/as-images.apple.com/is/image/AppleInc/aos/published/images/i/ph/iphone7/black/iphone7-black-select-2016?wid=1200&hei=630&fmt=jpeg&qlt=95&op_usm=0.5,0.5&.v=1472430037379", image)
    }


}

