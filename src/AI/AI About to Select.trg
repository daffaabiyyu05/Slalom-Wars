{
  "Id": 50331687,
  "Comment": "",
  "IsScript": false,
  "RunOnMapInit": false,
  "Script": "",
  "Events": [
    {
      "isEnabled": true,
      "function": {
        "ParamType": 1,
        "parameters": [
          {
            "ParamType": 5,
            "value": "110.00"
          }
        ],
        "value": "TriggerRegisterTimerEventSingle"
      }
    }
  ],
  "LocalVariables": [],
  "Conditions": [],
  "Actions": [
    {
      "isEnabled": true,
      "function": {
        "ParamType": 1,
        "parameters": [
          {
            "ParamType": 1,
            "parameters": [],
            "value": "GetPlayersAll"
          },
          {
            "ParamType": 5,
            "value": "AI heroes will begin selection in 5 seconds!"
          }
        ],
        "value": "DisplayTextToForce"
      }
    }
  ]
}