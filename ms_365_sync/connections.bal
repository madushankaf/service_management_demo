import ballerinax/microsoft.dynamics365businesscentral;

final dynamics365businesscentral:Client dynamics365businesscentralClient = check new ({
    auth: {
        refreshUrl: "",
        refreshToken: "",
        clientId: "",
        clientSecret: ""
    }
});
