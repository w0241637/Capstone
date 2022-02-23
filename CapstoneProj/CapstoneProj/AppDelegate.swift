//
//  AppDelegate.swift
//  CapstoneProj
//
//  Created by Tim Mailman on 2022-02-13.
//

/*
 AWS Documentation
 https://docs.amplify.aws/sdk/api/graphql/q/platform/ios/#authorization-modes
 
 GraphQL Authentication
 https://docs.aws.amazon.com/appsync/latest/devguide/security-authz.html
 https://docs.amplify.aws/cli/graphql/authorization-rules
 
 GraphQL Setup
 https://docs.amplify.aws/cli-legacy/graphql-transformer/auth/
 */

import UIKit
import AWSAppSync
import AWSMobileClient



//class for connecting AWS Cognito User Pools
class MyCognitoUserPoolsAuthProvider : AWSCognitoUserPoolsAuthProviderAsync {
    func getLatestAuthToken(_ callback: @escaping (String?, Error?) -> Void) {
        AWSMobileClient.default().getTokens { (tokens, error) in
            if error != nil {
                callback(nil, error)
            } else {
                callback(tokens?.idToken?.tokenString, nil)
            }
        }
    }
}


@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var appSyncClient : AWSAppSyncClient?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        self.initializeAppSync()
        
        return true
    }
    
    //method to initialize from aws documentation
    func initializeAppSync() {
            do {
                // You can choose the directory in which AppSync stores its persistent cache databases
            let cacheConfiguration = try AWSAppSyncCacheConfiguration()

                // Initialize the AWS AppSync configuration
                let appSyncConfig = try AWSAppSyncClientConfiguration(appSyncServiceConfig: AWSAppSyncServiceConfig(),
                  userPoolsAuthProvider: MyCognitoUserPoolsAuthProvider(), cacheConfiguration: cacheConfiguration)
                
                // Initialize the AWS AppSync client
                appSyncClient = try AWSAppSyncClient(appSyncConfig: appSyncConfig)
                print("appSyncClient initialise success.")
            } catch {
                print("Error initializing appsync client. \(error)")
            }
        }
    //</initializeAppSync

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

