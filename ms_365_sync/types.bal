
type SnRecord record {|
    record {|
        string sys_id;
        string number;
        string short_description;
        string description;
        string priority;
        string state;
        string caller_id;
        string opened_at;
    |} result;
|};

type Record record {
    string sys_id;
    string number;
    string short_description;
    string description;
    int priority;
    string state;
    string caller_id;
    string opened_at;
};

type xmlSnRecord record {
    string sys_id;
    string number;
    string short_description;
    string description;
    int priority;
    string state;
    string caller_id;
    string opened_at;
};
