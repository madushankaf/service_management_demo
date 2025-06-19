# Represents a service management request
public type ServiceRequest record {|
    string shortDescription;
    string assignmentGroup;
    string urgency;
    string impact;
|};

# Represents a service management response
public type ServiceResponse record {|
    json response;
|};