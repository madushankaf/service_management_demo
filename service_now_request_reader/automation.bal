import ballerina/log;

public function main() returns error? {
    do {
        json jsonResult = check servicenowClient->getRecordList("IHS");
        check asbSender->sendPayload(jsonResult);
        log:printInfo("Successfully sent records to Azure Service Bus Queue");
    } on fail error e {
        log:printError("Error occurred", 'error = e);
        return e;
    }
}