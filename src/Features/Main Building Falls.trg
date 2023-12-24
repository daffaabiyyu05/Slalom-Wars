{
  "Id": 50331672,
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
            "value": "PlayerUnitEventDeath"
          }
        ],
        "value": "TriggerRegisterAnyUnitEventBJ"
      }
    }
  ],
  "LocalVariables": [],
  "Conditions": [],
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
                  }
                ],
                "value": "GetUnitTypeId"
              },
              {
                "ParamType": 2,
                "value": "OperatorEqualENE"
              },
              {
                "ParamType": 5,
                "value": "h00G"
              }
            ],
            "value": "OperatorCompareUnitCode"
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
                "ParamType": 2,
                "value": "PauseUnpauseOptionPause"
              }
            ],
            "value": "PauseAllUnitsBJ"
          }
        },
        {
          "ElementType": 4,
          "Actions": [
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
                    "ParamType": 2,
                    "value": "InvulnerabilityInvulnerable"
                  }
                ],
                "value": "SetUnitInvulnerable"
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
                "ParamType": 5,
                "value": "Sentinel Victory!"
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
                "ParamType": 5,
                "value": "10.00"
              }
            ],
            "value": "TriggerSleepAction"
          }
        },
        {
          "isEnabled": true,
          "function": {
            "ParamType": 1,
            "parameters": [
              {
                "ParamType": 2,
                "value": "Player00"
              },
              {
                "ParamType": 2,
                "value": "UseSkipOptionUse"
              },
              {
                "ParamType": 2,
                "value": "UseSkipOptionUse"
              }
            ],
            "value": "CustomVictoryBJ"
          }
        },
        {
          "isEnabled": true,
          "function": {
            "ParamType": 1,
            "parameters": [
              {
                "ParamType": 2,
                "value": "Player01"
              },
              {
                "ParamType": 2,
                "value": "UseSkipOptionUse"
              },
              {
                "ParamType": 2,
                "value": "UseSkipOptionUse"
              }
            ],
            "value": "CustomVictoryBJ"
          }
        },
        {
          "isEnabled": true,
          "function": {
            "ParamType": 1,
            "parameters": [
              {
                "ParamType": 2,
                "value": "Player03"
              },
              {
                "ParamType": 2,
                "value": "UseSkipOptionUse"
              },
              {
                "ParamType": 2,
                "value": "UseSkipOptionUse"
              }
            ],
            "value": "CustomVictoryBJ"
          }
        },
        {
          "isEnabled": true,
          "function": {
            "ParamType": 1,
            "parameters": [
              {
                "ParamType": 2,
                "value": "Player10"
              },
              {
                "ParamType": 2,
                "value": "UseSkipOptionUse"
              },
              {
                "ParamType": 2,
                "value": "UseSkipOptionUse"
              }
            ],
            "value": "CustomVictoryBJ"
          }
        },
        {
          "isEnabled": true,
          "function": {
            "ParamType": 1,
            "parameters": [
              {
                "ParamType": 2,
                "value": "Player13"
              },
              {
                "ParamType": 2,
                "value": "UseSkipOptionUse"
              },
              {
                "ParamType": 2,
                "value": "UseSkipOptionUse"
              }
            ],
            "value": "CustomVictoryBJ"
          }
        },
        {
          "isEnabled": true,
          "function": {
            "ParamType": 1,
            "parameters": [
              {
                "ParamType": 2,
                "value": "Player14"
              },
              {
                "ParamType": 2,
                "value": "UseSkipOptionUse"
              },
              {
                "ParamType": 2,
                "value": "UseSkipOptionUse"
              }
            ],
            "value": "CustomVictoryBJ"
          }
        },
        {
          "isEnabled": true,
          "function": {
            "ParamType": 1,
            "parameters": [
              {
                "ParamType": 2,
                "value": "Player04"
              },
              {
                "ParamType": 5,
                "value": "Defeat!"
              }
            ],
            "value": "CustomDefeatBJ"
          }
        },
        {
          "isEnabled": true,
          "function": {
            "ParamType": 1,
            "parameters": [
              {
                "ParamType": 2,
                "value": "Player05"
              },
              {
                "ParamType": 5,
                "value": "Defeat!"
              }
            ],
            "value": "CustomDefeatBJ"
          }
        },
        {
          "isEnabled": true,
          "function": {
            "ParamType": 1,
            "parameters": [
              {
                "ParamType": 2,
                "value": "Player07"
              },
              {
                "ParamType": 5,
                "value": "Defeat!"
              }
            ],
            "value": "CustomDefeatBJ"
          }
        },
        {
          "isEnabled": true,
          "function": {
            "ParamType": 1,
            "parameters": [
              {
                "ParamType": 2,
                "value": "Player11"
              },
              {
                "ParamType": 5,
                "value": "Defeat!"
              }
            ],
            "value": "CustomDefeatBJ"
          }
        },
        {
          "isEnabled": true,
          "function": {
            "ParamType": 1,
            "parameters": [
              {
                "ParamType": 2,
                "value": "Player12"
              },
              {
                "ParamType": 5,
                "value": "Defeat!"
              }
            ],
            "value": "CustomDefeatBJ"
          }
        },
        {
          "isEnabled": true,
          "function": {
            "ParamType": 1,
            "parameters": [
              {
                "ParamType": 2,
                "value": "Player15"
              },
              {
                "ParamType": 5,
                "value": "Defeat!"
              }
            ],
            "value": "CustomDefeatBJ"
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
    },
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
                  }
                ],
                "value": "GetUnitTypeId"
              },
              {
                "ParamType": 2,
                "value": "OperatorEqualENE"
              },
              {
                "ParamType": 5,
                "value": "h00F"
              }
            ],
            "value": "OperatorCompareUnitCode"
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
                "ParamType": 2,
                "value": "PauseUnpauseOptionPause"
              }
            ],
            "value": "PauseAllUnitsBJ"
          }
        },
        {
          "ElementType": 4,
          "Actions": [
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
                    "ParamType": 2,
                    "value": "InvulnerabilityInvulnerable"
                  }
                ],
                "value": "SetUnitInvulnerable"
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
                "ParamType": 5,
                "value": "Scourge Victory!"
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
                "ParamType": 5,
                "value": "10.00"
              }
            ],
            "value": "TriggerSleepAction"
          }
        },
        {
          "isEnabled": true,
          "function": {
            "ParamType": 1,
            "parameters": [
              {
                "ParamType": 2,
                "value": "Player04"
              },
              {
                "ParamType": 2,
                "value": "UseSkipOptionUse"
              },
              {
                "ParamType": 2,
                "value": "UseSkipOptionUse"
              }
            ],
            "value": "CustomVictoryBJ"
          }
        },
        {
          "isEnabled": true,
          "function": {
            "ParamType": 1,
            "parameters": [
              {
                "ParamType": 2,
                "value": "Player05"
              },
              {
                "ParamType": 2,
                "value": "UseSkipOptionUse"
              },
              {
                "ParamType": 2,
                "value": "UseSkipOptionUse"
              }
            ],
            "value": "CustomVictoryBJ"
          }
        },
        {
          "isEnabled": true,
          "function": {
            "ParamType": 1,
            "parameters": [
              {
                "ParamType": 2,
                "value": "Player07"
              },
              {
                "ParamType": 2,
                "value": "UseSkipOptionUse"
              },
              {
                "ParamType": 2,
                "value": "UseSkipOptionUse"
              }
            ],
            "value": "CustomVictoryBJ"
          }
        },
        {
          "isEnabled": true,
          "function": {
            "ParamType": 1,
            "parameters": [
              {
                "ParamType": 2,
                "value": "Player11"
              },
              {
                "ParamType": 2,
                "value": "UseSkipOptionUse"
              },
              {
                "ParamType": 2,
                "value": "UseSkipOptionUse"
              }
            ],
            "value": "CustomVictoryBJ"
          }
        },
        {
          "isEnabled": true,
          "function": {
            "ParamType": 1,
            "parameters": [
              {
                "ParamType": 2,
                "value": "Player12"
              },
              {
                "ParamType": 2,
                "value": "UseSkipOptionUse"
              },
              {
                "ParamType": 2,
                "value": "UseSkipOptionUse"
              }
            ],
            "value": "CustomVictoryBJ"
          }
        },
        {
          "isEnabled": true,
          "function": {
            "ParamType": 1,
            "parameters": [
              {
                "ParamType": 2,
                "value": "Player15"
              },
              {
                "ParamType": 2,
                "value": "UseSkipOptionUse"
              },
              {
                "ParamType": 2,
                "value": "UseSkipOptionUse"
              }
            ],
            "value": "CustomVictoryBJ"
          }
        },
        {
          "isEnabled": true,
          "function": {
            "ParamType": 1,
            "parameters": [
              {
                "ParamType": 2,
                "value": "Player00"
              },
              {
                "ParamType": 5,
                "value": "Defeat!"
              }
            ],
            "value": "CustomDefeatBJ"
          }
        },
        {
          "isEnabled": true,
          "function": {
            "ParamType": 1,
            "parameters": [
              {
                "ParamType": 2,
                "value": "Player01"
              },
              {
                "ParamType": 5,
                "value": "Defeat!"
              }
            ],
            "value": "CustomDefeatBJ"
          }
        },
        {
          "isEnabled": true,
          "function": {
            "ParamType": 1,
            "parameters": [
              {
                "ParamType": 2,
                "value": "Player03"
              },
              {
                "ParamType": 5,
                "value": "Defeat!"
              }
            ],
            "value": "CustomDefeatBJ"
          }
        },
        {
          "isEnabled": true,
          "function": {
            "ParamType": 1,
            "parameters": [
              {
                "ParamType": 2,
                "value": "Player10"
              },
              {
                "ParamType": 5,
                "value": "Defeat!"
              }
            ],
            "value": "CustomDefeatBJ"
          }
        },
        {
          "isEnabled": true,
          "function": {
            "ParamType": 1,
            "parameters": [
              {
                "ParamType": 2,
                "value": "Player13"
              },
              {
                "ParamType": 5,
                "value": "Defeat!"
              }
            ],
            "value": "CustomDefeatBJ"
          }
        },
        {
          "isEnabled": true,
          "function": {
            "ParamType": 1,
            "parameters": [
              {
                "ParamType": 2,
                "value": "Player14"
              },
              {
                "ParamType": 5,
                "value": "Defeat!"
              }
            ],
            "value": "CustomDefeatBJ"
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