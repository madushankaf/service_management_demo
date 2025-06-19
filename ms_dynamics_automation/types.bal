// Type definitions for message processing
type QueueMessage record {|
    string messageId?;
    string body;
    string contentType?;
|};