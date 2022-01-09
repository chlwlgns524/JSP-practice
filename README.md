# JSP Fundametals

### What are JSP and Servlet?
- Java code that runs on the web server.
- Reads user's actions, normally from HTML form.
- Performs the work.
- Returns an HTML page that is generated dynamically.


### Key building blocks
- JSPs and Servlets are key components of the Java Enterprise Edition (Java EE).
- Popular MVC frameworks are actually built on top of JSP and Sevlet such as Spring, JSF and Struts.

---

# State Management with JSP

## 1. Session Tracking with JSP

### JSP session object
- JSP session is created once for user's browser session. Unique for this user.
- Commonly used when you need to keep track of the user's actions.

### Add data to session object.
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

## 2. Personalize Content with Cookies

### What is the purpose of cookies?
- Personlize a web site for a user.
- Keep track of user preferences.

### What is a cookie?
- Text data exchanged between web browser and server.
- Name / value pair.

### How are cookies passed?
- Browser will only send cookies that match the server's domain name.

### Cookie API - Package
- Cookie class defined in package: javax.servlet.http (Package imported for free in all JSP pages).

### Cookie API - Contructor
``` java 
// Constructs a cookie with the specified name and value
Cookie(String name, String value)
```

### Cookie API - Sending cookies to browser
``` java
<%
  String favLang = request.getParameter("favoriteLanguage");
  
  // Create cookie
  Cookie theCookie = new Cookie("myApp.favoriteLanguage", favLang);
  
  // Set life span, which is total number of seconds
  theCookie.setMaxAge(60 * 60 * 24 * 365);
  
  // Send cookie to browser
  response.addCookie(theCookie);
%>
```

### Cookie API - Reading cookies from the browser
``` java
<%
  String favLang = "Java";
  
  Cookie[] theCookies = request.getCookies();
  
  if (theCookies != null) {
    for (Cookie tempCookie : theCookies) {
      if ("myApp.favoriteLanguage".equals(tempCookie.getName())) {
        favLang = tempCookie.getValue();
        break;
      }
    }
  }
%>
```
