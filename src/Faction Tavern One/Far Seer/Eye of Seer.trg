{
  "Id": 50331718,
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
                "ParamType": 5,
                "value": "A00M"
              },
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
            "value": "GetUnitAbilityLevelSwapped"
          },
          {
            "ParamType": 2,
            "value": "OperatorGreater"
          },
          {
            "ParamType": 5,
            "value": "0"
          }
        ],
        "value": "OperatorCompareInteger"
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
                    "value": "10"
                  }
                ],
                "value": "GetRandomInt"
              },
              {
                "ParamType": 2,
                "value": "OperatorLessEq"
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
                        "value": "A00M"
                      },
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
                    "value": "GetUnitAbilityLevelSwapped"
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
              "isEnabled": true,
              "function": {
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
                        "value": "GetUnitStateSwap"
                      },
                      {
                        "ParamType": 2,
                        "value": "OperatorAdd"
                      },
                      {
                        "ParamType": 5,
                        "value": "25.00"
                      }
                    ],
                    "value": "OperatorReal"
                  }
                ],
                "value": "SetUnitLifeBJ"
              }
            }
          ],
          "Else": [
            {
              "isEnabled": true,
              "function": {
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
                        "value": "GetUnitStateSwap"
                      },
                      {
                        "ParamType": 2,
                        "value": "OperatorAdd"
                      },
                      {
                        "ParamType": 5,
                        "value": "100.00"
                      }
                    ],
                    "value": "OperatorReal"
                  }
                ],
                "value": "SetUnitLifeBJ"
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
                "ParamType": 5,
                "value": "origin"
              },
              {
                "ParamType": 1,
                "parameters": [],
                "value": "GetTriggerUnit"
              },
              {
                "ParamType": 5,
                "value": "Abilities\\Spells\\Orc\\HealingWave\\HealingWaveTarget.mdl"
              }
            ],
            "value": "AddSpecialEffectTargetUnitBJ"
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
                "value": "GetLastCreatedEffectBJ"
              }
            ],
            "value": "DestroyEffectBJ"
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