//
//  BusinessCell.swift
//  Yelp
//
//  Created by Shaurya Sinha on 22/01/18.
//  Copyright © 2018 Timothy Lee. All rights reserved.
//

import UIKit
import AFNetworking

class BusinessCell: UITableViewCell{

    @IBOutlet weak var thumbImageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var distanceLabel: UILabel!
    @IBOutlet weak var ratingImageView: UIImageView!
    @IBOutlet weak var reviewsCountLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var categoriesLabel: UILabel!
    
    var business: Business!{
        didSet{
            nameLabel.text = business.name
            categoriesLabel.text = business.categories
            addressLabel.text = business.address
            distanceLabel.text = business.distance
            reviewsCountLabel.text = "\(business.reviewCount!) Reviews"
            thumbImageView.setImageWith(business.imageURL!)
            ratingImageView.setImageWith(business.ratingImageURL!)
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
