{
  "Id": 50331711,
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
            "value": "PlayerUnitEventSpellEffect"
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
            "value": "GetSpellAbilityId"
          },
          {
            "ParamType": 2,
            "value": "OperatorEqualENE"
          },
          {
            "ParamType": 5,
            "value": "A03N"
          }
        ],
        "value": "OperatorCompareAbilityId"
      }
    }
  ],
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
                    "value": "GetTriggerUnit"
                  },
                  {
                    "ParamType": 5,
                    "value": "A03N"
                  },
                  {
                    "ParamType": 5,
                    "value": "1"
                  }
                ],
                "value": "BlzGetUnitAbilityCooldown"
              },
              {
                "ParamType": 2,
                "value": "OperatorGreater"
              },
              {
                "ParamType": 5,
                "value": "300.00"
              }
            ],
            "value": "OperatorCompareReal"
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
                "value": "GetTriggerUnit"
              },
              {
                "ParamType": 5,
                "value": "A03N"
              },
              {
                "ParamType": 5,
                "value": "1"
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
                        "value": "GetTriggerUnit"
                      },
                      {
                        "ParamType": 5,
                        "value": "A03N"
                      },
                      {
                        "ParamType": 5,
                        "value": "1"
                      }
                    ],
                    "value": "BlzGetUnitAbilityCooldown"
                  },
                  {
                    "ParamType": 2,
                    "value": "OperatorSubtract"
                  },
                  {
                    "ParamType": 5,
                    "value": "15.00"
                  }
                ],
                "value": "OperatorReal"
              }
            ],
            "value": "BlzSetUnitAbilityCooldown"
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
  ]
}