//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"


// Simple REST API Calls with Swift

let config = NSURLSessionConfiguration.defaultSessionConfiguration()
let session = NSURLSession(configuration: config)
let task = session.dataTaskWithRequest(urlRequest, completionHandler: nil)


let postEndpoint: String = "http://jsonplaceholder.typicode.com/posts/1"
guard let url = NSURL(string: postEndpoint) else {
    print("Error: cannot create URL")
}
let urlRequest = NSURLRequest(URL: url)



// REST API Calls with Alamofire & SwiftyJSON

let postEndpoint: String = "http://jsonplaceholder.typicode.com/posts/1"
guard let url = NSURL(string: postEndpoint) else {
    print("Error: cannot create URL")
    return
}
let urlRequest = NSURLRequest(URL: url)
let config = NSURLSessionConfiguration.defaultSessionConfiguration()
let session = NSURLSession(configuration: config)
let task = session.dataTaskWithRequest(urlRequest, completionHandler: { (data, response, e\
    rror) in
    guard let responseData = data else {
        print("Error: did not receive data")
        return
    }
    guard error == nil else {
        print("error calling GET on /posts/1")
        print(error)
        return
    }
    // parse the result as JSON, since that's what the API provides
    let post: NSDictionary
    do {
        post = try NSJSONSerialization.JSONObjectWithData(responseData,
            options: []) as! NSDictionary
    } catch {
        print("error trying to convert data to JSON")
        return
    }
    // now we have the post, let's just print it to prove we can access it
    print("The post is: " + post.description)
    // the post object is a dictionary
    // so we just access the title using the "title" key
    // so check for a title and print it if we have one
    if let postTitle = post["title"] as? String {
        print("The title is: " + postTitle)
    }
})
task.resume()