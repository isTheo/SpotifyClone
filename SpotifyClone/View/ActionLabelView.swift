//
//  ActionLabelView.swift
//  SpotifyClone
//
//  Created by Matteo Orru on 27/08/24.
//

import UIKit


struct actionLabelViewViewModel {
    let text: String
    let actionTitle: String
}


class ActionLabelView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        clipsToBounds = true
    }
    
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
    
    
    func configure(with viewModel: actionLabelViewViewModel) {
        //
    }
    
    
    
}
