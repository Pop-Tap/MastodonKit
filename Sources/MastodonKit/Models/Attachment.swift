//
//  Attachment.swift
//  MastodonKit
//
//  Created by Ornithologist Coder on 4/9/17.
//  Copyright © 2017 MastodonKit. All rights reserved.
//

import Foundation

public struct  Attachment: Codable, Hashable, Identifiable {
    /// ID of the attachment.
    public let id: String
    /// Type of the attachment.
    public let type: AttachmentType
    /// URL of the locally hosted version of the image.
    public let url: String
    /// For remote images, the remote URL of the original image.
    public let remoteUrl: URL?
    /// URL of the preview image.
    public let previewUrl: URL?
    /// Shorter URL for the image, for insertion into text (only present on local images).
    public let textUrl: URL?
    /// A description of the image for the visually impaired.
    public let description: String?
    /// A free-form object that might contain information about the attachment.
    public let meta: Meta?
    /// A hash computed by the BlurHash algorithm, for generating colorful preview thumbnails when media has not been downloaded yet.
    public let blurhash: String?

    public struct Meta: Codable, Hashable {
        public struct Info: Codable, Hashable {
            public let width: Int?
            public let height: Int?
            public let size: String?
            public let aspect: Double?
            public let frameRate: String?
            public let duration: Double?
            public let bitrate: Int?
        }

        public struct Focus: Codable, Hashable {
            public var x: Double
            public var y: Double
        }

        public let original: Info?
        public let small: Info?
        public let focus: Focus?
    }
}
