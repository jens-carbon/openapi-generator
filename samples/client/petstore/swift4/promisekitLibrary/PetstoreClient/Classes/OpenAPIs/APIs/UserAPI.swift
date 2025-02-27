//
// UserAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import PromiseKit

open class UserAPI {
    /**
     Create user
     
     - parameter body: (body) Created user object 
     - returns: Promise<Void>
     */
    open class func createUser( body: User) -> Promise<Void> {
        let deferred = Promise<Void>.pending()
        createUserWithRequestBuilder(body: body).execute { (_, error) -> Void in
            if let error = error {
                deferred.resolver.reject(error)
            } else {
                deferred.resolver.fulfill(())
            }
        }
        return deferred.promise
    }

    /**
     Create user
     - POST /user
     - This can only be done by the logged in user.
     - parameter body: (body) Created user object 
     - returns: RequestBuilder<Void> 
     */
    open class func createUserWithRequestBuilder(body: User) -> RequestBuilder<Void> {
        let path = "/user"
        let URLString = PetstoreClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = PetstoreClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Creates list of users with given input array
     
     - parameter body: (body) List of user object 
     - returns: Promise<Void>
     */
    open class func createUsersWithArrayInput( body: [User]) -> Promise<Void> {
        let deferred = Promise<Void>.pending()
        createUsersWithArrayInputWithRequestBuilder(body: body).execute { (_, error) -> Void in
            if let error = error {
                deferred.resolver.reject(error)
            } else {
                deferred.resolver.fulfill(())
            }
        }
        return deferred.promise
    }

    /**
     Creates list of users with given input array
     - POST /user/createWithArray
     - parameter body: (body) List of user object 
     - returns: RequestBuilder<Void> 
     */
    open class func createUsersWithArrayInputWithRequestBuilder(body: [User]) -> RequestBuilder<Void> {
        let path = "/user/createWithArray"
        let URLString = PetstoreClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = PetstoreClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Creates list of users with given input array
     
     - parameter body: (body) List of user object 
     - returns: Promise<Void>
     */
    open class func createUsersWithListInput( body: [User]) -> Promise<Void> {
        let deferred = Promise<Void>.pending()
        createUsersWithListInputWithRequestBuilder(body: body).execute { (_, error) -> Void in
            if let error = error {
                deferred.resolver.reject(error)
            } else {
                deferred.resolver.fulfill(())
            }
        }
        return deferred.promise
    }

    /**
     Creates list of users with given input array
     - POST /user/createWithList
     - parameter body: (body) List of user object 
     - returns: RequestBuilder<Void> 
     */
    open class func createUsersWithListInputWithRequestBuilder(body: [User]) -> RequestBuilder<Void> {
        let path = "/user/createWithList"
        let URLString = PetstoreClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = PetstoreClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Delete user
     
     - parameter username: (path) The name that needs to be deleted 
     - returns: Promise<Void>
     */
    open class func deleteUser( username: String) -> Promise<Void> {
        let deferred = Promise<Void>.pending()
        deleteUserWithRequestBuilder(username: username).execute { (_, error) -> Void in
            if let error = error {
                deferred.resolver.reject(error)
            } else {
                deferred.resolver.fulfill(())
            }
        }
        return deferred.promise
    }

    /**
     Delete user
     - DELETE /user/{username}
     - This can only be done by the logged in user.
     - parameter username: (path) The name that needs to be deleted 
     - returns: RequestBuilder<Void> 
     */
    open class func deleteUserWithRequestBuilder(username: String) -> RequestBuilder<Void> {
        var path = "/user/{username}"
        let usernamePreEscape = "\(APIHelper.mapValueToPathItem(username))"
        let usernamePostEscape = usernamePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{username}", with: usernamePostEscape, options: .literal, range: nil)
        let URLString = PetstoreClientAPI.basePath + path
        let parameters: [String: Any]? = nil

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = PetstoreClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get user by user name
     
