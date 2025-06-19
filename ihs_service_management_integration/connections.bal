import ballerinax/servicenow;
import ballerinax/asb;

// ServiceNow client
final servicenow:Client servicenowClient = check new ({auth: {token: ""}}, "");

// Azure Service Bus client
configurable string asbConnectionString = "";
configurable string queueName = "";

final asb:MessageSender asbSender = check new (
    config = {
        connectionString: asbConnectionString,
        entityType: asb:QUEUE,
        topicOrQueueName: queueName
    }
);