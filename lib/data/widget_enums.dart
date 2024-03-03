enum AppStackChildViewState {
  NONE,
  COLLAPSED,
  EXPANDED;

  bool get isNotVisible => this == NONE;
  bool get isExpanded => this == EXPANDED;
  bool get isCollapsed => this == COLLAPSED;
}
