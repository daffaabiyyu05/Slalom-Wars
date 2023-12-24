{
  "Id": 50331679,
  "Comment": "",
  "IsScript": false,
  "RunOnMapInit": false,
  "Script": "",
  "Events": [],
  "LocalVariables": [],
  "Conditions": [],
  "Actions": [
    {
      "ElementType": 9,
      "isEnabled": true,
      "function": {
        "ParamType": 1,
        "parameters": [
          {
            "ParamType": 3,
            "VariableId": 100663300,
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
          },
          {
            "ParamType": 1,
            "parameters": [],
            "value": "GetTriggerPlayer"
          }
        ],
        "value": "SetVariable"
      }
    },
    {
      "isEnabled": true,
      "function": {
        "ParamType": 1,
        "parameters": [
          {
            "ParamType": 5,
            "value": "if GetLocalPlayer() == udg_Temp_Player then"
          }
        ],
        "value": "CustomScriptCode"
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
            "value": "List of all players' bounty bonuses :"
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
            "value": "endif"
          }
        ],
        "value": "CustomScriptCode"
      }
    },
    {
      "ElementType": 5,
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
                    "parameters": [],
                    "value": "GetEnumPlayer"
                  },
                  {
                    "ParamType": 2,
                    "value": "OperatorNotEqualENE"
                  },
                  {
                    "ParamType": 2,
                    "value": "Player02"
                  }
                ],
                "value": "OperatorComparePlayer"
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
                    "value": "GetEnumPlayer"
                  },
                  {
                    "ParamType": 2,
                    "value": "OperatorNotEqualENE"
                  },
                  {
                    "ParamType": 2,
                    "value": "Player06"
                  }
                ],
                "value": "OperatorComparePlayer"
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
                    "value": "GetEnumPlayer"
                  },
                  {
                    "ParamType": 2,
                    "value": "OperatorNotEqualENE"
                  },
                  {
                    "ParamType": 2,
                    "value": "Player08"
                  }
                ],
                "value": "OperatorComparePlayer"
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
                    "value": "GetEnumPlayer"
                  },
                  {
                    "ParamType": 2,
                    "value": "OperatorNotEqualENE"
                  },
                  {
                    "ParamType": 2,
                    "value": "Player09"
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
                    "ParamType": 5,
                    "value": "if GetLocalPlayer() == udg_Temp_Player then"
                  }
                ],
                "value": "CustomScriptCode"
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
                    "ParamType": 1,
                    "parameters": [
                      {
                        "ParamType": 1,
                        "parameters": [
                          {
                            "ParamType": 1,
                            "parameters": [
                              {
                                "ParamType": 1,
                                "parameters": [],
                                "value": "GetEnumPlayer"
                              }
                            ],
                            "value": "GetPlayerName"
                          },
                          {
                            "ParamType": 5,
                            "value": "'s current bonus is "
                          }
                        ],
                        "value": "OperatorString"
                      },
                      {
                        "ParamType": 1,
                        "parameters": [
                          {
                            "ParamType": 1,
                            "parameters": [
                              {
                                "ParamType": 3,
                                "VariableId": 100663306,
                                "arrayIndexValues": [
                                  {
                                    "ParamType": 1,
                                    "parameters": [
                                      {
                                        "ParamType": 1,
                                        "parameters": [],
                                        "value": "GetEnumPlayer"
                                      }
                                    ],
                                    "value": "GetConvertedPlayerId"
                                  },
                                  {
                                    "ParamType": 5,
                                    "value": "0"
                                  }
                                ],
                                "value": null
                              }
                            ],
                            "value": "I2S"
                          },
                          {
                            "ParamType": 5,
                            "value": " golds."
                          }
                        ],
                        "value": "OperatorString"
                      }
                    ],
                    "value": "OperatorString"
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
                    "value": "endif"
                  }
                ],
                "value": "CustomScriptCode"
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
            "parameters": [],
            "value": "GetPlayersAll"
          }
        ],
        "value": "ForForceMultiple"
      }
    }
  ]
}