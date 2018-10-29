import UIKit
import SnapKit
import AnyDataSource

class ActorTableViewCell: UITableViewCell {
    lazy var nameLabel = UILabel(frame: .zero)

    func setupCell() {
        addSubview(nameLabel)

        nameLabel.snp.makeConstraints { make in
            make.left.right.top.equalToSuperview().inset(UIEdgeInsets(top: 8, left: 16, bottom: 8, right: 16))
        }
    }
}

extension ActorTableViewCell: PresentingTableViewCell {
    func present(viewModel: Actor) {
        if nameLabel.superview == nil {
            setupCell()
        }

        nameLabel.text = viewModel.name
    }
}
