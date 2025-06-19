import ballerina/http;

// Configure the listener
listener http:Listener serviceListener = new (8080);

// Service definition
service /serviceManagement on serviceListener {
    
    // Resource to handle service requests
    resource function post requests(@http:Payload ServiceRequest serviceRequest) returns ServiceResponse|error {
        string tableName = "incident";
        
        json payload = {
            "short_description": serviceRequest.shortDescription,
            "assignment_group": serviceRequest.assignmentGroup,
            "urgency": serviceRequest.urgency,
            "impact": serviceRequest.impact
        };
        
        json response = check servicenowClient->createRecord(tableName, payload);
        return {response};
    }
}