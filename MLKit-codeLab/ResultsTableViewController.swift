import MLKitFaceDetection
import MLKitTextRecognition
import MLKitVision
import UIKit

class ResultsTableViewController: UITableViewController{
}
    extension ResultsTableViewController {
        static let ResultsListCellIdentifier = "ResultsListCell"
        
        override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            print ("Results.testData.count")
            print(Results.testData.count)
            return Results.testData.count
        }
        
        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: Self.ResultsListCellIdentifier, for: indexPath) as? ResultsListCell else {
                fatalError("Unable to dequeue ReminderCell")
            }
            let Result = Results.testData[indexPath.row]
            print("1ddd")
            let image = Result.isComplete ? UIImage(systemName: "circle.fill") : UIImage(systemName: "circle")
            print("2ddd")
            cell.titleLabel.text = Result.title
            print("3ddd")
            print(cell.titleLabel.text)
            cell.dateLabel.text = Result.dueDate.description
            print("4ddd")
            cell.doneButton.setBackgroundImage(image, for: .normal)
            cell.doneButtonAction = {
                Results.testData[indexPath.row].isComplete.toggle()
                tableView.reloadRows(at: [indexPath], with: .none)
           }
            return cell
        }
    }

