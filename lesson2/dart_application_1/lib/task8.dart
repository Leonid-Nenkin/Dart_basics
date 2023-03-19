// Создайте класс User, у которого есть поле email. 
//Реализуйте два наследника данного класса AdminUser и GeneralUser.
// Реализуйте mixin над классом User, у которого будет метод getMailSystem,
// который возвращает значение из email, которое находится после @. 
//Например, если email пользователя user@mail.ru, то данный метод вернёт mail.ru.
// Используйте данный миксин на AdminUser. 

//Далее реализуйте класс UserManager<T extends User>, 
//у которого будет храниться список пользователей и будут методы добавления или удаления их.
// Также в UserManager реализуйте метод, который выведет почту всех пользователей, 
//однако если пользователь admin, будет выведено значение после @. 
//Проверьте реализованные методы на практике.

class User {
  String email;

  User (this.email);
}

class AdminUser extends User with getMailSystem{
  AdminUser (String email) : super(email);
  
}

class GeneralUser extends User{
  GeneralUser (String email) : super(email);
}

mixin getMailSystem on User {
  @override
  get email {
    String atSign = "@";
    final startIndex = super.email.indexOf(atSign)+1;
    final endIndex = super.email.length;
    return super.email.substring(startIndex, endIndex);
  }  
}

class UserManager<T extends User> {
  List<User> users = [];
  UserManager(this.users);

  void addUser (User user) {
    users.add(user);
  }

  void removeUser (int index) {
    print("user ${users[index].email} was deleted");
    users.removeAt(index);
  }

  void printEmails() {
    users.forEach((element) { print(element.email); });
  }
}


void runner() {
  AdminUser admin = AdminUser("user@mail.ru");
  print(admin.email);

  User firstUser = User("alex@mail.ru");
  User secondtUser = User("john@mail.ru");

  UserManager manager = UserManager([firstUser]);
  manager.addUser(secondtUser);
  manager.printEmails();

  manager.removeUser(1);
  manager.addUser(admin);

  manager.printEmails();
}
