{
  "Id": 50331771,
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
            "ParamType": 3,
            "VariableId": 100663532,
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
            "ParamType": 2,
            "value": "LimitOpEqual"
          },
          {
            "ParamType": 5,
            "value": "1.00"
          }
        ],
        "value": "TriggerRegisterVariableEvent"
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
            "parameters": [
              {
                "ParamType": 3,
                "VariableId": 100663535,
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
                "ParamType": 5,
                "value": "I01K"
              }
            ],
            "value": "UnitHasItemOfTypeBJ"
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
                    "ParamType": 5,
                    "value": "1"
                  },
                  {
                    "ParamType": 5,
                    "value": "2"
                  }
                ],
                "value": "GetRandomInt"
              },
              {
                "ParamType": 2,
                "value": "OperatorEqual"
              },
              {
                "ParamType": 5,
                "value": "1"
              }
            ],
            "value": "OperatorCompareInteger"
          }
        }
      ],
      "Then": [
        {
          "ElementType": 9,
          "isEnabled": true,
          "function": {
            "ParamType": 1,
            "parameters": [
              {
                "ParamType": 3,
                "VariableId": 100663296,
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
                    "ParamType": 3,
                    "VariableId": 100663535,
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
                "value": "GetUnitLoc"
              }
            ],
            "value": "SetVariable"
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
                    "ParamType": 3,
                    "VariableId": 100663533,
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
                    "ParamType": 2,
                    "value": "OperatorGreaterEq"
                  },
                  {
                    "ParamType": 5,
                    "value": "200.00"
                  }
                ],
                "value": "OperatorCompareReal"
              }
            }
          ],
          "Then": [
            {
              "ElementType": 9,
              "isEnabled": true,
              "function": {
                "ParamType": 1,
                "parameters": [
                  {
                    "ParamType": 3,
                    "VariableId": 100663533,
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
                        "ParamType": 3,
                        "VariableId": 100663533,
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
                        "ParamType": 2,
                        "value": "OperatorSubtract"
                      },
                      {
                        "ParamType": 5,
                        "value": "200.00"
                      }
                    ],
                    "value": "OperatorReal"
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
                    "value": "Reduced!"
                  },
                  {
                    "ParamType": 3,
                    "VariableId": 100663296,
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
                    "ParamType": 5,
                    "value": "0"
                  },
                  {
                    "ParamType": 5,
                    "value": "10"
                  },
                  {
                    "ParamType": 5,
                    "value": "100"
                  },
                  {
                    "ParamType": 5,
                    "value": "0.00"
                  },
                  {
                    "ParamType": 5,
                    "value": "0.00"
                  },
                  {
                    "ParamType": 5,
                    "value": "0"
                  }
                ],
                "value": "CreateTextTagLocBJ"
              }
            }
          ],
          "Else": [
            {
              "ElementType": 9,
              "isEnabled": true,
              "function": {
                "ParamType": 1,
                "parameters": [
                  {
                    "ParamType": 3,
                    "VariableId": 100663533,
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
                    "ParamType": 5,
                    "value": "0.00"
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
                    "value": "Blocked!"
                  },
                  {
                    "ParamType": 3,
                    "VariableId": 100663296,
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
                    "ParamType": 5,
                    "value": "0"
                  },
                  {
                    "ParamType": 5,
                    "value": "10"
                  },
                  {
                    "ParamType": 5,
                    "value": "100"
                  },
                  {
                    "ParamType": 5,
                    "value": "0.00"
                  },
                  {
                    "ParamType": 5,
                    "value": "0.00"
                  },
                  {
                    "ParamType": 5,
                    "value": "0"
                  }
                ],
                "value": "CreateTextTagLocBJ"
              }
            }
          ],
          "isEnabled": true,
          "function": {
            "ParamType": 1,
            "parameters": [],
            "value": "IfThenElseMultiple"
          }
        },
        {
          "isEnabled": true,
          "function": {
            "ParamType": 1,
            "parameters": [
              {
                "ParamType": 2,
                "value": "ShowHideShow"
              },
              {
                "ParamType": 1,
                "parameters": [],
                "value": "GetLastCreatedTextTag"
              },
              {
                "ParamType": 1,
                "parameters": [],
                "value": "GetPlayersAll"
              }
            ],
            "value": "ShowTextTagForceBJ"
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
                "value": "GetLastCreatedTextTag"
              },
              {
                "ParamType": 5,
                "value": "64"
              },
              {
                "ParamType": 5,
                "value": "90"
              }
            ],
            "value": "SetTextTagVelocityBJ"
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
                "value": "GetLastCreatedTextTag"
              },
              {
                "ParamType": 2,
                "value": "EnableDisableDisable"
              }
            ],
            "value": "SetTextTagPermanentBJ"
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
                "value": "GetLastCreatedTextTag"
              },
              {
                "ParamType": 5,
                "value": "3.00"
              }
            ],
            "value": "SetTextTagFadepointBJ"
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
                "value": "GetLastCreatedTextTag"
              },
              {
                "ParamType": 5,
                "value": "5"
              }
            ],
            "value": "SetTextTagLifespanBJ"
          }
        },
        {
          "isEnabled": true,
          "function": {
            "ParamType": 1,
            "parameters": [
              {
                "ParamType": 5,
                "value": "call RemoveLocation(udg_Temp_Point)"
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
  ]
}