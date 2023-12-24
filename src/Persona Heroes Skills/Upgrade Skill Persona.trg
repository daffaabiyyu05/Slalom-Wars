{
  "Id": 50331735,
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
            "value": "R000"
          }
        ],
        "value": "OperatorCompareTechCode"
      }
    }
  ],
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
                "value": "A04F"
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
        },
        {
          "isEnabled": true,
          "function": {
            "ParamType": 1,
            "parameters": [
              {
                "ParamType": 5,
                "value": "A04G"
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
        },
        {
          "isEnabled": true,
          "function": {
            "ParamType": 1,
            "parameters": [
              {
                "ParamType": 5,
                "value": "A04P"
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
        },
        {
          "isEnabled": true,
          "function": {
            "ParamType": 1,
            "parameters": [
              {
                "ParamType": 5,
                "value": "A04Q"
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
        },
        {
          "isEnabled": true,
          "function": {
            "ParamType": 1,
            "parameters": [
              {
                "ParamType": 5,
                "value": "A052"
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
                        "value": "GetFilterUnit"
                      },
                      {
                        "ParamType": 2,
                        "value": "UnitTypeHero"
                      }
                    ],
                    "value": "IsUnitType"
                  },
                  {
                    "ParamType": 2,
                    "value": "OperatorEqualENE"
                  },
                  {
                    "ParamType": 5,
                    "value": "true"
                  }
                ],
                "value": "OperatorCompareBoolean"
              }
            ],
            "value": "GetUnitsOfPlayerMatching"
          }
        ],
        "value": "ForGroupMultiple"
      }
    }
  ]
}