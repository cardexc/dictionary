enum LoggedThrough { apple, google, mail, empty }

extension LoggedThroughEx on LoggedThrough {
  String name() {
    switch (this) {
      case LoggedThrough.google:
        {
          return "google";
        }
      case LoggedThrough.apple:
        {
          return "apple";
        }

      case LoggedThrough.mail:
        {
          return "mail";
        }
      case LoggedThrough.empty:
        {
          return "empty";
        }
    }
  }
}

extension LoggedThroughExString on String {
  LoggedThrough loggedThrough() {
    switch (this) {
      case "google":
        {
          return LoggedThrough.google;
        }
      case "apple":
        {
          return LoggedThrough.apple;
        }

      case "mail":
        {
          return LoggedThrough.mail;
        }
      default:
        {
          return LoggedThrough.empty;
        }
    }
  }
}
