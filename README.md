```objectscript
zw ##class(IOP.Message.JSONSchema).ImportFromFile("/irisdev/app/random_jsonschema.json","Demo","Demo")
```

```xml
<test>
  <Message>
    <json><![CDATA[
{
"my_list":["toto","titi"],
"post":{"name":"foo"},
"list_of_post":[
    {"name":"bar","selftext":"baz"},
    {"name":"foo","selftext":"foo"}
]
}
]]></json>
  </Message>
</test>
```