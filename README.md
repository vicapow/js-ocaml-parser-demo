# An experiment in parsing JS ASTs with ocaml

A lot of the source code was copy / paste from the Flow repository.

````sh
js-parser (master) 🤖 ./run
Finished, 43 targets (43 cached) in 00:00:00.
{
  "errors":[],
  "type":"Program",
  "loc":{"source":null,"start":{"line":1,"column":0},"end":{"line":1,"column":18}},
  "range":[0,18],
  "body":[
    {
      "type":"FunctionDeclaration",
      "loc":{"source":null,"start":{"line":1,"column":0},"end":{"line":1,"column":18}},
      "range":[0,18],
      "id":{
        "type":"Identifier",
        "loc":{"source":null,"start":{"line":1,"column":9},"end":{"line":1,"column":12}},
        "range":[9,12],
        "name":"foo",
        "typeAnnotation":null,
        "optional":false
      },
      "params":[],
      "body":{
        "type":"BlockStatement",
        "loc":{"source":null,"start":{"line":1,"column":15},"end":{"line":1,"column":18}},
        "range":[15,18],
        "body":[]
      },
      "async":false,
      "generator":false,
      "predicate":null,
      "expression":false,
      "returnType":null,
      "typeParameters":null
    }
  ],
  "comments":[]
}
````