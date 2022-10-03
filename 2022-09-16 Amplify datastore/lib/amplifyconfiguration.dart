const amplifyconfig = ''' {
    "UserAgent": "aws-amplify-cli/2.0",
    "Version": "1.0",
    "api": {
        "plugins": {
            "awsAPIPlugin": {
                "amplifiedtodo": {
                    "endpointType": "GraphQL",
                    "endpoint": "https://47jxs5tnhbbsllnawceqizrl5m.appsync-api.ap-northeast-2.amazonaws.com/graphql",
                    "region": "ap-northeast-2",
                    "authorizationType": "API_KEY",
                    "apiKey": "da2-4dyt7uvombhfxpk3wsy6fe3kdm"
                }
            }
        }
    },
    "auth": {
        "plugins": {
            "awsCognitoAuthPlugin": {
                "UserAgent": "aws-amplify-cli/0.1.0",
                "Version": "0.1.0",
                "IdentityManager": {
                    "Default": {}
                },
                "AppSync": {
                    "Default": {
                        "ApiUrl": "https://47jxs5tnhbbsllnawceqizrl5m.appsync-api.ap-northeast-2.amazonaws.com/graphql",
                        "Region": "ap-northeast-2",
                        "AuthMode": "API_KEY",
                        "ApiKey": "da2-4dyt7uvombhfxpk3wsy6fe3kdm",
                        "ClientDatabasePrefix": "amplifiedtodo_API_KEY"
                    },
                    "amplifiedtodo_AWS_IAM": {
                        "ApiUrl": "https://47jxs5tnhbbsllnawceqizrl5m.appsync-api.ap-northeast-2.amazonaws.com/graphql",
                        "Region": "ap-northeast-2",
                        "AuthMode": "AWS_IAM",
                        "ClientDatabasePrefix": "amplifiedtodo_AWS_IAM"
                    }
                },
                "CredentialsProvider": {
                    "CognitoIdentity": {
                        "Default": {
                            "PoolId": "ap-northeast-2:f2560b68-e764-4c5d-a43b-b9fccf0cb2d6",
                            "Region": "ap-northeast-2"
                        }
                    }
                },
                "CognitoUserPool": {
                    "Default": {
                        "PoolId": "ap-northeast-2_Zdf6a3VKd",
                        "AppClientId": "31adcom9nst29hfmkr9vh30mlo",
                        "Region": "ap-northeast-2"
                    }
                },
                "Auth": {
                    "Default": {
                        "authenticationFlowType": "USER_SRP_AUTH",
                        "socialProviders": [],
                        "usernameAttributes": [
                            "EMAIL"
                        ],
                        "signupAttributes": [],
                        "passwordProtectionSettings": {
                            "passwordPolicyMinLength": 8,
                            "passwordPolicyCharacters": [
                                "REQUIRES_LOWERCASE",
                                "REQUIRES_NUMBERS",
                                "REQUIRES_SYMBOLS",
                                "REQUIRES_UPPERCASE"
                            ]
                        },
                        "mfaConfiguration": "OFF",
                        "mfaTypes": [
                            "SMS"
                        ],
                        "verificationMechanisms": [
                            "EMAIL"
                        ]
                    }
                }
            }
        }
    }
}''';