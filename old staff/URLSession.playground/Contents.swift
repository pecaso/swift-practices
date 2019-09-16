import UIKit

let urlString = "https://itunes.apple.com/search?media=music&entity=song&term=abba"
let url = URL(string: urlString)
url?.absoluteString
url?.scheme
url?.host
url?.path
url?.query
url?.baseURL


//: 'baseURL' is for building REST API urls
let baseURL = URL(string: "https://itunes.apple.com")
let relativeURL = URL(string: "search", relativeTo: baseURL)
relativeURL?.absoluteString
relativeURL?.scheme
relativeURL?.host
relativeURL?.path
relativeURL?.query
relativeURL?.baseURL



//: ### URLComponents & URL-encoding
var urlComponents = URLComponents(string: "https://itunes.apple.com/search?media=music&entity=song")
var queryItem = URLQueryItem(name: "term", value: "crowded house")
urlComponents?.queryItems?.append(queryItem)
urlComponents?.url


//: URL-encode "smilling cat face with heart-shaped eyes"
queryItem = URLQueryItem(name: "emoji", value: "😻")
urlComponents?.queryItems?.append(queryItem)
urlComponents?.url




