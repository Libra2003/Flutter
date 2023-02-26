main(){
  var map_name={
    'key1':'value1',
    'key2': 2,
    'key3': 3.0,
    "key4":true
  };
  print(map_name);
  print(map_name["key2"]);
  map_name['Key2']="Zain";
  print(map_name);
  map_name['key2']="Tayyab";
  print(map_name);

  var mapName = Map();
  mapName["Name"]="Zain";
  mapName["YearsOfExperience"]=2;
  mapName["Avg.Rating"]=3.0;
  mapName["WorkfromHome"]=true;

  print(mapName.isNotEmpty);
  print(mapName.isEmpty);
  print(mapName.length);
  print(mapName.keys);
  print(mapName.keys);
  print(mapName.values);
  print(mapName.containsKey("Name"));
  print(mapName.containsValue(false));
  print(mapName.containsValue(2));
  print(mapName);
  print(mapName.remove("WorkfromHome"));
  print(mapName);


}