{
  "Id": 50331658,
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
            "value": "300.00"
          }
        ],
        "value": "TriggerRegisterTimerEventPeriodic"
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
            "ParamType": 3,
            "VariableId": 100663371,
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
            "parameters": [
              {
                "ParamType": 1,
                "parameters": [
                  {
                    "ParamType": 1,
                    "parameters": [
                      {
                        "ParamType": 2,
                        "value": "Player08"
                      },
                      {
                        "ParamType": 2,
                        "value": "PlayerStateGold"
                      }
                    ],
                    "value": "GetPlayerState"
                  }
                ],
                "value": "I2S"
              },
              {
                "ParamType": 5,
                "value": " golds from Undead Reinforcement has been split to all of his allied heroes"
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
            "ParamType": 3,
            "VariableId": 100663370,
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
            "parameters": [
              {
                "ParamType": 1,
                "parameters": [
                  {
                    "ParamType": 1,
                    "parameters": [
                      {
                        "ParamType": 2,
                        "value": "Player09"
                      },
                      {
                        "ParamType": 2,
                        "value": "PlayerStateGold"
                      }
                    ],
                    "value": "GetPlayerState"
                  }
                ],
                "value": "I2S"
              },
              {
                "ParamType": 5,
                "value": " golds from Elven Reinforcement has been split to all of his allies heroes"
              }
            ],
            "value": "OperatorString"
          }
        ],
        "value": "DisplayTextToForce"
      }
    },
    {
      "ElementType": 5,
      "Actions": [
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
                    "parameters": [
                      {
                        "ParamType": 2,
                        "value": "Player08"
                      },
                      {
                        "ParamType": 2,
                        "value": "PlayerStateGold"
                      }
                    ],
                    "value": "GetPlayerState"
                  },
                  {
                    "ParamType": 2,
                    "value": "OperatorDivide"
                  },
                  {
                    "ParamType": 1,
                    "parameters": [
                      {
                        "ParamType": 3,
                        "VariableId": 100663371,
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
                    "value": "CountPlayersInForceBJ"
                  }
                ],
                "value": "OperatorInt"
              },
              {
                "ParamType": 1,
                "parameters": [],
                "value": "GetEnumPlayer"
              },
              {
                "ParamType": 2,
                "value": "PlayerStateGold"
              }
            ],
            "value": "AdjustPlayerStateBJ"
          }
        }
      ],
      "isEnabled": true,
      "function": {
        "ParamType": 1,
        "parameters": [
          {
            "ParamType": 3,
            "VariableId": 100663371,
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
        "value": "ForForceMultiple"
      }
    },
    {
      "ElementType": 5,
      "Actions": [
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
                    "parameters": [
                      {
                        "ParamType": 2,
                        "value": "Player09"
                      },
                      {
                        "ParamType": 2,
                        "value": "PlayerStateGold"
                      }
                    ],
                    "value": "GetPlayerState"
                  },
                  {
                    "ParamType": 2,
                    "value": "OperatorDivide"
                  },
                  {
                    "ParamType": 1,
                    "parameters": [
                      {
                        "ParamType": 3,
                        "VariableId": 100663370,
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
                    "value": "CountPlayersInForceBJ"
                  }
                ],
                "value": "OperatorInt"
              },
              {
                "ParamType": 1,
                "parameters": [],
                "value": "GetEnumPlayer"
              },
              {
                "ParamType": 2,
                "value": "PlayerStateGold"
              }
            ],
            "value": "AdjustPlayerStateBJ"
          }
        }
      ],
      "isEnabled": true,
      "function": {
        "ParamType": 1,
        "parameters": [
          {
            "ParamType": 3,
            "VariableId": 100663370,
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
        "value": "ForForceMultiple"
      }
    },
    {
      "isEnabled": true,
      "function": {
        "ParamType": 1,
        "parameters": [
          {
            "ParamType": 2,
            "value": "Player08"
          },
          {
            "ParamType": 2,
            "value": "PlayerStateGold"
          },
          {
            "ParamType": 5,
            "value": "0"
          }
        ],
        "value": "SetPlayerState"
      }
    },
    {
      "isEnabled": true,
      "function": {
        "ParamType": 1,
        "parameters": [
          {
            "ParamType": 2,
            "value": "Player09"
          },
          {
            "ParamType": 2,
            "value": "PlayerStateGold"
          },
          {
            "ParamType": 5,
            "value": "0"
          }
        ],
        "value": "SetPlayerState"
      }
    }
  ]
}