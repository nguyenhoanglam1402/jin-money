enum AppRoot {
  login,
  home,
  createEarning,
}

extension ScreenMap on AppRoot {
  String get toPath {
    switch (this) {
      case AppRoot.home:
        return "/";
      case AppRoot.login:
        return "/login";
      case AppRoot.createEarning:
        return "/create-earning";
      default:
        return "/";
    }
  }

  String get toName {
    switch (this) {
      case AppRoot.home:
        return "HOME";
      case AppRoot.login:
        return "LOGIN";
      case AppRoot.createEarning:
        return "CREATE EARNING";
      default:
        return "HOME";
    }
  }
}
