//
//  WeatherLocation.swift
//  Weather Gift
//
//  Created by Claudia Yang on 10/20/19.
//  Copyright © 2019 Claudia Yang. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class WeatherLocation {
    var name = ""
    var coordinates = ""
    var currentTemp = "--"
    var currentSummary = ""
    var currentIcon = ""
    
    func getWeather(completed: @escaping() -> ()){
        let weatherURL = urlBase + urlAPIKey + coordinates
        
        Alamofire.request(weatherURL).responseJSON{ response in
            switch response.result{
            case .success(let value):
                let json = JSON(value)
                if let temperature = json["currently"]["temperature"].double{
                    let roundedTemp = String(format:"%3.f", temperature)
                    self.currentTemp = roundedTemp + "°"
                } else{
                    print("Could not return a temperature")
                }
                if let icon = json["currently"]["icon"].string{
                    self.currentIcon = icon
                } else{
                    print("Could not return a summary")
                }
            case .failure(let error):
                print(error)
            }
            completed()
        }
    }
    
}
