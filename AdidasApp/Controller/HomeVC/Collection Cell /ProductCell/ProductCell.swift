//
//  ProductCell.swift
//  AdidasApp
//
//  Created by Thanh Nguyên Trần on 12/12/2021.
//

import UIKit

class ProductCell: UICollectionViewCell {

    @IBOutlet weak var productCollectionView: UICollectionView!
    @IBOutlet weak var typeProductLabel: UILabel!
   
    let adizero : [DetailProduct] = detailList
    let forum : [DetailProduct] = detailList1
    let superstar : [DetailProduct] = detailList2
    let hangmoive : [DetailProduct] = detailList3
    let dep : [DetailProduct] = detailList4
    let stansmith : [DetailProduct] = detailList5
    
    var count = 0
    let typeProducts : [typeProduct] = typeList
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupCollectionView()
  
    }
    
    func setupCollectionView()
    {
        productCollectionView.delegate = self
        productCollectionView.dataSource = self
        
        productCollectionView.register(UINib(nibName: "AdizeroCell", bundle: nil), forCellWithReuseIdentifier: "AdizeroCell")
        
        
    }

    @IBAction func seeAllButtonDidTap(_ sender: Any) {
        
        
    }
}

extension ProductCell: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "AdizeroCell", for: indexPath) as?  AdizeroCell
       
        if typeProductLabel.text == typeProducts[0].type{
        cell?.imageProduct.image = UIImage(named: adizero[indexPath.row].image)
        cell?.priceLabel.text = "$ \(adizero[indexPath.row].price)"
        cell?.nameProductLabel.text = adizero[indexPath.row].name
        }
         else if typeProductLabel.text == typeProducts[1].type{
            cell?.imageProduct.image = UIImage(named: forum[indexPath.row].image)
            cell?.priceLabel.text = "$ \(forum[indexPath.row].price)"
            cell?.nameProductLabel.text = forum[indexPath.row].name
        }
        else if typeProductLabel.text == typeProducts[2].type{
           cell?.imageProduct.image = UIImage(named: superstar[indexPath.row].image)
           cell?.priceLabel.text = "$ \(superstar[indexPath.row].price)"
           cell?.nameProductLabel.text = superstar[indexPath.row].name
       }
        else if typeProductLabel.text == typeProducts[3].type{
           cell?.imageProduct.image = UIImage(named: hangmoive[indexPath.row].image)
           cell?.priceLabel.text = "$ \(hangmoive[indexPath.row].price)"
           cell?.nameProductLabel.text = hangmoive[indexPath.row].name
       }
        else if typeProductLabel.text == typeProducts[4].type{
           cell?.imageProduct.image = UIImage(named: dep[indexPath.row].image)
           cell?.priceLabel.text = "$ \(dep[indexPath.row].price)"
           cell?.nameProductLabel.text = dep[indexPath.row].name
       }
        else if  typeProductLabel.text == typeProducts[5].type {
           cell?.imageProduct.image = UIImage(named: stansmith[indexPath.row].image)
           cell?.priceLabel.text = "$ \(stansmith[indexPath.row].price)"
           cell?.nameProductLabel.text = stansmith[indexPath.row].name
       }
        return cell!
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if typeProductLabel.text == typeProducts[0].type{
             count = adizero.count
        }
        if typeProductLabel.text == typeProducts[1].type{
             count = forum.count
        }
        if typeProductLabel.text == typeProducts[2].type{
             count = superstar.count
        }
        if typeProductLabel.text == typeProducts[3].type{
             count = hangmoive.count
        }
        if typeProductLabel.text == typeProducts[4].type{
             count = dep.count
        }
        if typeProductLabel.text == typeProducts[5].type{
             count = stansmith.count
        }
        
        return count
    }
}

extension ProductCell : UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: productCollectionView.frame.size.width/2.5, height: productCollectionView.frame.size.height)
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
      return 5
    }
}
