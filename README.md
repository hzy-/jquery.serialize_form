$.serialize_form
=====================

After being fed up with how the default jQuery serialization worked, I wrote this little (257 bytes minified) plugin to get jQuery working in the format that I want. The largest feature is that it preserves correct formatting of `items[]` recurring form elements, and returns an object instead of an array.

## Usage

### HTML

```html
<form id="my_form">
    <input name="category_name" value="My Category">
    <input name="post[]" value="1">
    <input name="post[]" value="2">
    <input name="post[]" value="3">
</form>
```
### Coffee

```coffee
console.log ($ '#my_form').serialize_form()
```

### Result

![](http://f.cl.ly/items/2a1I2G1t2i3f2W0d3k3i/Screen%20Shot%202012-09-13%20at%206.30.31%20PM.png)

[The jsFiddle of this example can be seen here](http://jsfiddle.net/SUGPc/) 