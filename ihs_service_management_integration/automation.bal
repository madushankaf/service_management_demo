import ballerina/log;

public function main() returns error? {
    do {
        // Get records from ServiceNow
        json jsonResult = check servicenowClient->getRecordList("");

        // Send to Azure Service Bus queue
        check asbSender->sendPayload(messagePayload = jsonResult);
        log:printInfo("Records sent to queue successfully");
    } on fail error e {
        log:printError("Error occurred", 'error = e);
        return e;
    }
}