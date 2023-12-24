{
  "Id": 50331733,
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
            "value": "900.00"
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
      "ElementType": 4,
      "Actions": [
        {
          "isEnabled": true,
          "function": {
            "ParamType": 1,
            "parameters": [
              {
                "ParamType": 5,
                "value": "A03G"
              },
              {
                "ParamType": 1,
                "parameters": [],
                "value": "GetEnumUnit"
              },
              {
                "ParamType": 5,
                "value": "2"
              }
            ],
            "value": "SetUnitAbilityLevelSwapped"
          }
        }
      ],
      "isEnabled": true,
      "function": {
        "ParamType": 1,
        "parameters": [
          {
            "ParamType": 1,
            "parameters": [
              {
                "ParamType": 5,
                "value": "H00A"
              }
            ],
            "value": "GetUnitsOfTypeIdAll"
          }
        ],
        "value": "ForGroupMultiple"
      }
    },
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
            "ParamType": 2,
            "value": "QuestMessageTypeWarning"
          },
          {
            "ParamType": 5,
            "value": "Speed of Light physical evasion has been removed!"
          }
        ],
        "value": "QuestMessageBJ"
      }
    }
  ]
}