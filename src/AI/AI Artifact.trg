{
  "Id": 50331699,
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
            "value": "PlayerUnitEventHeroPickUpItem"
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
            "parameters": [
              {
                "ParamType": 1,
                "parameters": [],
                "value": "GetManipulatedItem"
              }
            ],
            "value": "GetItemTypeId"
          },
          {
            "ParamType": 2,
            "value": "OperatorEqualENE"
          },
          {
            "ParamType": 5,
            "value": "I01A"
          }
        ],
        "value": "OperatorCompareItemCode"
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
            "value": "GetManipulatedItem"
          }
        ],
        "value": "RemoveItem"
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
                "ParamType": 5,
                "value": "1"
              },
              {
                "ParamType": 2,
                "value": "ItemTypeArtifact"
              }
            ],
            "value": "ChooseRandomItemExBJ"
          },
          {
            "ParamType": 1,
            "parameters": [],
            "value": "GetTriggerUnit"
          }
        ],
        "value": "UnitAddItemByIdSwapped"
      }
    }
  ]
}