# Custom template

Event pannel generator is shipped with built-in template that generally covers most of people's needs. But sometimes, you might want to adapt the output of the generator to cover some special needs you might have. 

## Creating your own custom template
The easiest way to create your own custom template is to duplicate an existing template then modify it.

Templates in SwiftGen are based on [Stencil](https://stencil.fuller.li/), a template engine inspired by Django and Mustache. The syntax of the templates [is explained in Stencil's documentation](https://stencil.fuller.li/en/latest/templates.html).

Additionally to the [tags and filters](https://stencil.fuller.li/en/latest/builtins.html) provided by Stencil, SwiftGen provides some additional ones, documented in the [StencilSwiftKit framework](https://github.com/SwiftGen/StencilSwiftKit).

For VSCode there's an extension [Stencil for Visual Studio Code](https://github.com/stencilproject/vscode-stencil) that adds support for the Stencil template language.
