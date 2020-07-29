//
//  CollectionViewController.swift
//  TestApp
//
//  Created by Takahiro Kirifu on 2020/07/29.
//  Copyright © 2020 Takahiro Kirifu. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class CollectionViewController: UICollectionViewController {
    
    let areaColor = [UIColor.brown,UIColor.darkGray,UIColor.blue,UIColor.magenta, UIColor.purple,UIColor.orange,UIColor.red]

    var cellNames: [[String]] = [["北海道","青森", "岩手", "秋田", "山形", "宮城", "福島"], ["新潟", "富山", "石川", "福井","長野","岐阜","山梨","愛知","静岡"],["栃木","茨城","千葉","東京","神奈川","埼玉","群馬"],["京都","大阪","滋賀","奈良","三重","和歌山","兵庫"],["岡山","広島","鳥取","島根","山口"],["愛媛","徳島","香川","高知"],["福岡","佐賀","長崎","大分","熊本","宮崎","鹿児島","沖縄"]]

    let prefectoralCapital = [["札幌","青森", "盛岡", "秋田", "山形", "仙台", "福島"], ["新潟", "富山", "金沢", "福井","長野","岐阜","甲府","名古屋","静岡"],["宇都宮","水戸","千葉","新宿","横浜","さいたま","前橋"],["京都","大阪","大津","奈良","津","和歌山","神戸"],["岡山","広島","鳥取","松江","山口"],["松山","徳島","高松","高知"],["福岡","佐賀","長崎","大分","熊本","宮崎","鹿児島","那覇"]]
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        // Do any additional setup after loading the view.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return areaColor.count
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return 0
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionCell", for: indexPath) as! CollectionViewCell
    
        // Configure the cell
    
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        
        
        
    }

}
