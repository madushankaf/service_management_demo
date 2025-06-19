function transform(SnRecord snRecord) returns Record|error => {
    sys_id: snRecord.result.sys_id,
    number: snRecord.result.number,
    short_description: snRecord.result.short_description,
    description: snRecord.result.description,
    priority: check int:fromString(snRecord.result.priority),
    state: snRecord.result.state,
    caller_id: snRecord.result.caller_id,
    opened_at: snRecord.result.opened_at
};