{
  "Id": 50331685,
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
            "ParamType": 2,
            "value": "PlayerUnitEventResearch_Finish"
          }
        ],
        "value": "TriggerRegisterAnyUnitEventBJ"
      }
    }
  ],
  "LocalVariables": [],
  "Conditions": [
    {
      "isEnabled": true,
      "function": {
        "ParamType": 1,
        "parameters": [
          {
            "ParamType": 1,
            "parameters": [],
            "value": "GetResearched"
          },
          {
            "ParamType": 2,
            "value": "OperatorEqualENE"
          },
          {
            "ParamType": 5,
            "value": "R004"
          }
        ],
        "value": "OperatorCompareTechCode"
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
            "value": "GetTriggerPlayer"
          },
          {
            "ParamType": 1,
            "parameters": [
              {
                "ParamType": 1,
                "parameters": [
                  {
                    "ParamType": 1,
                    "parameters": [],
                    "value": "GetTriggerPlayer"
                  }
                ],
                "value": "GetPlayerHandicapXPBJ"
              },
              {
                "ParamType": 2,
                "value": "OperatorAdd"
              },
              {
                "ParamType": 5,
                "value": "3.00"
              }
            ],
            "value": "OperatorReal"
          }
        ],
        "value": "SetPlayerHandicapXPBJ"
      }
    }
  ]
}