{
  "Id": 50331737,
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
            "value": "A04G"
          }
        ],
        "value": "OperatorCompareAbilityId"
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
            "value": "GetTriggerUnit"
          },
          {
            "ParamType": 1,
            "parameters": [],
            "value": "GetSpellTargetUnit"
          },
          {
            "ParamType": 1,
            "parameters": [
              {
                "ParamType": 5,
                "value": "0.16"
              },
              {
                "ParamType": 2,
                "value": "OperatorMultiply"
              },
              {
                "ParamType": 1,
                "parameters": [
                  {
                    "ParamType": 2,
                    "value": "UnitStateMaxLife"
                  },
                  {
                    "ParamType": 1,
                    "parameters": [],
                    "value": "GetTriggerUnit"
                  }
                ],
                "value": "GetUnitStateSwap"
              }
            ],
            "value": "OperatorReal"
          },
          {
            "ParamType": 2,
            "value": "AttackTypeChaos"
          },
          {
            "ParamType": 2,
            "value": "DamageTypeNormal"
          }
        ],
        "value": "UnitDamageTargetBJ"
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
            "value": "GetTriggerUnit"
          },
          {
            "ParamType": 1,
            "parameters": [
              {
                "ParamType": 1,
                "parameters": [
                  {
                    "ParamType": 2,
                    "value": "UnitStateLife"
                  },
                  {
                    "ParamType": 1,
                    "parameters": [],
                    "value": "GetTriggerUnit"
                  }
                ],
                "value": "GetUnitStateSwap"
              },
              {
                "ParamType": 2,
                "value": "OperatorSubtract"
              },
              {
                "ParamType": 1,
                "parameters": [
                  {
                    "ParamType": 5,
                    "value": "0.16"
                  },
                  {
                    "ParamType": 2,
                    "value": "OperatorMultiply"
                  },
                  {
                    "ParamType": 1,
                    "parameters": [
                      {
                        "ParamType": 2,
                        "value": "UnitStateMaxLife"
                      },
                      {
                        "ParamType": 1,
                        "parameters": [],
                        "value": "GetTriggerUnit"
                      }
                    ],
                    "value": "GetUnitStateSwap"
                  }
                ],
                "value": "OperatorReal"
              }
            ],
            "value": "OperatorReal"
          }
        ],
        "value": "SetUnitLifeBJ"
      }
    }
  ]
}