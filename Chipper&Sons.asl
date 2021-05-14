state("Chipper&Sons") {
  int area : "Chipper&Sons.exe", 0xAC9AC, 0x1F0;
}
start {
  if(current.area == 4 && old.area != 4) {
    return true;
  }
}
isLoading {
  if(current.area == -1) {
    return true;
  }
  else {
    return false;
  }
}