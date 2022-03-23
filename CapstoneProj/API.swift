//  This file was automatically generated and should not be edited.

import AWSAppSync

public struct CreateAppUserInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil, userName: String? = nil, locLat: Double? = nil, locLng: Double? = nil) {
    graphQLMap = ["id": id, "userName": userName, "locLat": locLat, "locLng": locLng]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var userName: String? {
    get {
      return graphQLMap["userName"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "userName")
    }
  }

  public var locLat: Double? {
    get {
      return graphQLMap["locLat"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "locLat")
    }
  }

  public var locLng: Double? {
    get {
      return graphQLMap["locLng"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "locLng")
    }
  }
}

public struct ModelAppUserConditionInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(userName: ModelStringInput? = nil, locLat: ModelFloatInput? = nil, locLng: ModelFloatInput? = nil, and: [ModelAppUserConditionInput?]? = nil, or: [ModelAppUserConditionInput?]? = nil, not: ModelAppUserConditionInput? = nil) {
    graphQLMap = ["userName": userName, "locLat": locLat, "locLng": locLng, "and": and, "or": or, "not": not]
  }

  public var userName: ModelStringInput? {
    get {
      return graphQLMap["userName"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "userName")
    }
  }

  public var locLat: ModelFloatInput? {
    get {
      return graphQLMap["locLat"] as! ModelFloatInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "locLat")
    }
  }

  public var locLng: ModelFloatInput? {
    get {
      return graphQLMap["locLng"] as! ModelFloatInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "locLng")
    }
  }

  public var and: [ModelAppUserConditionInput?]? {
    get {
      return graphQLMap["and"] as! [ModelAppUserConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelAppUserConditionInput?]? {
    get {
      return graphQLMap["or"] as! [ModelAppUserConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelAppUserConditionInput? {
    get {
      return graphQLMap["not"] as! ModelAppUserConditionInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct ModelStringInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: String? = nil, eq: String? = nil, le: String? = nil, lt: String? = nil, ge: String? = nil, gt: String? = nil, contains: String? = nil, notContains: String? = nil, between: [String?]? = nil, beginsWith: String? = nil, attributeExists: Bool? = nil, attributeType: ModelAttributeTypes? = nil, size: ModelSizeInput? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "contains": contains, "notContains": notContains, "between": between, "beginsWith": beginsWith, "attributeExists": attributeExists, "attributeType": attributeType, "size": size]
  }

  public var ne: String? {
    get {
      return graphQLMap["ne"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: String? {
    get {
      return graphQLMap["eq"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: String? {
    get {
      return graphQLMap["le"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: String? {
    get {
      return graphQLMap["lt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: String? {
    get {
      return graphQLMap["ge"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: String? {
    get {
      return graphQLMap["gt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var contains: String? {
    get {
      return graphQLMap["contains"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "contains")
    }
  }

  public var notContains: String? {
    get {
      return graphQLMap["notContains"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "notContains")
    }
  }

  public var between: [String?]? {
    get {
      return graphQLMap["between"] as! [String?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }

  public var beginsWith: String? {
    get {
      return graphQLMap["beginsWith"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "beginsWith")
    }
  }

  public var attributeExists: Bool? {
    get {
      return graphQLMap["attributeExists"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeExists")
    }
  }

  public var attributeType: ModelAttributeTypes? {
    get {
      return graphQLMap["attributeType"] as! ModelAttributeTypes?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeType")
    }
  }

  public var size: ModelSizeInput? {
    get {
      return graphQLMap["size"] as! ModelSizeInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "size")
    }
  }
}

public enum ModelAttributeTypes: RawRepresentable, Equatable, JSONDecodable, JSONEncodable {
  public typealias RawValue = String
  case binary
  case binarySet
  case bool
  case list
  case map
  case number
  case numberSet
  case string
  case stringSet
  case null
  /// Auto generated constant for unknown enum values
  case unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "binary": self = .binary
      case "binarySet": self = .binarySet
      case "bool": self = .bool
      case "list": self = .list
      case "map": self = .map
      case "number": self = .number
      case "numberSet": self = .numberSet
      case "string": self = .string
      case "stringSet": self = .stringSet
      case "_null": self = .null
      default: self = .unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .binary: return "binary"
      case .binarySet: return "binarySet"
      case .bool: return "bool"
      case .list: return "list"
      case .map: return "map"
      case .number: return "number"
      case .numberSet: return "numberSet"
      case .string: return "string"
      case .stringSet: return "stringSet"
      case .null: return "_null"
      case .unknown(let value): return value
    }
  }

  public static func == (lhs: ModelAttributeTypes, rhs: ModelAttributeTypes) -> Bool {
    switch (lhs, rhs) {
      case (.binary, .binary): return true
      case (.binarySet, .binarySet): return true
      case (.bool, .bool): return true
      case (.list, .list): return true
      case (.map, .map): return true
      case (.number, .number): return true
      case (.numberSet, .numberSet): return true
      case (.string, .string): return true
      case (.stringSet, .stringSet): return true
      case (.null, .null): return true
      case (.unknown(let lhsValue), .unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }
}

public struct ModelSizeInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: Int? = nil, eq: Int? = nil, le: Int? = nil, lt: Int? = nil, ge: Int? = nil, gt: Int? = nil, between: [Int?]? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "between": between]
  }

  public var ne: Int? {
    get {
      return graphQLMap["ne"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: Int? {
    get {
      return graphQLMap["eq"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: Int? {
    get {
      return graphQLMap["le"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: Int? {
    get {
      return graphQLMap["lt"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: Int? {
    get {
      return graphQLMap["ge"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: Int? {
    get {
      return graphQLMap["gt"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var between: [Int?]? {
    get {
      return graphQLMap["between"] as! [Int?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }
}

public struct ModelFloatInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: Double? = nil, eq: Double? = nil, le: Double? = nil, lt: Double? = nil, ge: Double? = nil, gt: Double? = nil, between: [Double?]? = nil, attributeExists: Bool? = nil, attributeType: ModelAttributeTypes? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "between": between, "attributeExists": attributeExists, "attributeType": attributeType]
  }

  public var ne: Double? {
    get {
      return graphQLMap["ne"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: Double? {
    get {
      return graphQLMap["eq"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: Double? {
    get {
      return graphQLMap["le"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: Double? {
    get {
      return graphQLMap["lt"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: Double? {
    get {
      return graphQLMap["ge"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: Double? {
    get {
      return graphQLMap["gt"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var between: [Double?]? {
    get {
      return graphQLMap["between"] as! [Double?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }

  public var attributeExists: Bool? {
    get {
      return graphQLMap["attributeExists"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeExists")
    }
  }

  public var attributeType: ModelAttributeTypes? {
    get {
      return graphQLMap["attributeType"] as! ModelAttributeTypes?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeType")
    }
  }
}

public struct UpdateAppUserInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID, userName: String? = nil, locLat: Double? = nil, locLng: Double? = nil) {
    graphQLMap = ["id": id, "userName": userName, "locLat": locLat, "locLng": locLng]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var userName: String? {
    get {
      return graphQLMap["userName"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "userName")
    }
  }

  public var locLat: Double? {
    get {
      return graphQLMap["locLat"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "locLat")
    }
  }

  public var locLng: Double? {
    get {
      return graphQLMap["locLng"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "locLng")
    }
  }
}

public struct DeleteAppUserInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID) {
    graphQLMap = ["id": id]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }
}

public struct CreateSvcReqInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil, custUName: String? = nil, provUName: String? = nil, svcLat: Double? = nil, svcLng: Double? = nil, svcAddr: String? = nil, accept: Bool? = nil) {
    graphQLMap = ["id": id, "custUName": custUName, "provUName": provUName, "svcLat": svcLat, "svcLng": svcLng, "svcAddr": svcAddr, "accept": accept]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var custUName: String? {
    get {
      return graphQLMap["custUName"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "custUName")
    }
  }

  public var provUName: String? {
    get {
      return graphQLMap["provUName"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "provUName")
    }
  }

  public var svcLat: Double? {
    get {
      return graphQLMap["svcLat"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "svcLat")
    }
  }

  public var svcLng: Double? {
    get {
      return graphQLMap["svcLng"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "svcLng")
    }
  }

  public var svcAddr: String? {
    get {
      return graphQLMap["svcAddr"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "svcAddr")
    }
  }

  public var accept: Bool? {
    get {
      return graphQLMap["accept"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "accept")
    }
  }
}

public struct ModelSvcReqConditionInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(custUName: ModelStringInput? = nil, provUName: ModelStringInput? = nil, svcLat: ModelFloatInput? = nil, svcLng: ModelFloatInput? = nil, svcAddr: ModelStringInput? = nil, accept: ModelBooleanInput? = nil, and: [ModelSvcReqConditionInput?]? = nil, or: [ModelSvcReqConditionInput?]? = nil, not: ModelSvcReqConditionInput? = nil) {
    graphQLMap = ["custUName": custUName, "provUName": provUName, "svcLat": svcLat, "svcLng": svcLng, "svcAddr": svcAddr, "accept": accept, "and": and, "or": or, "not": not]
  }

  public var custUName: ModelStringInput? {
    get {
      return graphQLMap["custUName"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "custUName")
    }
  }

  public var provUName: ModelStringInput? {
    get {
      return graphQLMap["provUName"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "provUName")
    }
  }

  public var svcLat: ModelFloatInput? {
    get {
      return graphQLMap["svcLat"] as! ModelFloatInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "svcLat")
    }
  }

  public var svcLng: ModelFloatInput? {
    get {
      return graphQLMap["svcLng"] as! ModelFloatInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "svcLng")
    }
  }

  public var svcAddr: ModelStringInput? {
    get {
      return graphQLMap["svcAddr"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "svcAddr")
    }
  }

  public var accept: ModelBooleanInput? {
    get {
      return graphQLMap["accept"] as! ModelBooleanInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "accept")
    }
  }

  public var and: [ModelSvcReqConditionInput?]? {
    get {
      return graphQLMap["and"] as! [ModelSvcReqConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelSvcReqConditionInput?]? {
    get {
      return graphQLMap["or"] as! [ModelSvcReqConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelSvcReqConditionInput? {
    get {
      return graphQLMap["not"] as! ModelSvcReqConditionInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct ModelBooleanInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: Bool? = nil, eq: Bool? = nil, attributeExists: Bool? = nil, attributeType: ModelAttributeTypes? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "attributeExists": attributeExists, "attributeType": attributeType]
  }

  public var ne: Bool? {
    get {
      return graphQLMap["ne"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: Bool? {
    get {
      return graphQLMap["eq"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var attributeExists: Bool? {
    get {
      return graphQLMap["attributeExists"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeExists")
    }
  }

  public var attributeType: ModelAttributeTypes? {
    get {
      return graphQLMap["attributeType"] as! ModelAttributeTypes?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeType")
    }
  }
}

public struct UpdateSvcReqInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID, custUName: String? = nil, provUName: String? = nil, svcLat: Double? = nil, svcLng: Double? = nil, svcAddr: String? = nil, accept: Bool? = nil) {
    graphQLMap = ["id": id, "custUName": custUName, "provUName": provUName, "svcLat": svcLat, "svcLng": svcLng, "svcAddr": svcAddr, "accept": accept]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var custUName: String? {
    get {
      return graphQLMap["custUName"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "custUName")
    }
  }

  public var provUName: String? {
    get {
      return graphQLMap["provUName"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "provUName")
    }
  }

  public var svcLat: Double? {
    get {
      return graphQLMap["svcLat"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "svcLat")
    }
  }

  public var svcLng: Double? {
    get {
      return graphQLMap["svcLng"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "svcLng")
    }
  }

  public var svcAddr: String? {
    get {
      return graphQLMap["svcAddr"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "svcAddr")
    }
  }

  public var accept: Bool? {
    get {
      return graphQLMap["accept"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "accept")
    }
  }
}

public struct DeleteSvcReqInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID) {
    graphQLMap = ["id": id]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }
}

public struct ModelAppUserFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: ModelIDInput? = nil, userName: ModelStringInput? = nil, locLat: ModelFloatInput? = nil, locLng: ModelFloatInput? = nil, and: [ModelAppUserFilterInput?]? = nil, or: [ModelAppUserFilterInput?]? = nil, not: ModelAppUserFilterInput? = nil) {
    graphQLMap = ["id": id, "userName": userName, "locLat": locLat, "locLng": locLng, "and": and, "or": or, "not": not]
  }

  public var id: ModelIDInput? {
    get {
      return graphQLMap["id"] as! ModelIDInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var userName: ModelStringInput? {
    get {
      return graphQLMap["userName"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "userName")
    }
  }

  public var locLat: ModelFloatInput? {
    get {
      return graphQLMap["locLat"] as! ModelFloatInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "locLat")
    }
  }

  public var locLng: ModelFloatInput? {
    get {
      return graphQLMap["locLng"] as! ModelFloatInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "locLng")
    }
  }

  public var and: [ModelAppUserFilterInput?]? {
    get {
      return graphQLMap["and"] as! [ModelAppUserFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelAppUserFilterInput?]? {
    get {
      return graphQLMap["or"] as! [ModelAppUserFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelAppUserFilterInput? {
    get {
      return graphQLMap["not"] as! ModelAppUserFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct ModelIDInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: GraphQLID? = nil, eq: GraphQLID? = nil, le: GraphQLID? = nil, lt: GraphQLID? = nil, ge: GraphQLID? = nil, gt: GraphQLID? = nil, contains: GraphQLID? = nil, notContains: GraphQLID? = nil, between: [GraphQLID?]? = nil, beginsWith: GraphQLID? = nil, attributeExists: Bool? = nil, attributeType: ModelAttributeTypes? = nil, size: ModelSizeInput? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "contains": contains, "notContains": notContains, "between": between, "beginsWith": beginsWith, "attributeExists": attributeExists, "attributeType": attributeType, "size": size]
  }

  public var ne: GraphQLID? {
    get {
      return graphQLMap["ne"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: GraphQLID? {
    get {
      return graphQLMap["eq"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: GraphQLID? {
    get {
      return graphQLMap["le"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: GraphQLID? {
    get {
      return graphQLMap["lt"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: GraphQLID? {
    get {
      return graphQLMap["ge"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: GraphQLID? {
    get {
      return graphQLMap["gt"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var contains: GraphQLID? {
    get {
      return graphQLMap["contains"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "contains")
    }
  }

  public var notContains: GraphQLID? {
    get {
      return graphQLMap["notContains"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "notContains")
    }
  }

  public var between: [GraphQLID?]? {
    get {
      return graphQLMap["between"] as! [GraphQLID?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }

  public var beginsWith: GraphQLID? {
    get {
      return graphQLMap["beginsWith"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "beginsWith")
    }
  }

  public var attributeExists: Bool? {
    get {
      return graphQLMap["attributeExists"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeExists")
    }
  }

  public var attributeType: ModelAttributeTypes? {
    get {
      return graphQLMap["attributeType"] as! ModelAttributeTypes?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeType")
    }
  }

  public var size: ModelSizeInput? {
    get {
      return graphQLMap["size"] as! ModelSizeInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "size")
    }
  }
}

public struct ModelSvcReqFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: ModelIDInput? = nil, custUName: ModelStringInput? = nil, provUName: ModelStringInput? = nil, svcLat: ModelFloatInput? = nil, svcLng: ModelFloatInput? = nil, svcAddr: ModelStringInput? = nil, accept: ModelBooleanInput? = nil, and: [ModelSvcReqFilterInput?]? = nil, or: [ModelSvcReqFilterInput?]? = nil, not: ModelSvcReqFilterInput? = nil) {
    graphQLMap = ["id": id, "custUName": custUName, "provUName": provUName, "svcLat": svcLat, "svcLng": svcLng, "svcAddr": svcAddr, "accept": accept, "and": and, "or": or, "not": not]
  }

  public var id: ModelIDInput? {
    get {
      return graphQLMap["id"] as! ModelIDInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var custUName: ModelStringInput? {
    get {
      return graphQLMap["custUName"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "custUName")
    }
  }

  public var provUName: ModelStringInput? {
    get {
      return graphQLMap["provUName"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "provUName")
    }
  }

  public var svcLat: ModelFloatInput? {
    get {
      return graphQLMap["svcLat"] as! ModelFloatInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "svcLat")
    }
  }

  public var svcLng: ModelFloatInput? {
    get {
      return graphQLMap["svcLng"] as! ModelFloatInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "svcLng")
    }
  }

  public var svcAddr: ModelStringInput? {
    get {
      return graphQLMap["svcAddr"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "svcAddr")
    }
  }

  public var accept: ModelBooleanInput? {
    get {
      return graphQLMap["accept"] as! ModelBooleanInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "accept")
    }
  }

  public var and: [ModelSvcReqFilterInput?]? {
    get {
      return graphQLMap["and"] as! [ModelSvcReqFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelSvcReqFilterInput?]? {
    get {
      return graphQLMap["or"] as! [ModelSvcReqFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelSvcReqFilterInput? {
    get {
      return graphQLMap["not"] as! ModelSvcReqFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public final class CreateAppUserMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreateAppUser($input: CreateAppUserInput!, $condition: ModelAppUserConditionInput) {\n  createAppUser(input: $input, condition: $condition) {\n    __typename\n    id\n    userName\n    locLat\n    locLng\n    createdAt\n    updatedAt\n    owner\n  }\n}"

  public var input: CreateAppUserInput
  public var condition: ModelAppUserConditionInput?

  public init(input: CreateAppUserInput, condition: ModelAppUserConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createAppUser", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(CreateAppUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createAppUser: CreateAppUser? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createAppUser": createAppUser.flatMap { $0.snapshot }])
    }

    public var createAppUser: CreateAppUser? {
      get {
        return (snapshot["createAppUser"] as? Snapshot).flatMap { CreateAppUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createAppUser")
      }
    }

    public struct CreateAppUser: GraphQLSelectionSet {
      public static let possibleTypes = ["AppUser"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("userName", type: .scalar(String.self)),
        GraphQLField("locLat", type: .scalar(Double.self)),
        GraphQLField("locLng", type: .scalar(Double.self)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("owner", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, userName: String? = nil, locLat: Double? = nil, locLng: Double? = nil, createdAt: String, updatedAt: String, owner: String? = nil) {
        self.init(snapshot: ["__typename": "AppUser", "id": id, "userName": userName, "locLat": locLat, "locLng": locLng, "createdAt": createdAt, "updatedAt": updatedAt, "owner": owner])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var userName: String? {
        get {
          return snapshot["userName"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "userName")
        }
      }

      public var locLat: Double? {
        get {
          return snapshot["locLat"] as? Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "locLat")
        }
      }

      public var locLng: Double? {
        get {
          return snapshot["locLng"] as? Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "locLng")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var owner: String? {
        get {
          return snapshot["owner"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "owner")
        }
      }
    }
  }
}

public final class UpdateAppUserMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdateAppUser($input: UpdateAppUserInput!, $condition: ModelAppUserConditionInput) {\n  updateAppUser(input: $input, condition: $condition) {\n    __typename\n    id\n    userName\n    locLat\n    locLng\n    createdAt\n    updatedAt\n    owner\n  }\n}"

  public var input: UpdateAppUserInput
  public var condition: ModelAppUserConditionInput?

  public init(input: UpdateAppUserInput, condition: ModelAppUserConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateAppUser", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(UpdateAppUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updateAppUser: UpdateAppUser? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updateAppUser": updateAppUser.flatMap { $0.snapshot }])
    }

    public var updateAppUser: UpdateAppUser? {
      get {
        return (snapshot["updateAppUser"] as? Snapshot).flatMap { UpdateAppUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updateAppUser")
      }
    }

    public struct UpdateAppUser: GraphQLSelectionSet {
      public static let possibleTypes = ["AppUser"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("userName", type: .scalar(String.self)),
        GraphQLField("locLat", type: .scalar(Double.self)),
        GraphQLField("locLng", type: .scalar(Double.self)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("owner", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, userName: String? = nil, locLat: Double? = nil, locLng: Double? = nil, createdAt: String, updatedAt: String, owner: String? = nil) {
        self.init(snapshot: ["__typename": "AppUser", "id": id, "userName": userName, "locLat": locLat, "locLng": locLng, "createdAt": createdAt, "updatedAt": updatedAt, "owner": owner])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var userName: String? {
        get {
          return snapshot["userName"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "userName")
        }
      }

      public var locLat: Double? {
        get {
          return snapshot["locLat"] as? Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "locLat")
        }
      }

      public var locLng: Double? {
        get {
          return snapshot["locLng"] as? Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "locLng")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var owner: String? {
        get {
          return snapshot["owner"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "owner")
        }
      }
    }
  }
}

public final class DeleteAppUserMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeleteAppUser($input: DeleteAppUserInput!, $condition: ModelAppUserConditionInput) {\n  deleteAppUser(input: $input, condition: $condition) {\n    __typename\n    id\n    userName\n    locLat\n    locLng\n    createdAt\n    updatedAt\n    owner\n  }\n}"

  public var input: DeleteAppUserInput
  public var condition: ModelAppUserConditionInput?

  public init(input: DeleteAppUserInput, condition: ModelAppUserConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deleteAppUser", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(DeleteAppUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deleteAppUser: DeleteAppUser? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deleteAppUser": deleteAppUser.flatMap { $0.snapshot }])
    }

    public var deleteAppUser: DeleteAppUser? {
      get {
        return (snapshot["deleteAppUser"] as? Snapshot).flatMap { DeleteAppUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deleteAppUser")
      }
    }

    public struct DeleteAppUser: GraphQLSelectionSet {
      public static let possibleTypes = ["AppUser"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("userName", type: .scalar(String.self)),
        GraphQLField("locLat", type: .scalar(Double.self)),
        GraphQLField("locLng", type: .scalar(Double.self)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("owner", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, userName: String? = nil, locLat: Double? = nil, locLng: Double? = nil, createdAt: String, updatedAt: String, owner: String? = nil) {
        self.init(snapshot: ["__typename": "AppUser", "id": id, "userName": userName, "locLat": locLat, "locLng": locLng, "createdAt": createdAt, "updatedAt": updatedAt, "owner": owner])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var userName: String? {
        get {
          return snapshot["userName"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "userName")
        }
      }

      public var locLat: Double? {
        get {
          return snapshot["locLat"] as? Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "locLat")
        }
      }

      public var locLng: Double? {
        get {
          return snapshot["locLng"] as? Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "locLng")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var owner: String? {
        get {
          return snapshot["owner"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "owner")
        }
      }
    }
  }
}

public final class CreateSvcReqMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreateSvcReq($input: CreateSvcReqInput!, $condition: ModelSvcReqConditionInput) {\n  createSvcReq(input: $input, condition: $condition) {\n    __typename\n    id\n    custUName\n    provUName\n    svcLat\n    svcLng\n    svcAddr\n    accept\n    createdAt\n    updatedAt\n    owner\n  }\n}"

  public var input: CreateSvcReqInput
  public var condition: ModelSvcReqConditionInput?

  public init(input: CreateSvcReqInput, condition: ModelSvcReqConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createSvcReq", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(CreateSvcReq.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createSvcReq: CreateSvcReq? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createSvcReq": createSvcReq.flatMap { $0.snapshot }])
    }

    public var createSvcReq: CreateSvcReq? {
      get {
        return (snapshot["createSvcReq"] as? Snapshot).flatMap { CreateSvcReq(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createSvcReq")
      }
    }

    public struct CreateSvcReq: GraphQLSelectionSet {
      public static let possibleTypes = ["SvcReq"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("custUName", type: .scalar(String.self)),
        GraphQLField("provUName", type: .scalar(String.self)),
        GraphQLField("svcLat", type: .scalar(Double.self)),
        GraphQLField("svcLng", type: .scalar(Double.self)),
        GraphQLField("svcAddr", type: .scalar(String.self)),
        GraphQLField("accept", type: .scalar(Bool.self)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("owner", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, custUName: String? = nil, provUName: String? = nil, svcLat: Double? = nil, svcLng: Double? = nil, svcAddr: String? = nil, accept: Bool? = nil, createdAt: String, updatedAt: String, owner: String? = nil) {
        self.init(snapshot: ["__typename": "SvcReq", "id": id, "custUName": custUName, "provUName": provUName, "svcLat": svcLat, "svcLng": svcLng, "svcAddr": svcAddr, "accept": accept, "createdAt": createdAt, "updatedAt": updatedAt, "owner": owner])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var custUName: String? {
        get {
          return snapshot["custUName"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "custUName")
        }
      }

      public var provUName: String? {
        get {
          return snapshot["provUName"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "provUName")
        }
      }

      public var svcLat: Double? {
        get {
          return snapshot["svcLat"] as? Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "svcLat")
        }
      }

      public var svcLng: Double? {
        get {
          return snapshot["svcLng"] as? Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "svcLng")
        }
      }

      public var svcAddr: String? {
        get {
          return snapshot["svcAddr"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "svcAddr")
        }
      }

      public var accept: Bool? {
        get {
          return snapshot["accept"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "accept")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var owner: String? {
        get {
          return snapshot["owner"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "owner")
        }
      }
    }
  }
}

public final class UpdateSvcReqMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdateSvcReq($input: UpdateSvcReqInput!, $condition: ModelSvcReqConditionInput) {\n  updateSvcReq(input: $input, condition: $condition) {\n    __typename\n    id\n    custUName\n    provUName\n    svcLat\n    svcLng\n    svcAddr\n    accept\n    createdAt\n    updatedAt\n    owner\n  }\n}"

  public var input: UpdateSvcReqInput
  public var condition: ModelSvcReqConditionInput?

  public init(input: UpdateSvcReqInput, condition: ModelSvcReqConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateSvcReq", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(UpdateSvcReq.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updateSvcReq: UpdateSvcReq? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updateSvcReq": updateSvcReq.flatMap { $0.snapshot }])
    }

    public var updateSvcReq: UpdateSvcReq? {
      get {
        return (snapshot["updateSvcReq"] as? Snapshot).flatMap { UpdateSvcReq(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updateSvcReq")
      }
    }

    public struct UpdateSvcReq: GraphQLSelectionSet {
      public static let possibleTypes = ["SvcReq"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("custUName", type: .scalar(String.self)),
        GraphQLField("provUName", type: .scalar(String.self)),
        GraphQLField("svcLat", type: .scalar(Double.self)),
        GraphQLField("svcLng", type: .scalar(Double.self)),
        GraphQLField("svcAddr", type: .scalar(String.self)),
        GraphQLField("accept", type: .scalar(Bool.self)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("owner", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, custUName: String? = nil, provUName: String? = nil, svcLat: Double? = nil, svcLng: Double? = nil, svcAddr: String? = nil, accept: Bool? = nil, createdAt: String, updatedAt: String, owner: String? = nil) {
        self.init(snapshot: ["__typename": "SvcReq", "id": id, "custUName": custUName, "provUName": provUName, "svcLat": svcLat, "svcLng": svcLng, "svcAddr": svcAddr, "accept": accept, "createdAt": createdAt, "updatedAt": updatedAt, "owner": owner])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var custUName: String? {
        get {
          return snapshot["custUName"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "custUName")
        }
      }

      public var provUName: String? {
        get {
          return snapshot["provUName"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "provUName")
        }
      }

      public var svcLat: Double? {
        get {
          return snapshot["svcLat"] as? Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "svcLat")
        }
      }

      public var svcLng: Double? {
        get {
          return snapshot["svcLng"] as? Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "svcLng")
        }
      }

      public var svcAddr: String? {
        get {
          return snapshot["svcAddr"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "svcAddr")
        }
      }

      public var accept: Bool? {
        get {
          return snapshot["accept"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "accept")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var owner: String? {
        get {
          return snapshot["owner"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "owner")
        }
      }
    }
  }
}

public final class DeleteSvcReqMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeleteSvcReq($input: DeleteSvcReqInput!, $condition: ModelSvcReqConditionInput) {\n  deleteSvcReq(input: $input, condition: $condition) {\n    __typename\n    id\n    custUName\n    provUName\n    svcLat\n    svcLng\n    svcAddr\n    accept\n    createdAt\n    updatedAt\n    owner\n  }\n}"

  public var input: DeleteSvcReqInput
  public var condition: ModelSvcReqConditionInput?

  public init(input: DeleteSvcReqInput, condition: ModelSvcReqConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deleteSvcReq", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(DeleteSvcReq.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deleteSvcReq: DeleteSvcReq? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deleteSvcReq": deleteSvcReq.flatMap { $0.snapshot }])
    }

    public var deleteSvcReq: DeleteSvcReq? {
      get {
        return (snapshot["deleteSvcReq"] as? Snapshot).flatMap { DeleteSvcReq(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deleteSvcReq")
      }
    }

    public struct DeleteSvcReq: GraphQLSelectionSet {
      public static let possibleTypes = ["SvcReq"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("custUName", type: .scalar(String.self)),
        GraphQLField("provUName", type: .scalar(String.self)),
        GraphQLField("svcLat", type: .scalar(Double.self)),
        GraphQLField("svcLng", type: .scalar(Double.self)),
        GraphQLField("svcAddr", type: .scalar(String.self)),
        GraphQLField("accept", type: .scalar(Bool.self)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("owner", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, custUName: String? = nil, provUName: String? = nil, svcLat: Double? = nil, svcLng: Double? = nil, svcAddr: String? = nil, accept: Bool? = nil, createdAt: String, updatedAt: String, owner: String? = nil) {
        self.init(snapshot: ["__typename": "SvcReq", "id": id, "custUName": custUName, "provUName": provUName, "svcLat": svcLat, "svcLng": svcLng, "svcAddr": svcAddr, "accept": accept, "createdAt": createdAt, "updatedAt": updatedAt, "owner": owner])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var custUName: String? {
        get {
          return snapshot["custUName"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "custUName")
        }
      }

      public var provUName: String? {
        get {
          return snapshot["provUName"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "provUName")
        }
      }

      public var svcLat: Double? {
        get {
          return snapshot["svcLat"] as? Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "svcLat")
        }
      }

      public var svcLng: Double? {
        get {
          return snapshot["svcLng"] as? Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "svcLng")
        }
      }

      public var svcAddr: String? {
        get {
          return snapshot["svcAddr"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "svcAddr")
        }
      }

      public var accept: Bool? {
        get {
          return snapshot["accept"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "accept")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var owner: String? {
        get {
          return snapshot["owner"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "owner")
        }
      }
    }
  }
}

public final class GetAppUserQuery: GraphQLQuery {
  public static let operationString =
    "query GetAppUser($id: ID!) {\n  getAppUser(id: $id) {\n    __typename\n    id\n    userName\n    locLat\n    locLng\n    createdAt\n    updatedAt\n    owner\n  }\n}"

  public var id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getAppUser", arguments: ["id": GraphQLVariable("id")], type: .object(GetAppUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getAppUser: GetAppUser? = nil) {
      self.init(snapshot: ["__typename": "Query", "getAppUser": getAppUser.flatMap { $0.snapshot }])
    }

    public var getAppUser: GetAppUser? {
      get {
        return (snapshot["getAppUser"] as? Snapshot).flatMap { GetAppUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getAppUser")
      }
    }

    public struct GetAppUser: GraphQLSelectionSet {
      public static let possibleTypes = ["AppUser"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("userName", type: .scalar(String.self)),
        GraphQLField("locLat", type: .scalar(Double.self)),
        GraphQLField("locLng", type: .scalar(Double.self)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("owner", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, userName: String? = nil, locLat: Double? = nil, locLng: Double? = nil, createdAt: String, updatedAt: String, owner: String? = nil) {
        self.init(snapshot: ["__typename": "AppUser", "id": id, "userName": userName, "locLat": locLat, "locLng": locLng, "createdAt": createdAt, "updatedAt": updatedAt, "owner": owner])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var userName: String? {
        get {
          return snapshot["userName"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "userName")
        }
      }

      public var locLat: Double? {
        get {
          return snapshot["locLat"] as? Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "locLat")
        }
      }

      public var locLng: Double? {
        get {
          return snapshot["locLng"] as? Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "locLng")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var owner: String? {
        get {
          return snapshot["owner"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "owner")
        }
      }
    }
  }
}

public final class ListAppUsersQuery: GraphQLQuery {
  public static let operationString =
    "query ListAppUsers($filter: ModelAppUserFilterInput, $limit: Int, $nextToken: String) {\n  listAppUsers(filter: $filter, limit: $limit, nextToken: $nextToken) {\n    __typename\n    items {\n      __typename\n      id\n      userName\n      locLat\n      locLng\n      createdAt\n      updatedAt\n      owner\n    }\n    nextToken\n  }\n}"

  public var filter: ModelAppUserFilterInput?
  public var limit: Int?
  public var nextToken: String?

  public init(filter: ModelAppUserFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil) {
    self.filter = filter
    self.limit = limit
    self.nextToken = nextToken
  }

  public var variables: GraphQLMap? {
    return ["filter": filter, "limit": limit, "nextToken": nextToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("listAppUsers", arguments: ["filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(ListAppUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(listAppUsers: ListAppUser? = nil) {
      self.init(snapshot: ["__typename": "Query", "listAppUsers": listAppUsers.flatMap { $0.snapshot }])
    }

    public var listAppUsers: ListAppUser? {
      get {
        return (snapshot["listAppUsers"] as? Snapshot).flatMap { ListAppUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "listAppUsers")
      }
    }

    public struct ListAppUser: GraphQLSelectionSet {
      public static let possibleTypes = ["ModelAppUserConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .nonNull(.list(.object(Item.selections)))),
        GraphQLField("nextToken", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?], nextToken: String? = nil) {
        self.init(snapshot: ["__typename": "ModelAppUserConnection", "items": items.map { $0.flatMap { $0.snapshot } }, "nextToken": nextToken])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?] {
        get {
          return (snapshot["items"] as! [Snapshot?]).map { $0.flatMap { Item(snapshot: $0) } }
        }
        set {
          snapshot.updateValue(newValue.map { $0.flatMap { $0.snapshot } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["AppUser"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("userName", type: .scalar(String.self)),
          GraphQLField("locLat", type: .scalar(Double.self)),
          GraphQLField("locLng", type: .scalar(Double.self)),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("owner", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, userName: String? = nil, locLat: Double? = nil, locLng: Double? = nil, createdAt: String, updatedAt: String, owner: String? = nil) {
          self.init(snapshot: ["__typename": "AppUser", "id": id, "userName": userName, "locLat": locLat, "locLng": locLng, "createdAt": createdAt, "updatedAt": updatedAt, "owner": owner])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var userName: String? {
          get {
            return snapshot["userName"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "userName")
          }
        }

        public var locLat: Double? {
          get {
            return snapshot["locLat"] as? Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "locLat")
          }
        }

        public var locLng: Double? {
          get {
            return snapshot["locLng"] as? Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "locLng")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public var owner: String? {
          get {
            return snapshot["owner"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "owner")
          }
        }
      }
    }
  }
}

public final class GetSvcReqQuery: GraphQLQuery {
  public static let operationString =
    "query GetSvcReq($id: ID!) {\n  getSvcReq(id: $id) {\n    __typename\n    id\n    custUName\n    provUName\n    svcLat\n    svcLng\n    svcAddr\n    accept\n    createdAt\n    updatedAt\n    owner\n  }\n}"

  public var id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getSvcReq", arguments: ["id": GraphQLVariable("id")], type: .object(GetSvcReq.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getSvcReq: GetSvcReq? = nil) {
      self.init(snapshot: ["__typename": "Query", "getSvcReq": getSvcReq.flatMap { $0.snapshot }])
    }

    public var getSvcReq: GetSvcReq? {
      get {
        return (snapshot["getSvcReq"] as? Snapshot).flatMap { GetSvcReq(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getSvcReq")
      }
    }

    public struct GetSvcReq: GraphQLSelectionSet {
      public static let possibleTypes = ["SvcReq"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("custUName", type: .scalar(String.self)),
        GraphQLField("provUName", type: .scalar(String.self)),
        GraphQLField("svcLat", type: .scalar(Double.self)),
        GraphQLField("svcLng", type: .scalar(Double.self)),
        GraphQLField("svcAddr", type: .scalar(String.self)),
        GraphQLField("accept", type: .scalar(Bool.self)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("owner", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, custUName: String? = nil, provUName: String? = nil, svcLat: Double? = nil, svcLng: Double? = nil, svcAddr: String? = nil, accept: Bool? = nil, createdAt: String, updatedAt: String, owner: String? = nil) {
        self.init(snapshot: ["__typename": "SvcReq", "id": id, "custUName": custUName, "provUName": provUName, "svcLat": svcLat, "svcLng": svcLng, "svcAddr": svcAddr, "accept": accept, "createdAt": createdAt, "updatedAt": updatedAt, "owner": owner])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var custUName: String? {
        get {
          return snapshot["custUName"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "custUName")
        }
      }

      public var provUName: String? {
        get {
          return snapshot["provUName"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "provUName")
        }
      }

      public var svcLat: Double? {
        get {
          return snapshot["svcLat"] as? Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "svcLat")
        }
      }

      public var svcLng: Double? {
        get {
          return snapshot["svcLng"] as? Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "svcLng")
        }
      }

      public var svcAddr: String? {
        get {
          return snapshot["svcAddr"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "svcAddr")
        }
      }

      public var accept: Bool? {
        get {
          return snapshot["accept"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "accept")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var owner: String? {
        get {
          return snapshot["owner"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "owner")
        }
      }
    }
  }
}

public final class ListSvcReqsQuery: GraphQLQuery {
  public static let operationString =
    "query ListSvcReqs($filter: ModelSvcReqFilterInput, $limit: Int, $nextToken: String) {\n  listSvcReqs(filter: $filter, limit: $limit, nextToken: $nextToken) {\n    __typename\n    items {\n      __typename\n      id\n      custUName\n      provUName\n      svcLat\n      svcLng\n      svcAddr\n      accept\n      createdAt\n      updatedAt\n      owner\n    }\n    nextToken\n  }\n}"

  public var filter: ModelSvcReqFilterInput?
  public var limit: Int?
  public var nextToken: String?

  public init(filter: ModelSvcReqFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil) {
    self.filter = filter
    self.limit = limit
    self.nextToken = nextToken
  }

  public var variables: GraphQLMap? {
    return ["filter": filter, "limit": limit, "nextToken": nextToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("listSvcReqs", arguments: ["filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(ListSvcReq.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(listSvcReqs: ListSvcReq? = nil) {
      self.init(snapshot: ["__typename": "Query", "listSvcReqs": listSvcReqs.flatMap { $0.snapshot }])
    }

    public var listSvcReqs: ListSvcReq? {
      get {
        return (snapshot["listSvcReqs"] as? Snapshot).flatMap { ListSvcReq(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "listSvcReqs")
      }
    }

    public struct ListSvcReq: GraphQLSelectionSet {
      public static let possibleTypes = ["ModelSvcReqConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .nonNull(.list(.object(Item.selections)))),
        GraphQLField("nextToken", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?], nextToken: String? = nil) {
        self.init(snapshot: ["__typename": "ModelSvcReqConnection", "items": items.map { $0.flatMap { $0.snapshot } }, "nextToken": nextToken])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?] {
        get {
          return (snapshot["items"] as! [Snapshot?]).map { $0.flatMap { Item(snapshot: $0) } }
        }
        set {
          snapshot.updateValue(newValue.map { $0.flatMap { $0.snapshot } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["SvcReq"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("custUName", type: .scalar(String.self)),
          GraphQLField("provUName", type: .scalar(String.self)),
          GraphQLField("svcLat", type: .scalar(Double.self)),
          GraphQLField("svcLng", type: .scalar(Double.self)),
          GraphQLField("svcAddr", type: .scalar(String.self)),
          GraphQLField("accept", type: .scalar(Bool.self)),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("owner", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, custUName: String? = nil, provUName: String? = nil, svcLat: Double? = nil, svcLng: Double? = nil, svcAddr: String? = nil, accept: Bool? = nil, createdAt: String, updatedAt: String, owner: String? = nil) {
          self.init(snapshot: ["__typename": "SvcReq", "id": id, "custUName": custUName, "provUName": provUName, "svcLat": svcLat, "svcLng": svcLng, "svcAddr": svcAddr, "accept": accept, "createdAt": createdAt, "updatedAt": updatedAt, "owner": owner])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var custUName: String? {
          get {
            return snapshot["custUName"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "custUName")
          }
        }

        public var provUName: String? {
          get {
            return snapshot["provUName"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "provUName")
          }
        }

        public var svcLat: Double? {
          get {
            return snapshot["svcLat"] as? Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "svcLat")
          }
        }

        public var svcLng: Double? {
          get {
            return snapshot["svcLng"] as? Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "svcLng")
          }
        }

        public var svcAddr: String? {
          get {
            return snapshot["svcAddr"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "svcAddr")
          }
        }

        public var accept: Bool? {
          get {
            return snapshot["accept"] as? Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "accept")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public var owner: String? {
          get {
            return snapshot["owner"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "owner")
          }
        }
      }
    }
  }
}

public final class OnCreateAppUserSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnCreateAppUser($owner: String) {\n  onCreateAppUser(owner: $owner) {\n    __typename\n    id\n    userName\n    locLat\n    locLng\n    createdAt\n    updatedAt\n    owner\n  }\n}"

  public var owner: String?

  public init(owner: String? = nil) {
    self.owner = owner
  }

  public var variables: GraphQLMap? {
    return ["owner": owner]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onCreateAppUser", arguments: ["owner": GraphQLVariable("owner")], type: .object(OnCreateAppUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onCreateAppUser: OnCreateAppUser? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onCreateAppUser": onCreateAppUser.flatMap { $0.snapshot }])
    }

    public var onCreateAppUser: OnCreateAppUser? {
      get {
        return (snapshot["onCreateAppUser"] as? Snapshot).flatMap { OnCreateAppUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onCreateAppUser")
      }
    }

    public struct OnCreateAppUser: GraphQLSelectionSet {
      public static let possibleTypes = ["AppUser"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("userName", type: .scalar(String.self)),
        GraphQLField("locLat", type: .scalar(Double.self)),
        GraphQLField("locLng", type: .scalar(Double.self)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("owner", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, userName: String? = nil, locLat: Double? = nil, locLng: Double? = nil, createdAt: String, updatedAt: String, owner: String? = nil) {
        self.init(snapshot: ["__typename": "AppUser", "id": id, "userName": userName, "locLat": locLat, "locLng": locLng, "createdAt": createdAt, "updatedAt": updatedAt, "owner": owner])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var userName: String? {
        get {
          return snapshot["userName"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "userName")
        }
      }

      public var locLat: Double? {
        get {
          return snapshot["locLat"] as? Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "locLat")
        }
      }

      public var locLng: Double? {
        get {
          return snapshot["locLng"] as? Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "locLng")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var owner: String? {
        get {
          return snapshot["owner"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "owner")
        }
      }
    }
  }
}

public final class OnUpdateAppUserSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnUpdateAppUser($owner: String) {\n  onUpdateAppUser(owner: $owner) {\n    __typename\n    id\n    userName\n    locLat\n    locLng\n    createdAt\n    updatedAt\n    owner\n  }\n}"

  public var owner: String?

  public init(owner: String? = nil) {
    self.owner = owner
  }

  public var variables: GraphQLMap? {
    return ["owner": owner]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onUpdateAppUser", arguments: ["owner": GraphQLVariable("owner")], type: .object(OnUpdateAppUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onUpdateAppUser: OnUpdateAppUser? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onUpdateAppUser": onUpdateAppUser.flatMap { $0.snapshot }])
    }

    public var onUpdateAppUser: OnUpdateAppUser? {
      get {
        return (snapshot["onUpdateAppUser"] as? Snapshot).flatMap { OnUpdateAppUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onUpdateAppUser")
      }
    }

    public struct OnUpdateAppUser: GraphQLSelectionSet {
      public static let possibleTypes = ["AppUser"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("userName", type: .scalar(String.self)),
        GraphQLField("locLat", type: .scalar(Double.self)),
        GraphQLField("locLng", type: .scalar(Double.self)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("owner", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, userName: String? = nil, locLat: Double? = nil, locLng: Double? = nil, createdAt: String, updatedAt: String, owner: String? = nil) {
        self.init(snapshot: ["__typename": "AppUser", "id": id, "userName": userName, "locLat": locLat, "locLng": locLng, "createdAt": createdAt, "updatedAt": updatedAt, "owner": owner])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var userName: String? {
        get {
          return snapshot["userName"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "userName")
        }
      }

      public var locLat: Double? {
        get {
          return snapshot["locLat"] as? Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "locLat")
        }
      }

      public var locLng: Double? {
        get {
          return snapshot["locLng"] as? Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "locLng")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var owner: String? {
        get {
          return snapshot["owner"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "owner")
        }
      }
    }
  }
}

public final class OnDeleteAppUserSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnDeleteAppUser($owner: String) {\n  onDeleteAppUser(owner: $owner) {\n    __typename\n    id\n    userName\n    locLat\n    locLng\n    createdAt\n    updatedAt\n    owner\n  }\n}"

  public var owner: String?

  public init(owner: String? = nil) {
    self.owner = owner
  }

  public var variables: GraphQLMap? {
    return ["owner": owner]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onDeleteAppUser", arguments: ["owner": GraphQLVariable("owner")], type: .object(OnDeleteAppUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onDeleteAppUser: OnDeleteAppUser? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onDeleteAppUser": onDeleteAppUser.flatMap { $0.snapshot }])
    }

    public var onDeleteAppUser: OnDeleteAppUser? {
      get {
        return (snapshot["onDeleteAppUser"] as? Snapshot).flatMap { OnDeleteAppUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onDeleteAppUser")
      }
    }

    public struct OnDeleteAppUser: GraphQLSelectionSet {
      public static let possibleTypes = ["AppUser"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("userName", type: .scalar(String.self)),
        GraphQLField("locLat", type: .scalar(Double.self)),
        GraphQLField("locLng", type: .scalar(Double.self)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("owner", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, userName: String? = nil, locLat: Double? = nil, locLng: Double? = nil, createdAt: String, updatedAt: String, owner: String? = nil) {
        self.init(snapshot: ["__typename": "AppUser", "id": id, "userName": userName, "locLat": locLat, "locLng": locLng, "createdAt": createdAt, "updatedAt": updatedAt, "owner": owner])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var userName: String? {
        get {
          return snapshot["userName"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "userName")
        }
      }

      public var locLat: Double? {
        get {
          return snapshot["locLat"] as? Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "locLat")
        }
      }

      public var locLng: Double? {
        get {
          return snapshot["locLng"] as? Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "locLng")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var owner: String? {
        get {
          return snapshot["owner"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "owner")
        }
      }
    }
  }
}

public final class OnCreateSvcReqSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnCreateSvcReq($owner: String) {\n  onCreateSvcReq(owner: $owner) {\n    __typename\n    id\n    custUName\n    provUName\n    svcLat\n    svcLng\n    svcAddr\n    accept\n    createdAt\n    updatedAt\n    owner\n  }\n}"

  public var owner: String?

  public init(owner: String? = nil) {
    self.owner = owner
  }

  public var variables: GraphQLMap? {
    return ["owner": owner]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onCreateSvcReq", arguments: ["owner": GraphQLVariable("owner")], type: .object(OnCreateSvcReq.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onCreateSvcReq: OnCreateSvcReq? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onCreateSvcReq": onCreateSvcReq.flatMap { $0.snapshot }])
    }

    public var onCreateSvcReq: OnCreateSvcReq? {
      get {
        return (snapshot["onCreateSvcReq"] as? Snapshot).flatMap { OnCreateSvcReq(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onCreateSvcReq")
      }
    }

    public struct OnCreateSvcReq: GraphQLSelectionSet {
      public static let possibleTypes = ["SvcReq"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("custUName", type: .scalar(String.self)),
        GraphQLField("provUName", type: .scalar(String.self)),
        GraphQLField("svcLat", type: .scalar(Double.self)),
        GraphQLField("svcLng", type: .scalar(Double.self)),
        GraphQLField("svcAddr", type: .scalar(String.self)),
        GraphQLField("accept", type: .scalar(Bool.self)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("owner", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, custUName: String? = nil, provUName: String? = nil, svcLat: Double? = nil, svcLng: Double? = nil, svcAddr: String? = nil, accept: Bool? = nil, createdAt: String, updatedAt: String, owner: String? = nil) {
        self.init(snapshot: ["__typename": "SvcReq", "id": id, "custUName": custUName, "provUName": provUName, "svcLat": svcLat, "svcLng": svcLng, "svcAddr": svcAddr, "accept": accept, "createdAt": createdAt, "updatedAt": updatedAt, "owner": owner])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var custUName: String? {
        get {
          return snapshot["custUName"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "custUName")
        }
      }

      public var provUName: String? {
        get {
          return snapshot["provUName"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "provUName")
        }
      }

      public var svcLat: Double? {
        get {
          return snapshot["svcLat"] as? Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "svcLat")
        }
      }

      public var svcLng: Double? {
        get {
          return snapshot["svcLng"] as? Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "svcLng")
        }
      }

      public var svcAddr: String? {
        get {
          return snapshot["svcAddr"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "svcAddr")
        }
      }

      public var accept: Bool? {
        get {
          return snapshot["accept"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "accept")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var owner: String? {
        get {
          return snapshot["owner"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "owner")
        }
      }
    }
  }
}

public final class OnUpdateSvcReqSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnUpdateSvcReq($owner: String) {\n  onUpdateSvcReq(owner: $owner) {\n    __typename\n    id\n    custUName\n    provUName\n    svcLat\n    svcLng\n    svcAddr\n    accept\n    createdAt\n    updatedAt\n    owner\n  }\n}"

  public var owner: String?

  public init(owner: String? = nil) {
    self.owner = owner
  }

  public var variables: GraphQLMap? {
    return ["owner": owner]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onUpdateSvcReq", arguments: ["owner": GraphQLVariable("owner")], type: .object(OnUpdateSvcReq.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onUpdateSvcReq: OnUpdateSvcReq? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onUpdateSvcReq": onUpdateSvcReq.flatMap { $0.snapshot }])
    }

    public var onUpdateSvcReq: OnUpdateSvcReq? {
      get {
        return (snapshot["onUpdateSvcReq"] as? Snapshot).flatMap { OnUpdateSvcReq(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onUpdateSvcReq")
      }
    }

    public struct OnUpdateSvcReq: GraphQLSelectionSet {
      public static let possibleTypes = ["SvcReq"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("custUName", type: .scalar(String.self)),
        GraphQLField("provUName", type: .scalar(String.self)),
        GraphQLField("svcLat", type: .scalar(Double.self)),
        GraphQLField("svcLng", type: .scalar(Double.self)),
        GraphQLField("svcAddr", type: .scalar(String.self)),
        GraphQLField("accept", type: .scalar(Bool.self)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("owner", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, custUName: String? = nil, provUName: String? = nil, svcLat: Double? = nil, svcLng: Double? = nil, svcAddr: String? = nil, accept: Bool? = nil, createdAt: String, updatedAt: String, owner: String? = nil) {
        self.init(snapshot: ["__typename": "SvcReq", "id": id, "custUName": custUName, "provUName": provUName, "svcLat": svcLat, "svcLng": svcLng, "svcAddr": svcAddr, "accept": accept, "createdAt": createdAt, "updatedAt": updatedAt, "owner": owner])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var custUName: String? {
        get {
          return snapshot["custUName"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "custUName")
        }
      }

      public var provUName: String? {
        get {
          return snapshot["provUName"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "provUName")
        }
      }

      public var svcLat: Double? {
        get {
          return snapshot["svcLat"] as? Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "svcLat")
        }
      }

      public var svcLng: Double? {
        get {
          return snapshot["svcLng"] as? Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "svcLng")
        }
      }

      public var svcAddr: String? {
        get {
          return snapshot["svcAddr"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "svcAddr")
        }
      }

      public var accept: Bool? {
        get {
          return snapshot["accept"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "accept")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var owner: String? {
        get {
          return snapshot["owner"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "owner")
        }
      }
    }
  }
}

public final class OnDeleteSvcReqSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnDeleteSvcReq($owner: String) {\n  onDeleteSvcReq(owner: $owner) {\n    __typename\n    id\n    custUName\n    provUName\n    svcLat\n    svcLng\n    svcAddr\n    accept\n    createdAt\n    updatedAt\n    owner\n  }\n}"

  public var owner: String?

  public init(owner: String? = nil) {
    self.owner = owner
  }

  public var variables: GraphQLMap? {
    return ["owner": owner]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onDeleteSvcReq", arguments: ["owner": GraphQLVariable("owner")], type: .object(OnDeleteSvcReq.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onDeleteSvcReq: OnDeleteSvcReq? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onDeleteSvcReq": onDeleteSvcReq.flatMap { $0.snapshot }])
    }

    public var onDeleteSvcReq: OnDeleteSvcReq? {
      get {
        return (snapshot["onDeleteSvcReq"] as? Snapshot).flatMap { OnDeleteSvcReq(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onDeleteSvcReq")
      }
    }

    public struct OnDeleteSvcReq: GraphQLSelectionSet {
      public static let possibleTypes = ["SvcReq"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("custUName", type: .scalar(String.self)),
        GraphQLField("provUName", type: .scalar(String.self)),
        GraphQLField("svcLat", type: .scalar(Double.self)),
        GraphQLField("svcLng", type: .scalar(Double.self)),
        GraphQLField("svcAddr", type: .scalar(String.self)),
        GraphQLField("accept", type: .scalar(Bool.self)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("owner", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, custUName: String? = nil, provUName: String? = nil, svcLat: Double? = nil, svcLng: Double? = nil, svcAddr: String? = nil, accept: Bool? = nil, createdAt: String, updatedAt: String, owner: String? = nil) {
        self.init(snapshot: ["__typename": "SvcReq", "id": id, "custUName": custUName, "provUName": provUName, "svcLat": svcLat, "svcLng": svcLng, "svcAddr": svcAddr, "accept": accept, "createdAt": createdAt, "updatedAt": updatedAt, "owner": owner])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var custUName: String? {
        get {
          return snapshot["custUName"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "custUName")
        }
      }

      public var provUName: String? {
        get {
          return snapshot["provUName"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "provUName")
        }
      }

      public var svcLat: Double? {
        get {
          return snapshot["svcLat"] as? Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "svcLat")
        }
      }

      public var svcLng: Double? {
        get {
          return snapshot["svcLng"] as? Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "svcLng")
        }
      }

      public var svcAddr: String? {
        get {
          return snapshot["svcAddr"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "svcAddr")
        }
      }

      public var accept: Bool? {
        get {
          return snapshot["accept"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "accept")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var owner: String? {
        get {
          return snapshot["owner"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "owner")
        }
      }
    }
  }
}