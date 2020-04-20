//
//  ViewController.swift
//  CollectionViewSample
//
//  Created by Ashwini Prabhu on 4/18/20.
//  Copyright © 2020 experiment. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var items = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12"]
    
    var imgItems : [UIImage] = [
        UIImage(named: "f1")!,
        UIImage(named: "f2")!,
        UIImage(named: "f3")!,
        UIImage(named: "f1")!,
        UIImage(named: "f2")!,
        UIImage(named: "f3")!,
        UIImage(named: "f1")!,
        UIImage(named: "f2")!,
        UIImage(named: "f3")!,
        UIImage(named: "f1")!,
        UIImage(named: "f2")!,
        UIImage(named: "f3")!,
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        collectionView.dataSource = self
        collectionView.delegate = self
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CollectionViewCell
        cell.cellLabel.text = items[indexPath.item]
        cell.cellImage.image = imgItems[indexPath.item]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath.item)
        items.remove(at: indexPath.item)
        imgItems.remove(at: indexPath.item)
        collectionView.deleteItems(at: [indexPath])
    }
}

