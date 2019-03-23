//third level must have the string "deep"
//fourth level must have the word "deeper"
//fifth level must have the word "deepest"
let myNestedArray = [
  ['mutate', 1327.98, 'splice', 'slice', 'push', 
  	["deep", "array", 
  		["deeper", 5, true, 
  			["grapes", "deepest"]
  		]
  	]
  ]
];

console.log(myNestedArray[0][5][0]);

let nestedArray = [ // top, or first level - the outer most array
  ['deep'], // an array within an array, 2 levels of depth
  [
    ['deeper'], ['deeper'] // 2 arrays nested 3 levels deep
  ],
  [
    [
      ['deepest'], ['deepest'] // 2 arrays nested 4 levels deep
    ],
    [
      [
        ['deepest-est?'] // an array nested 5 levels deep
      ]
    ]
  ]
];

console.log(nestedArray[1][0][0]);