# Simplify Gmail

Use [`nativefier`][nativefier] to create a Gmail Electron app bundled with
[Simplify][simplify].

To install:

```bash
$ git clone https://github.com/frm/simplify-gmail.git

$ cd simplify-gmail

$ ./build
```

This assumes your platform is macOS but should be trivial to change to Linux or
Windows.

You can tweak the options by changing the [`overrides/settings.js`][settings]
file.

This is a modified version of [@davidguttman][davidguttman]'s repo.

[nativefier]: https://github.com/jiahaog/nativefier
[simplify]: https://simpli.fyi
[settings]: https://github.com/frm/simplify-gmail/blob/master/overrides/settings.js
[davidguttman]: https://github.com/davidguttman
