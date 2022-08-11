//
//  ViewController.swift
//  collectionViewWithoutXib
//
//  Created by AKSHAY NAMDEV BADHE on 07/07/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var MycollectionView: UICollectionView!
    var productName = ["chicken-chilli","chicken-Lollipop","Muradabadi-chicken-biryani-1200x900","chickentikkakebab","chicken-masala"]
    var productImage = ["chicken-chilli","chicken-Lollipop","Muradabadi-chicken-biryani-1200x900","chickentikkakebab","chicken-masala"]
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
extension ViewController: UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return productName.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = MycollectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath ) as! MyCollectionViewCell
        
        cell.myImage.image = UIImage(named: productImage[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = (collectionView.frame.size.width-15)/2
        return CGSize(width: size, height: size)
    }
}
