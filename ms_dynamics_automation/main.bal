import ballerinax/asb;
import ballerinax/microsoft.dynamics365businesscentral;

public function main() returns error? {
    while true {
        asb:Message? message = check receiver->receive();
        if message is () {
            continue;
        }

        // Process the received message
        QueueMessage queueMessage = {
            messageId: message.messageId,
            body: message.body.toString(),
            contentType: message.contentType
        };

        // Mark message as completed after processing
        check receiver->complete(message);
        dynamics365businesscentral:Item dynamics365businesscentralItem = check dynamics365businesscentralClient->postItem("", "ihs", queueMessage);
    }
}
