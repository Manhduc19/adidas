//
//  HomeViewController.swift
//  AdidasApp
//
//  Created by Thanh Nguyên Trần on 12/12/2021.
//

import UIKit
import StoreKit

class HomeViewController: UIViewController {
   
    @IBOutlet weak var productCollectionView: UICollectionView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var bannerCollectionView: UICollectionView!
    @IBOutlet weak var searchbarView: UISearchBar!
    
    let imgSlideShows = ["slide1","slide2","slide3","slide4","slide5"]
    var scrollImageTimer: Timer!
    var count = 0
    let typeProducts : [typeProduct] = typeList
    var pendingWorkItem: DispatchWorkItem?
    
    override func viewDidLoad() {
        super.viewDidLoad()
         config()
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.tabBarController?.tabBar.isHidden = false
        navigationController?.isNavigationBarHidden = true
    }
    func config(){
        setUpCollectionView()
        let tabSearch = UITapGestureRecognizer(target: self, action: #selector(didTabSearchView))
        searchbarView.searchTextField.addGestureRecognizer(tabSearch)
    }
   
    func setUpCollectionView() {
        
        bannerCollectionView.delegate = self
        bannerCollectionView.dataSource = self
        bannerCollectionView.isPagingEnabled = false
        
        productCollectionView.delegate = self
        productCollectionView.dataSource = self
              
        bannerCollectionView.register(UINib(nibName: "SildeCell", bundle: nil), forCellWithReuseIdentifier: "SildeCell")
        productCollectionView.register(UINib(nibName: "ProductCell", bundle: nil), forCellWithReuseIdentifier: "ProductCell")
        
        setPageControlImage()
        scrollImageTimer = Timer.scheduledTimer(timeInterval: 3, target: self, selector: #selector(setTimer), userInfo: nil, repeats: true)
    }
    func setPageControlImage() {
        pageControl.numberOfPages = imgSlideShows.count
        pageControl.currentPage = 0
    }
    @objc func setTimer() {
        if count < imgSlideShows.count {
            let index = IndexPath.init(item: count, section: 0)
            bannerCollectionView.scrollToItem(at: index, at: .centeredHorizontally, animated: true)
            pageControl.currentPage = count
            count += 1
        }
        else {
            count = 0
            let index = IndexPath.init(item: count, section: 0)
            bannerCollectionView.scrollToItem(at: index, at: .centeredHorizontally, animated: true)
            pageControl.currentPage = count
        }
    }
    @objc func didTabSearchView() {
        let vc = SearchBarViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
}
//MARK: Extension
extension HomeViewController : UICollectionViewDataSource, UICollectionViewDelegate{
   
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == bannerCollectionView {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SildeCell", for: indexPath) as? SildeCell
            cell?.imgSlide.image = UIImage(named: "\(imgSlideShows[indexPath.row])")
            return cell!
        }
        else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCell
            cell?.typeProductLabel.text = typeProducts[indexPath.row].type
            return cell!
        }
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == bannerCollectionView {
            return imgSlideShows.count
        }
        else {
            return typeProducts.count
        }
        
    }
}

extension HomeViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == bannerCollectionView {
            return CGSize(width: bannerCollectionView.frame.size.width, height: bannerCollectionView.frame.size.height)
        }
        else {
            return CGSize(width: productCollectionView.frame.size.width, height: productCollectionView.frame.size.height/2)
        }
    }
}

