{
  "Id": 50331767,
  "Comment": "",
  "IsScript": false,
  "RunOnMapInit": false,
  "Script": "",
  "Events": [],
  "LocalVariables": [],
  "Conditions": [
    {
      "isEnabled": true,
      "function": {
        "ParamType": 1,
        "parameters": [
          {
            "ParamType": 1,
            "parameters": [
              {
                "ParamType": 3,
                "VariableId": 100663375,
                "arrayIndexValues": [
                  {
                    "ParamType": 5,
                    "value": "0"
                  },
                  {
                    "ParamType": 5,
                    "value": "0"
                  }
                ],
                "value": null
              }
            ],
            "value": "TimerGetRemaining"
          },
          {
            "ParamType": 2,
            "value": "OperatorGreater"
          },
          {
            "ParamType": 5,
            "value": "0.00"
          }
        ],
        "value": "OperatorCompareReal"
      }
    }
  ],
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
            "value": "Spawn Rush activated!"
          }
        ],
        "value": "DisplayTextToForce"
      }
    },
    {
      "isEnabled": true,
      "function": {
        "ParamType": 1,
        "parameters": [
          {
            "ParamType": 4,
            "TriggerId": 50331653,
            "value": null
          },
          {
            "ParamType": 1,
            "parameters": [
              {
                "ParamType": 5,
                "value": "13.00"
              }
            ],
            "value": "TriggerRegisterTimerEventPeriodic"
          }
        ],
        "value": "AddTriggerEvent"
      }
    },
    {
      "isEnabled": true,
      "function": {
        "ParamType": 1,
        "parameters": [
          {
            "ParamType": 4,
            "TriggerId": 50331654,
            "value": null
          },
          {
            "ParamType": 1,
            "parameters": [
              {
                "ParamType": 5,
                "value": "13.00"
              }
            ],
            "value": "TriggerRegisterTimerEventPeriodic"
          }
        ],
        "value": "AddTriggerEvent"
      }
    },
    {
      "isEnabled": true,
      "function": {
        "ParamType": 1,
        "parameters": [
          {
            "ParamType": 4,
            "TriggerId": 50331651,
            "value": null
          },
          {
            "ParamType": 1,
            "parameters": [
              {
                "ParamType": 5,
                "value": "13.00"
              }
            ],
            "value": "TriggerRegisterTimerEventPeriodic"
          }
        ],
        "value": "AddTriggerEvent"
      }
    },
    {
      "isEnabled": true,
      "function": {
        "ParamType": 1,
        "parameters": [
          {
            "ParamType": 4,
            "TriggerId": 50331652,
            "value": null
          },
          {
            "ParamType": 1,
            "parameters": [
              {
                "ParamType": 5,
                "value": "13.00"
              }
            ],
            "value": "TriggerRegisterTimerEventPeriodic"
          }
        ],
        "value": "AddTriggerEvent"
      }
    }
  ]
}