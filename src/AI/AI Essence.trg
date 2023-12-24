{
  "Id": 50331772,
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
            "value": "I01I"
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
                "value": "8"
              },
              {
                "ParamType": 2,
                "value": "ItemTypePurchasable"
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