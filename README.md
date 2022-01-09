# 1. JSP and Servlet

**What are JSP and Servlet?**
- Java code that runs on the web server.
- Reads user's actions, normally from HTML form.
- Performs the work.
- Returns an HTML page that is generated dynamically.


**Key building blocks**
- JSPs and Servlets are key components of the Java Enterprise Edition (Java EE).
- Popular MVC frameworks are actually built on top of JSP and Sevlet such as Spring, JSF and Struts.

---

# 2. JSP Fundametals

**What is a JSP file?**
- An HTML page with some Java code sprinkled in.
- Include dynamic content from Java code.

**Where is the JSP processed?**
- JSP is processed on the server.
- Result of Java code included in HTML returned to browser.

**Where to place JSP file?**
- The JSP file goes in the WebContent(or webapp) folder.
- Must have .jsp extension.

**JSP Scripting Elements**
| Element | Syntax |
| ------ | ------ |
| JSP Expression | **<%=** some java expression **%>** |
| JSP Scriptlet | **<%** some Java code : 1 to many lines **%>** |
| JSP Declaration | **<%!** variable or method declaration **%>** |
  
  
  
## 2.1. JSP Expressions
- Compute an expression.
- Result is included in HTML returned to browser.  
  
_Code example_
```java
<%= new String("Hello World").toUpperCase() %> // HELLO WORLD
<%= 25 * 4 %> // 100
<%= 75 < 69 %> // false

```
## 2.2. JSP Scriptlets
- Insert 1 to many lines of Java code.
- To include content in the page use: **out.println(...)**
- Minimize the amount of scriptlet code in a JSP.
- Avoid dumping thousands of lines of code in a JSP.
- Refactor this into a separate Java class. In other words, make use of MVC model.
  
_Code example_
```java
<%
  for (int i = 1; i <= 3; i++)
    out.println("<br />Hello World! - " + i);
%>
```
## 2.3. JSP Declarations
- Declare a method in the JSP page.
- Call the method in the same JSP page.
- Minimize the amount of scriptlet code in a JSP.
- Avoid dumping thousands of lines of code in a JSP.
- Refactor this into a separate Java class. In other words, make use of MVC model.
  
_Code example_
```java
<%!
  String makeItLower(String data) {
    return data.toLowerCase();
  }
%>

Lower case "Hello World": <%= makeItLower("Hello World") %> // hello world
```
## 2.4. JSP Builit-In Server Objects
- Given for free.
- Use them directly in JSP pages.
  
_List of commonly used JSP objects_
| Object | Description |
| ------ | ------ |
| request | Contains HTTP request headers and form data |
| response | Provides HTTP support for sending response |
| out | JspWriter for including content in HTML page |
| session | Unique session for each user of the web application |
| application | Shared data for all users of the web application |

---

# 3. State Management with JSP

## 3.1. Session Tracking with JSP

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
_Method signature_
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

## 3.2. Personalize Content with Cookies

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
