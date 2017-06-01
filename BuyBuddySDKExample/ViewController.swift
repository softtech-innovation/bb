//
//  ViewController.swift
//  BuyBuddySDKExample
//
//  Created by MKB on 31/05/2017.
//  Copyright © 2017 MKB. All rights reserved.
//

import UIKit
import BuyBuddyKit
import RSBarcodes_Swift

class ViewController: RSCodeReaderViewController, BuyBuddyCartButtonDelegate, BuyBuddyOrderCreatedDelegate {

    var basketTotal: Float?
    var orderId: Int?
    @IBOutlet var cartButton: BuyBuddyCartButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cartButton.delegate = self
        BuyBuddyApi.sharedInstance.set(orderDelegate: self)
        self.barcodesHandler = { barcodes in
            for barcode in barcodes {
                DispatchQueue.main.async ( execute: {
                        self.session.stopRunning()
                        if let validTag = BuyBuddyHitagValidator.isValidPatternForHitag(hitagId: barcode.stringValue) {
                            self.session.startRunning()
                            BuyBuddyViewManager.callScannedProductView(viewController: self, cartButton: self.cartButton, hitagID: validTag)
                        
                        }
                    }
                )
            }
            
        }
        // Do any additional setup after loading the view, typically from a nib.
    }
    func buttonWasPressed(_ button: UIButton) {
        BuyBuddyViewManager.callShoppingBasketView(viewController: self, cartButton: cartButton)
    }
    
    func BuyBuddyOrderCreated(orderId: Int, basketTotal: Float) {
        self.orderId = orderId
        print(orderId)
        self.basketTotal = basketTotal
        performSegue(withIdentifier: "mySegue", sender: self)
        
    }
    
     
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let paymentVC = segue.destination as! PaymentViewController
        paymentVC.orderId = orderId
    }

}

