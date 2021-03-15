import UIKit

class ProfileHeaderView: UIView {
    
    let avaView: UIImageView = {
        let avaImage = UIImage.init(named: "ava")
        let ava = UIImageView()
        ava.backgroundColor = .cyan
        ava.layer.cornerRadius = 60
        ava.image = avaImage
        ava.layer.borderWidth = 3
        ava.layer.borderColor = CGColor.init(red: 255, green: 255, blue: 255, alpha: 255)
        ava.layer.masksToBounds = true
        ava.translatesAutoresizingMaskIntoConstraints = false
        return ava
    }()
    
    let nameView: UILabel = {
        let name = UILabel()
        name.text = "Queen Elsa"
        name.font = .boldSystemFont(ofSize: 18)
        name.textColor = .black
        //name.backgroundColor = .magenta
        name.translatesAutoresizingMaskIntoConstraints = false
        return name
    }()
    
    let statusView: UILabel = {
        let status = UILabel()
        status.text = "Every day's a little harder"
        status.font = .systemFont(ofSize: 14)
        status.textColor = .darkGray
        //status.backgroundColor = .magenta
        status.translatesAutoresizingMaskIntoConstraints = false
        return status
    }()
        
    @objc func statusPrint() {
        print(statusView.text!)
       }
    
    let buttonView: UIButton = {
        let button = UIButton()
        button.backgroundColor = .blue
        button.layer.cornerRadius = 4
        button.setTitle("Show status", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 14)
        button.setTitleColor(.white, for: .normal)
        button.layer.shadowOpacity = 1
        button.layer.shadowOffset = CGSize(width: 4, height: 4)
        button.layer.shadowRadius = 4
        button.layer.shadowColor = CGColor.init(red: 0, green: 0, blue: 0, alpha: 255)
        button.addTarget(self, action: #selector(statusPrint), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
}
