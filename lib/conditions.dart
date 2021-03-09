import 'package:flutter/material.dart';

class Conditions {
final stateName;
Conditions(this.stateName);
void  conditionFn(context)async{
  if(stateName=='Andaman and Nicobar Islands'){
    await  Navigator.pushNamed(context,'andaman');
}
  else if(stateName=='Andhra Pradhesh'){
    await Navigator.pushNamed(context, 'andhra');

  }
  else if(stateName=='Arunachal Pradesh'){
    await Navigator.pushNamed(context, 'arunachal');

  }
  else if(stateName=='Assam'){
    await Navigator.pushNamed(context, 'assam');

  }
  else if(stateName=='Bihar'){
    await Navigator.pushNamed(context, 'bihar');

  }
  else if(stateName=='Chandigarh'){
    await Navigator.pushNamed(context, 'chandigarh');

  }
  else if(stateName=='Chhattisgarh'){
    await Navigator.pushNamed(context, 'chatisgarh');

  }
  else if(stateName=='Dadra and Nagar Haveli'){
    await Navigator.pushNamed(context, 'dadranagar');
  }
  else if(stateName=='Delhi'){
    await Navigator.pushNamed(context, 'delhi');
  }
  else if(stateName=='Goa'){
    await Navigator.pushNamed(context, 'goa');
  }
  else if(stateName=='Gujarat'){
    await Navigator.pushNamed(context, 'gujarat');
  }
  else if(stateName=='Haryana'){
    await Navigator.pushNamed(context, 'haryana');
  }
  else if(stateName=='Himachal Pradesh'){
    await Navigator.pushNamed(context, 'himachal');
  }
  else if(stateName=='Jammu & Kashmir'){
    await Navigator.pushNamed(context, 'jammu');
  }
  else if(stateName=='Jharkhand'){
    await Navigator.pushNamed(context, 'jharkhand');
  }
  else if(stateName=='Karnataka'){
    await Navigator.pushNamed(context, 'karnataka');
  }
  else if(stateName=='Kerala'){
    await Navigator.pushNamed(context, 'kerala');
  }
  else if(stateName=='Ladakh'){
    await Navigator.pushNamed(context, 'ladakh');
  }
  else if(stateName=='Madhya Pradesh'){
    await Navigator.pushNamed(context, 'madhya');
  }
  else if(stateName=='Maharashtra'){
    await Navigator.pushNamed(context, 'maharashtra');
  }
  else if(stateName=='Manipur'){
    await Navigator.pushNamed(context, 'manipur');
  }
  else if(stateName=='Meghalaya'){
    await Navigator.pushNamed(context, 'meghalaya');
  }
  else if(stateName=='Mizoram'){
    await Navigator.pushNamed(context, 'mizoram');
  }
  else if(stateName=='Nagaland'){
    await Navigator.pushNamed(context, 'nagaland');
  }
  else if(stateName=='Odisha'){
    await Navigator.pushNamed(context, 'odisha');
  }
  else if(stateName=='Puducherry'){
    await Navigator.pushNamed(context, 'puducherry');
  }
  else if(stateName=='Punjab'){
    await Navigator.pushNamed(context, 'punjab');
  }
  else if(stateName=='Rajasthan'){
    await Navigator.pushNamed(context, 'rajasthan');
  }
  else if(stateName=='Sikkim'){
    await Navigator.pushNamed(context, 'sikkim');
  }
  else if(stateName=='Tamil Nadu'){
    await Navigator.pushNamed(context, 'tamilnadu');
  }
  else if(stateName=='Telangana'){
    await Navigator.pushNamed(context, 'telangana');
  }
  else if(stateName=='Tripura'){
    await Navigator.pushNamed(context, 'tripura');
  }
  else if(stateName=='Uttarkhand'){
    await Navigator.pushNamed(context, 'uttarkhand');
  }
  else if(stateName=='Uttar pradesh'){
    await Navigator.pushNamed(context, 'uttarp');
  }
  else if(stateName=='West Bengal'){
    await Navigator.pushNamed(context, 'westbengal');
  }

}
}

