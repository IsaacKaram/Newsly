//
//  CustomSearchBar.swift
//  Newsly
//
//  Created by Isaac Karam on 30/03/22.
//

import UIKit

class CustomSearchBar: UISearchBar {

    var textDidChange: ((String) -> Void)?
    override func awakeFromNib() {
        super.awakeFromNib()
        setupSearchBar()
    }

    private func setupSearchBar() {
        self.delegate = self
        self.searchTextField.clearButtonMode = .never
    }
    
    private func dismissKeyboard(with searchText: String) {
        self.resignFirstResponder()
        self.showsCancelButton = false
        textDidChange?(searchText)
    }
}

extension CustomSearchBar: UISearchBarDelegate {
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        self.showsCancelButton = true
        textDidChange?(searchText)
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        dismissKeyboard(with: "")
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        dismissKeyboard(with: searchBar.text ?? "")
    }
    
}
