import ballerinax/servicenow;

final servicenow:Client servicenowClient = check new ({
    auth: {
        token: serviceNowToken
    }
}, serviceNowBaseUrl);