//
//  MapKitViewController.swift
//  Chapter03  Alert
//
//  Created by Ju young Jung on 2017. 10. 25..
//  Copyright © 2017년 solbat. All rights reserved.
//

import UIKit
import MapKit
class MapKitViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let mapKitView = MKMapView(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        self.view = mapKitView // 맵킷 뷰를 루트뷰로 설정
        self.preferredContentSize.height = 200
        
        // 맵뷰 상세 표시
        // 위치 정보 설정
        let pos = CLLocationCoordinate2D(latitude: 37.655052, longitude: 127.012186)
        
        // 지도에서 보여줄 넓이, 축척 , 숫자가 작을수록 좁은 범위를 확대
        let span = MKCoordinateSpan(latitudeDelta: 0.005, longitudeDelta: 0.005)
        
        // 지도 영역을 정의
        let region = MKCoordinateRegion(center: pos, span: span)
        
        // 지도 뷰에 표시
        mapKitView.region = region
        mapKitView.regionThatFits(region)
        
        // 위치를 핀으로 표시
        let point = MKPointAnnotation()
        point.coordinate = pos
        mapKitView.addAnnotation(point)
        
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
