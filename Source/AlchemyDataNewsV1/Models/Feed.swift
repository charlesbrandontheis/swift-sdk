/**
 * Copyright IBM Corporation 2015
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 **/

import Foundation
import RestKit

/**
 
 **Feed**
 
 A RSS/ATOM feed link extracted from a document
 
 */

public struct Feed: JSONDecodable {
    /** extracted feed */
    public let feed: String?
    
    /// Used internally to initialize a Feed object
    public init(json: JSON) throws {
        feed = try? json.getString(at: "feed")
    }
}

