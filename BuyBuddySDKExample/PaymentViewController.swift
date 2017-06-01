//
//  PaymentViewController.swift
//  BuyBuddySDKExample
//
//  Created by MKB on 31/05/2017.
//  Copyright © 2017 MKB. All rights reserved.
//

import UIKit
import BuyBuddyKit
import Alamofire
class PaymentViewController: UIViewController {

    var orderId: Int?
    @IBAction func payPressed(_ sender: Any) {
        var params : Dictionary<String, String> = ["Api_User":"EOwXTDX6QeSuiIjMRSzRytlFDhOstEKpvTZ686PA4xC6srEWQLxOJIQEX/7EqLEuKOXst YoBTaC/TZcNBaqgweth+ACJL0mVkhenOFjWx/EowGp7uddG0JAIvhHehHhL6DrNHR0iSu+c CgmqV/TD2IM7l2ytYUMvvRp2YCHN0cDdrQonAmZCMYJhY8VJQIxHZHhykEGqQkSNt61 kePMRntoCegqZUkljrkjngUfPMtXfLpAjhxVI4ZO63161y0lZJXx7/NSjQTSrDjCk7wiCtC/5Yh7 w2kXsmdOX9Y4A8cLV/zNVKUxN9J8ekeGUxKIfN8CZlpwsSEOXxpAGn0GFig==","Api_Key":"H7I/ZIoGQeWqeRaExP7YXCNZq6NAJUPohhid4eUOWHz0D5iho4VGnrqgMSd+IK8pUuChv 4yJSWK2VU4Cq67J6w==", "Api_Key":"H7I/ZIoGQeWqeRaExP7YXCNZq6NAJUPohhid4eUOWHz0D5iho4VGnrqgMSd+IK8pUuChv 4yJSWK2VU4Cq67J6w=="]
        //Alamofire.request(<#T##url: URLConvertible##URLConvertible#>, method: <#T##HTTPMethod#>, parameters: <#T##Parameters?#>, encoding: , headers: <#T##HTTPHeaders?#>)
        BuyBuddyViewManager.callPaymentFinalizerView(viewController: self, orderId: orderId, hitagIds: ["0100000004"])
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
