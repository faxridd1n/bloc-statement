import 'package:flutter/material.dart';
import 'package:u_rent_demo/src//feature/main_view/search_page/components/utils/lists.dart';

//   //nb=


searchFieldSubmitted(ValueNotifier<ValueRefresh> valueRefresh) {
 
  valueRefresh.value.foundCars.clear();
  valueRefresh.value.isExist = false;
  if (valueRefresh.value.searchCarCtr.text != '') {
    if (!valueRefresh.value.searchedCarsHistory.contains(valueRefresh.value.searchCarCtr.text)) {
      valueRefresh.value.searchedCarsHistory.add(valueRefresh.value.searchCarCtr.text);
    }
    for (var e in cars) {
      if (e.toLowerCase().contains(
            valueRefresh.value.searchCarCtr.text.toLowerCase(),
          )) {
        valueRefresh.value.isExist = true;
        if (!valueRefresh.value.foundCars.contains(e)) {
          valueRefresh.value.foundCars.add(e);
        }
      }
    }
  }
}
