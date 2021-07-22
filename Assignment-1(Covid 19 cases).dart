void main(){
var Maharashtra = {'Confirmed':7518,'Active':19,'Recovered':7370,'Deceased':4};
var punjab = {'Confirmed':598455,'Active':399,'Recovered':581312,'Deceased':16244};
var Lakshadweep = {'Confirmed':10092,'Active':19,'Recovered':7370,'Deceased':453};
var Mizoram = {'Confirmed':72358,'Active':23,'Recovered':3250,'Deceased':43};
var Ladakh = {'Confirmed':343,'Active':519,'Recovered':2470,'Deceased':82};
var Sikkim = {'Confirmed':2378,'Active':429,'Recovered':9370,'Deceased':653};
var Nagaland = {'Confirmed':8438,'Active':789,'Recovered':7270,'Deceased':32};  
var Goa = {'Confirmed':5832,'Active':84,'Recovered':3874,'Deceased':325};
var Assam = {'Confirmed':3828,'Active':73,'Recovered':6282,'Deceased':348};


var states={"Maharashtra":Maharashtra,"punjab":punjab,"Lakshadweep":Lakshadweep,"Mizoram":Mizoram,"Ladakh":Ladakh,"Sikkim":Sikkim,"Nagaland":Nagaland,"Goa":Goa,"Assam":Assam};
var states_keys = states.keys.toList();
var states_values = states.values.toList();

// Select any field according to which 
print("Comparable field options you can select : \n  0 = Confirmed \n  1 = Active \n  2 = Recovered \n  3 = Deceased \n ");
var comparable_field = 1;

// Sorting
print("Sorting Data according to comparable field you selected = ${comparable_field} which is '${states.values.toList()[0].keys.toList()[comparable_field]}' Cases\n");
for(int i=0; i<states.length; i++){
  for(int j=0; j<states.length; j++){
    if (states_values[i].values.toList()[comparable_field] > states_values[j].values.toList()[comparable_field]){
      var temp = states_values[i];
      states_values[i] = states_values[j];
      states_values[j] = temp;

      var temp2 = states_keys[i];
      states_keys[i] = states_keys[j];
      states_keys[j] = temp2;
    }
  }
}

// Printing Data After Sorting
print("=========Printing Data After Sorting=========");
for(int i=0; i<states.length; i++){
  print("\n${states_keys[i]} =>");

  for(int j=0; j<states_values[i].keys.toList().length; j++){
    print("\t${states_values[i].keys.toList()[j]} : ${states_values[i].values.toList()[j]}");
  }
}

}