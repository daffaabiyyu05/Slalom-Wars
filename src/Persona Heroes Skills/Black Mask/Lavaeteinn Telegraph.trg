{
  "Id": 50331742,
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
            "value": "PlayerUnitEventSpellChannel"
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
            "value": "A04Q"
          }
        ],
        "value": "OperatorCompareAbilityId"
      }
    },
    {
      "ElementType": 3,
      "Or": [
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
                "value": "GetUnitLifePercent"
              },
              {
                "ParamType": 2,
                "value": "OperatorGreaterEq"
              },
              {
                "ParamType": 5,
                "value": "30.00"
              }
            ],
            "value": "OperatorCompareReal"
          }
        },
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
                    "value": "B014"
                  }
                ],
                "value": "UnitHasBuffBJ"
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
      "isEnabled": true,
      "function": {
        "ParamType": 1,
        "parameters": [],
        "value": "OrMultiple"
      }
    },
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
            "value": "GetHeroLevel"
          },
          {
            "ParamType": 2,
            "value": "OperatorGreaterEq"
          },
          {
            "ParamType": 5,
            "value": "4"
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
                    "ParamType": 1,
                    "parameters": [],
                    "value": "GetTriggerPlayer"
                  },
                  {
                    "ParamType": 2,
                    "value": "Player02"
                  }
                ],
                "value": "IsPlayerAlly"
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
                        "ParamType": 1,
                        "parameters": [],
                        "value": "GetSpellTargetUnit"
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
                    "parameters": [
                      {
                        "ParamType": 5,
                        "value": "Loki glares at "
                      },
                      {
                        "ParamType": 1,
                        "parameters": [
                          {
                            "ParamType": 1,
                            "parameters": [],
                            "value": "GetSpellTargetUnit"
                          }
                        ],
                        "value": "GetHeroProperName"
                      }
                    ],
                    "value": "OperatorString"
                  },
                  {
                    "ParamType": 1,
                    "parameters": [],
                    "value": "GetTriggerUnit"
                  },
                  {
                    "ParamType": 5,
                    "value": "0.00"
                  },
                  {
                    "ParamType": 5,
                    "value": "10"
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
                    "value": "100"
                  },
                  {
                    "ParamType": 5,
                    "value": "0"
                  }
                ],
                "value": "CreateTextTagUnitBJ"
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
                    "ParamType": 1,
                    "parameters": [
                      {
                        "ParamType": 5,
                        "value": "Loki glares at "
                      },
                      {
                        "ParamType": 1,
                        "parameters": [
                          {
                            "ParamType": 1,
                            "parameters": [],
                            "value": "GetSpellTargetUnit"
                          }
                        ],
                        "value": "GetUnitName"
                      }
                    ],
                    "value": "OperatorString"
                  },
                  {
                    "ParamType": 1,
                    "parameters": [],
                    "value": "GetTriggerUnit"
                  },
                  {
                    "ParamType": 5,
                    "value": "0.00"
                  },
                  {
                    "ParamType": 5,
                    "value": "10"
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
                    "value": "100"
                  },
                  {
                    "ParamType": 5,
                    "value": "0"
                  }
                ],
                "value": "CreateTextTagUnitBJ"
              }
            }
          ],
          "isEnabled": true,
          "function": {
            "ParamType": 1,
            "parameters": [],
            "value": "IfThenElseMultiple"
          }
        }
      ],
      "Else": [
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
                        "value": "GetSpellTargetUnit"
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
                    "parameters": [
                      {
                        "ParamType": 5,
                        "value": "Loki glares at "
                      },
                      {
                        "ParamType": 1,
                        "parameters": [
                          {
                            "ParamType": 1,
                            "parameters": [],
                            "value": "GetSpellTargetUnit"
                          }
                        ],
                        "value": "GetHeroProperName"
                      }
                    ],
                    "value": "OperatorString"
                  },
                  {
                    "ParamType": 1,
                    "parameters": [],
                    "value": "GetTriggerUnit"
                  },
                  {
                    "ParamType": 5,
                    "value": "0.00"
                  },
                  {
                    "ParamType": 5,
                    "value": "10"
                  },
                  {
                    "ParamType": 5,
                    "value": "0.00"
                  },
                  {
                    "ParamType": 5,
                    "value": "100.00"
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
                "value": "CreateTextTagUnitBJ"
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
                    "ParamType": 1,
                    "parameters": [
                      {
                        "ParamType": 5,
                        "value": "Loki glares at "
                      },
                      {
                        "ParamType": 1,
                        "parameters": [
                          {
                            "ParamType": 1,
                            "parameters": [],
                            "value": "GetSpellTargetUnit"
                          }
                        ],
                        "value": "GetUnitName"
                      }
                    ],
                    "value": "OperatorString"
                  },
                  {
                    "ParamType": 1,
                    "parameters": [],
                    "value": "GetTriggerUnit"
                  },
                  {
                    "ParamType": 5,
                    "value": "0.00"
                  },
                  {
                    "ParamType": 5,
                    "value": "10"
                  },
                  {
                    "ParamType": 5,
                    "value": "0.00"
                  },
                  {
                    "ParamType": 5,
                    "value": "100.00"
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
                "value": "CreateTextTagUnitBJ"
              }
            }
          ],
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
            "value": "6.00"
          }
        ],
        "value": "SetTextTagLifespanBJ"
      }
    }
  ]
}