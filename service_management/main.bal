import ballerina/http;

// Configure the listener
listener http:Listener serviceListener = new (8080);

// Service definition
service /serviceManagement on serviceListener {
    
    // Resource to handle service requests
    resource function post requests(@http:Payload ServiceRequest serviceRequest) returns ServiceResponse|error {
        // Process the service request
        ServiceResponse response = {
            message: string `Service request ${serviceRequest.requestId} received successfully`,
            requestId: serviceRequest.requestId
        };
        
        return response;
    }
}