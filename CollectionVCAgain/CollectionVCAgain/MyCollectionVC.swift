//
//  MyCollectionVC.swift
//  CollectionVCAgain
//
//  Created by Darya Drobyshevsky on 5/4/21.
//

import UIKit

private let reuseIdentifier = "ItemCell"
private let reuseCustomIdentifier = "CustomItemCell"


struct CustomStructItem {
    let image: String
    let textOne: String
    let textTwo: String

}

struct  StructItem {
  let image: String
  let text: String
}

class MyCollectionVC: UICollectionViewController {

    var arrayItems = [StructItem]()
    var arrayCustomItem = [CustomStructItem]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
let xib = UINib(nibName: reuseCustomIdentifier, bundle: nil)
        collectionView.register(xib, forCellWithReuseIdentifier: reuseCustomIdentifier)
        
        arrayItems.append(StructItem(image: "rectangle-2", text: "Blue color"))
        arrayItems.append(StructItem(image: "rectangle-3", text: "White color"))
        arrayItems.append(StructItem(image: "rectangle", text: "Yellow color"))
        
        
        arrayCustomItem.append(CustomStructItem(image: "pagoda", textOne: "Yellow color", textTwo: "Item 1"))
        arrayCustomItem.append(CustomStructItem(image: "temple-1", textOne: "Yellow color", textTwo: "Item 2"))
        arrayCustomItem.append(CustomStructItem(image: "temple-1", textOne: "Yellow color", textTwo: "Item 2"))

    }
 

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return arrayItems.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseCustomIdentifier, for: indexPath) as? CustomItemCell {
            cell.imageView.image = UIImage(named: arrayCustomItem[indexPath.row].image)
            cell.labelTextOne.text = arrayCustomItem[indexPath.row].textOne
            cell.labelTextTwo.text = arrayCustomItem[indexPath.row].textTwo

                  return cell
        }
    
    
        return UICollectionViewCell()
    }

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}
