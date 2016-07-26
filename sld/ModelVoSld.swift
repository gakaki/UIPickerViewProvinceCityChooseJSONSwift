//
//  ModelSld.swift
//  sld
//
//  Created by g on 16/7/26.
//  Copyright © 2016年 g. All rights reserved.
//
import JSONCodable

struct VoSld {
    var id:String               = ""
    var name:String             = ""
    var parent_id:String        = ""
    var level_type:String       = ""
}

struct VoSldData {
    var slds: [VoSld] = []
}


extension VoSldData: JSONDecodable {
    init(object: JSONObject) throws {
        let decoder = JSONDecoder(object: object)
        slds = try decoder.decode("RECORDS")
    }
}

extension VoSld: JSONDecodable {
    init(object: JSONObject) throws {
        let decoder = JSONDecoder(object: object)
        
        id              = try decoder.decode("id")
        name            = try decoder.decode("name")
        parent_id       = try decoder.decode("parent_id")
        level_type      = try decoder.decode("level_type")
    }
}


