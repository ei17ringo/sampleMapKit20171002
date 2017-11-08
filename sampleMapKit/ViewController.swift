//
//  ViewController.swift
//  sampleMapKit
//
//  Created by Eriko Ichinohe on 2017/11/08.
//  Copyright © 2017年 Eriko Ichinohe. All rights reserved.
//

import UIKit
import MapKit //地図用のフレームワーク読み込み

class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
       
        //アヤラを中心とした地図を表示
        
        // 1.中心となる場所の座標オブジェクトを作成
        let coodinate = CLLocationCoordinate2DMake(10.317347, 123.905759)
        
        // 2.縮尺を設定
        let span = MKCoordinateSpanMake(0.01, 0.01)
        
        // 3.範囲オブジェクトを作成
        let region = MKCoordinateRegionMake(coodinate, span)
        
        // 4.MapViewに範囲オブジェクトを設定
        mapView.setRegion(region, animated: true)
        
        //アヤラ（中心）にピンを立てる
        
        // 1.pinオブジェクトを生成
        let centerPin = MKPointAnnotation()
        
        // 2.pinの座標を設定
        //これでも大丈夫
//        centerPin.coordinate = CLLocationCoordinate2DMake(10.317347, 123.905759)
        centerPin.coordinate = coodinate
        
        // 3.タイトル、サブタイトルを設定（タップしたときに出る吹き出しの情報）
        centerPin.title = "アヤラショッピングモール"
        centerPin.subtitle = "なんでもあるよ"
        
        // 4.mapViewにPinを追加
        mapView.addAnnotation(centerPin)
        
        //TODO:ピンをもう一つ立ててみましょう
        
        
        //TODO:初期表示の地図上に3本ピンを立てましょう
        //中心、縮尺変更OK
        //宿題ができたらGithubへPush
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

