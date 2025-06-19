import ballerinax/servicenow;
import ballerinax/asb;

final servicenow:Client servicenowClient = check new ({auth: {token: ""}}, "");

final asb:MessageSender asbSender = check new (
    connectionString = asbConnectionString,
    entityType = asb:QUEUE,
    topicOrQueueName = queueName
);