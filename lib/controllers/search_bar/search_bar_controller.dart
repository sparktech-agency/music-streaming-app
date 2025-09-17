import 'package:get/get.dart';

class SearchBarController extends GetxController{

  // List of recent searches
var recentSearches  = [
  'Love - Pop',
  'Lovely Movement',
  'Lovely second chance to Cupid',
  'Lovely Coldplay Jakarta 11 November'
].obs;

// Focus state for the search bar
var isFocused = false.obs;

// Add a search term
void addSearchTerm(String term) {
  if (!recentSearches.contains(term)) {
    recentSearches.add(term);
  }
}

  // Remove a search term
  void removeSearchTerm(String term) {
    recentSearches.remove(term);
  }

  // Clear all search terms
  void clearRecentSearches() {
    recentSearches.clear();
  }

  // Update the focus state
  void setFocusState(bool focus) {
    isFocused.value = focus;
  }


}