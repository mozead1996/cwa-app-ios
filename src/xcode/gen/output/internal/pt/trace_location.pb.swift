// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: internal/pt/trace_location.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

/// This file is auto-generated, DO NOT make any changes here

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

enum SAP_Internal_Pt_TraceLocationType: SwiftProtobuf.Enum {
  typealias RawValue = Int
  case locationTypeUnspecified // = 0
  case locationTypePermanentOther // = 1
  case locationTypeTemporaryOther // = 2
  case locationTypePermanentRetail // = 3
  case locationTypePermanentFoodService // = 4
  case locationTypePermanentCraft // = 5
  case locationTypePermanentWorkplace // = 6
  case locationTypePermanentEducationalInstitution // = 7
  case locationTypePermanentPublicBuilding // = 8
  case locationTypeTemporaryCulturalEvent // = 9
  case locationTypeTemporaryClubActivity // = 10
  case locationTypeTemporaryPrivateEvent // = 11
  case locationTypeTemporaryWorshipService // = 12
  case UNRECOGNIZED(Int)

  init() {
    self = .locationTypeUnspecified
  }

  init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .locationTypeUnspecified
    case 1: self = .locationTypePermanentOther
    case 2: self = .locationTypeTemporaryOther
    case 3: self = .locationTypePermanentRetail
    case 4: self = .locationTypePermanentFoodService
    case 5: self = .locationTypePermanentCraft
    case 6: self = .locationTypePermanentWorkplace
    case 7: self = .locationTypePermanentEducationalInstitution
    case 8: self = .locationTypePermanentPublicBuilding
    case 9: self = .locationTypeTemporaryCulturalEvent
    case 10: self = .locationTypeTemporaryClubActivity
    case 11: self = .locationTypeTemporaryPrivateEvent
    case 12: self = .locationTypeTemporaryWorshipService
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  var rawValue: Int {
    switch self {
    case .locationTypeUnspecified: return 0
    case .locationTypePermanentOther: return 1
    case .locationTypeTemporaryOther: return 2
    case .locationTypePermanentRetail: return 3
    case .locationTypePermanentFoodService: return 4
    case .locationTypePermanentCraft: return 5
    case .locationTypePermanentWorkplace: return 6
    case .locationTypePermanentEducationalInstitution: return 7
    case .locationTypePermanentPublicBuilding: return 8
    case .locationTypeTemporaryCulturalEvent: return 9
    case .locationTypeTemporaryClubActivity: return 10
    case .locationTypeTemporaryPrivateEvent: return 11
    case .locationTypeTemporaryWorshipService: return 12
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension SAP_Internal_Pt_TraceLocationType: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  static var allCases: [SAP_Internal_Pt_TraceLocationType] = [
    .locationTypeUnspecified,
    .locationTypePermanentOther,
    .locationTypeTemporaryOther,
    .locationTypePermanentRetail,
    .locationTypePermanentFoodService,
    .locationTypePermanentCraft,
    .locationTypePermanentWorkplace,
    .locationTypePermanentEducationalInstitution,
    .locationTypePermanentPublicBuilding,
    .locationTypeTemporaryCulturalEvent,
    .locationTypeTemporaryClubActivity,
    .locationTypeTemporaryPrivateEvent,
    .locationTypeTemporaryWorshipService,
  ]
}

#endif  // swift(>=4.2)

struct SAP_Internal_Pt_TraceLocation {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// uuid
  var guid: String = String()

  var version: UInt32 = 0

  var type: SAP_Internal_Pt_TraceLocationType = .locationTypeUnspecified

  /// max. 150 characters
  var description_p: String = String()

  /// max. 150 characters
  var address: String = String()

  /// UNIX timestamp (in seconds)
  var startTimestamp: UInt64 = 0

  /// UNIX timestamp (in seconds)
  var endTimestamp: UInt64 = 0

  var defaultCheckInLengthInMinutes: UInt32 = 0

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct SAP_Internal_Pt_SignedTraceLocation {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var location: SAP_Internal_Pt_TraceLocation {
    get {return _location ?? SAP_Internal_Pt_TraceLocation()}
    set {_location = newValue}
  }
  /// Returns true if `location` has been explicitly set.
  var hasLocation: Bool {return self._location != nil}
  /// Clears the value of `location`. Subsequent reads from it will return its default value.
  mutating func clearLocation() {self._location = nil}

  var signature: Data = Data()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _location: SAP_Internal_Pt_TraceLocation? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "SAP.internal.pt"

extension SAP_Internal_Pt_TraceLocationType: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "LOCATION_TYPE_UNSPECIFIED"),
    1: .same(proto: "LOCATION_TYPE_PERMANENT_OTHER"),
    2: .same(proto: "LOCATION_TYPE_TEMPORARY_OTHER"),
    3: .same(proto: "LOCATION_TYPE_PERMANENT_RETAIL"),
    4: .same(proto: "LOCATION_TYPE_PERMANENT_FOOD_SERVICE"),
    5: .same(proto: "LOCATION_TYPE_PERMANENT_CRAFT"),
    6: .same(proto: "LOCATION_TYPE_PERMANENT_WORKPLACE"),
    7: .same(proto: "LOCATION_TYPE_PERMANENT_EDUCATIONAL_INSTITUTION"),
    8: .same(proto: "LOCATION_TYPE_PERMANENT_PUBLIC_BUILDING"),
    9: .same(proto: "LOCATION_TYPE_TEMPORARY_CULTURAL_EVENT"),
    10: .same(proto: "LOCATION_TYPE_TEMPORARY_CLUB_ACTIVITY"),
    11: .same(proto: "LOCATION_TYPE_TEMPORARY_PRIVATE_EVENT"),
    12: .same(proto: "LOCATION_TYPE_TEMPORARY_WORSHIP_SERVICE"),
  ]
}

extension SAP_Internal_Pt_TraceLocation: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".TraceLocation"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "guid"),
    2: .same(proto: "version"),
    3: .same(proto: "type"),
    4: .same(proto: "description"),
    5: .same(proto: "address"),
    6: .same(proto: "startTimestamp"),
    7: .same(proto: "endTimestamp"),
    8: .same(proto: "defaultCheckInLengthInMinutes"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.guid) }()
      case 2: try { try decoder.decodeSingularUInt32Field(value: &self.version) }()
      case 3: try { try decoder.decodeSingularEnumField(value: &self.type) }()
      case 4: try { try decoder.decodeSingularStringField(value: &self.description_p) }()
      case 5: try { try decoder.decodeSingularStringField(value: &self.address) }()
      case 6: try { try decoder.decodeSingularUInt64Field(value: &self.startTimestamp) }()
      case 7: try { try decoder.decodeSingularUInt64Field(value: &self.endTimestamp) }()
      case 8: try { try decoder.decodeSingularUInt32Field(value: &self.defaultCheckInLengthInMinutes) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.guid.isEmpty {
      try visitor.visitSingularStringField(value: self.guid, fieldNumber: 1)
    }
    if self.version != 0 {
      try visitor.visitSingularUInt32Field(value: self.version, fieldNumber: 2)
    }
    if self.type != .locationTypeUnspecified {
      try visitor.visitSingularEnumField(value: self.type, fieldNumber: 3)
    }
    if !self.description_p.isEmpty {
      try visitor.visitSingularStringField(value: self.description_p, fieldNumber: 4)
    }
    if !self.address.isEmpty {
      try visitor.visitSingularStringField(value: self.address, fieldNumber: 5)
    }
    if self.startTimestamp != 0 {
      try visitor.visitSingularUInt64Field(value: self.startTimestamp, fieldNumber: 6)
    }
    if self.endTimestamp != 0 {
      try visitor.visitSingularUInt64Field(value: self.endTimestamp, fieldNumber: 7)
    }
    if self.defaultCheckInLengthInMinutes != 0 {
      try visitor.visitSingularUInt32Field(value: self.defaultCheckInLengthInMinutes, fieldNumber: 8)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: SAP_Internal_Pt_TraceLocation, rhs: SAP_Internal_Pt_TraceLocation) -> Bool {
    if lhs.guid != rhs.guid {return false}
    if lhs.version != rhs.version {return false}
    if lhs.type != rhs.type {return false}
    if lhs.description_p != rhs.description_p {return false}
    if lhs.address != rhs.address {return false}
    if lhs.startTimestamp != rhs.startTimestamp {return false}
    if lhs.endTimestamp != rhs.endTimestamp {return false}
    if lhs.defaultCheckInLengthInMinutes != rhs.defaultCheckInLengthInMinutes {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension SAP_Internal_Pt_SignedTraceLocation: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".SignedTraceLocation"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "location"),
    2: .same(proto: "signature"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._location) }()
      case 2: try { try decoder.decodeSingularBytesField(value: &self.signature) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._location {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if !self.signature.isEmpty {
      try visitor.visitSingularBytesField(value: self.signature, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: SAP_Internal_Pt_SignedTraceLocation, rhs: SAP_Internal_Pt_SignedTraceLocation) -> Bool {
    if lhs._location != rhs._location {return false}
    if lhs.signature != rhs.signature {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
