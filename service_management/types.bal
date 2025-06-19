# Represents a service management request
public type ServiceRequest record {|
    string requestId;
    string serviceType;
    string description;
    string status;
|};

# Represents a service management response
public type ServiceResponse record {|
    string message;
    string requestId;
|};