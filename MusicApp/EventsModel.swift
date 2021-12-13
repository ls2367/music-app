//
//  EventsModel.swift
//  MusicApp
//
//  Created by Camilla Zappalà on 12/11/21.
//

import Foundation

class EventsModel: NSObject {
    
    //properties
    
    var location: String?
    var date: String?
    var time: String?
    var music_type: String?
    
    
    //empty constructor
    
    override init()
    {
        
    }
    
    //construct with @location, @date, @time, and @music_type
    
    init(location: String, date: String, time: String, music_type: String) {
        
        self.location = location
        self.date = date
        self.time = time
        self.music_type = music_type
        
    }
    
    
    //prints object's current state
    
    override var description: String {
        return "Location: \(String(describing: location) ), Date: \(String(describing: date) ?? <#default value#>,,,String(describing: )), Time: \(String(describing: time) ?? <#default value#>,,String(describing: ),,,,,,,,,,,,,String(describing: ) ?? <#default value#>String(describing: ) ?? <#default value#>String(describing: )), Music Type: \(String(describing: music_type) ?? <#default value#>)"
        
    }
    
    
}

