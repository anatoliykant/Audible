//
//  PageCell.swift
//  Audible
//
//  Created by Kant on 28.05.17.
//  Copyright © 2017 Анатолий Подкладов. All rights reserved.
//

import UIKit

class PageCell: UICollectionViewCell {
  override init(frame: CGRect) {
    super.init(frame: frame)
    
    setupView()
  }
  
  let imageView: UIImageView = {
    let iv = UIImageView()
    iv.contentMode = .scaleAspectFill
    
    iv.backgroundColor = .yellow
    iv.image = UIImage(named: "page1")
    iv.clipsToBounds = true
    return iv
  }()
  
  func setupView() {
    //backgroundColor = .blue
    
    addSubview(imageView)
    imageView.anchorToTop(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor)
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}
