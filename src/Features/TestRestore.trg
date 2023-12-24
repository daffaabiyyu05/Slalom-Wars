{
  "Id": 50331676,
  "Comment": "",
  "IsScript": false,
  "RunOnMapInit": false,
  "Script": "",
  "Events": [],
  "LocalVariables": [],
  "Conditions": [],
  "Actions": [
    {
      "ElementType": 4,
      "Actions": [
        {
          "ElementType": 1,
          "If": [
            {
              "isEnabled": true,
              "function": {
                "ParamType": 1,
                "parameters": [
                  {
                    "ParamType": 1,
                    "parameters": [
                      {
                        "ParamType": 1,
                        "parameters": [],
                        "value": "GetEnumUnit"
                      }
                    ],
                    "value": "GetOwningPlayer"
                  },
                  {
                    "ParamType": 2,
                    "value": "OperatorEqualENE"
                  },
                  {
                    "ParamType": 1,
                    "parameters": [],
                    "value": "GetTriggerPlayer"
                  }
                ],
                "value": "OperatorComparePlayer"
              }
            }
          ],
          "Then": [
            {
              "isEnabled": true,
              "function": {
                "ParamType": 1,
                "parameters": [
                  {
                    "ParamType": 1,
                    "parameters": [],
                    "value": "GetEnumUnit"
                  },
                  {
                    "ParamType": 5,
                    "value": "100"
                  }
                ],
                "value": "SetUnitLifePercentBJ"
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
                    "value": "GetEnumUnit"
                  },
                  {
                    "ParamType": 5,
                    "value": "100"
                  }
                ],
                "value": "SetUnitManaPercentBJ"
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
                    "value": "GetEnumUnit"
                  }
                ],
                "value": "UnitResetCooldown"
              }
            }
          ],
          "Else": [],
          "isEnabled": true,
          "function": {
            "ParamType": 1,
            "parameters": [],
            "value": "IfThenElseMultiple"
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
                "ParamType": 1,
                "parameters": [],
                "value": "GetPlayableMapRect"
              }
            ],
            "value": "GetUnitsInRectAll"
          }
        ],
        "value": "ForGroupMultiple"
      }
    }
  ]
}