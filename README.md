# JSP Fundametals

### What are JSP and Servlet?
- Java code that runs on the web server.
- Reads user's actions, normally from HTML form.
- Performs the work.
- Returns an HTML page that is generated dynamically.


### Key Building Blocks
- JSPs and Servlets are key components of the Java Enterprise Edition (Java EE).
- Popular MVC frameworks are actually built on top of JSP and Sevlet such as Spring, JSF and Struts.

---

# State Management with JSP

## 1. Session Tracking with JSP

### JSP session object
- JSP session is created once for user's browser session. Unique for this user.
- Commonly used when you need to keep track of the user's actions.

### Add data to session Object.
_Method signature_
``` java
session.setAtrribute(String name, Object value)
```
_Code example_
``` java
List<String> items = new ArrayList<>();
session.setAtrribute("myToDoList", items);
```

### Retrieve data from session object
_Method Signature_
``` java
Object session.getAtrribute(String name)
```
_Code example_
``` java
List<String> myStuff = new (List<String>) session.getAtrribute("myToDoList");
```

### JSP session - Other useful methods
| Method | Description |
| ------ | ------ |
| isNew() : boolean | Returns true if the session is new |
| getId() : String | Returns the session id |
| invalidate() : void | Invalidates this session and unbinds any object associated with it |
| setMaxInactiveInterval(long mills) : void | Sets the idle time for a session to expire. The value is supplied in milliseconds |
