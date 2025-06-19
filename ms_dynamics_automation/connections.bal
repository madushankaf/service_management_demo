import ballerinax/asb;
import ballerinax/microsoft.dynamics365businesscentral;

// Initialize ASB client configuration
final asb:MessageReceiver receiver = check new (config = {
    connectionString: connectionString,
    entityConfig: {
        queueName: queueName
    }
});
final dynamics365businesscentral:Client dynamics365businesscentralClient = check new ({
    "auth": {
        "refreshUrl": "https://dev12345.service-now.com/oauth_token.do",
        "refreshToken": "9fcb6b3e1c9c4e12a5f7cbb49edc321b",
        "clientId": "acme-app-client-id-001",
        "clientSecret": "XyZ12345$abcDE!FG"
    }
}
);