     - parameter username: (path) The name that needs to be fetched. Use user1 for testing. 
     - returns: Promise<User>
     */
    open class func getUserByName( username: String) -> Promise<User> {
        let deferred = Promise<User>.pending()
        getUserByNameWithRequestBuilder(username: username).execute { (response, error) -> Void in
            if let error = error {
                deferred.resolver.reject(error)
            } else if let response = response {
                deferred.resolver.fulfill(response.body!)
            } else {
                fatalError()
            }
        }
        return deferred.promise
    }

    /**
     Get user by user name
     - GET /user/{username}
     - parameter username: (path) The name that needs to be fetched. Use user1 for testing. 
     - returns: RequestBuilder<User> 
     */
    open class func getUserByNameWithRequestBuilder(username: String) -> RequestBuilder<User> {
        var path = "/user/{username}"
        let usernamePreEscape = "\(APIHelper.mapValueToPathItem(username))"
        let usernamePostEscape = usernamePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{username}", with: usernamePostEscape, options: .literal, range: nil)
        let URLString = PetstoreClientAPI.basePath + path
        let parameters: [String: Any]? = nil

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<User>.Type = PetstoreClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Logs user into the system
     
     - parameter username: (query) The user name for login 
     - parameter password: (query) The password for login in clear text 
     - returns: Promise<String>
     */
    open class func loginUser( username: String, password: String) -> Promise<String> {
        let deferred = Promise<String>.pending()
        loginUserWithRequestBuilder(username: username, password: password).execute { (response, error) -> Void in
            if let error = error {
                deferred.resolver.reject(error)
            } else if let response = response {
                deferred.resolver.fulfill(response.body!)
            } else {
                fatalError()
            }
        }
        return deferred.promise
    }

    /**
     Logs user into the system
     - GET /user/login
     - responseHeaders: [X-Rate-Limit(Int), X-Expires-After(Date)]
     - parameter username: (query) The user name for login 
     - parameter password: (query) The password for login in clear text 
     - returns: RequestBuilder<String> 
     */
    open class func loginUserWithRequestBuilder(username: String, password: String) -> RequestBuilder<String> {
        let path = "/user/login"
        let URLString = PetstoreClientAPI.basePath + path
        let parameters: [String: Any]? = nil

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "username": username,
            "password": password
        ])

        let requestBuilder: RequestBuilder<String>.Type = PetstoreClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Logs out current logged in user session
     
     - returns: Promise<Void>
     */
    open class func logoutUser() -> Promise<Void> {
        let deferred = Promise<Void>.pending()
        logoutUserWithRequestBuilder().execute { (_, error) -> Void in
            if let error = error {
                deferred.resolver.reject(error)
            } else {
                deferred.resolver.fulfill(())
            }
        }
        return deferred.promise
    }

    /**
     Logs out current logged in user session
     - GET /user/logout
     - returns: RequestBuilder<Void> 
     */
    open class func logoutUserWithRequestBuilder() -> RequestBuilder<Void> {
        let path = "/user/logout"
        let URLString = PetstoreClientAPI.basePath + path
        let parameters: [String: Any]? = nil

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = PetstoreClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Updated user
     
     - parameter username: (path) name that need to be deleted 
     - parameter body: (body) Updated user object 
     - returns: Promise<Void>
     */
    open class func updateUser( username: String, body: User) -> Promise<Void> {
        let deferred = Promise<Void>.pending()
        updateUserWithRequestBuilder(username: username, body: body).execute { (_, error) -> Void in
            if let error = error {
                deferred.resolver.reject(error)
            } else {
                deferred.resolver.fulfill(())
            }
        }
        return deferred.promise
    }

    /**
     Updated user
     - PUT /user/{username}
     - This can only be done by the logged in user.
     - parameter username: (path) name that need to be deleted 
     - parameter body: (body) Updated user object 
     - returns: RequestBuilder<Void> 
     */
    open class func updateUserWithRequestBuilder(username: String, body: User) -> RequestBuilder<Void> {
        var path = "/user/{username}"
        let usernamePreEscape = "\(APIHelper.mapValueToPathItem(username))"
        let usernamePostEscape = usernamePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{username}", with: usernamePostEscape, options: .literal, range: nil)
        let URLString = PetstoreClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = PetstoreClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
