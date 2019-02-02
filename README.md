# A letter template for pandoc

Write letters in markdown and convert them into good-looking PDF documents using pandoc.

### Features

Accepts a plenthora of arguments via the YAML metadata block, like this:

```yaml
---
from:
  name: Max mustermann
  street: Musterstraße 17
  city-code: 12345
  city: Musterstadt
to:
  name: Erika Musterfrau
  street: Heidestrasse 17
  city-code: 51147
  city: Köln
subject: Lorem ipsum dolor sit amet, consetetur sadipscing elitr
## additional arguments
...
```

The following command compiles the markdown file into PDF using pandoc:

```bash
pandoc --template tfbrief-template.tex -o example/letter.pdf example/letter.md
```

See the provided [letter.md](example/letter.md) and the resulting [PDF document](example/letter.pdf) fpr an example.

### Prerequisites

* A running [Pandoc](https://pandoc.org) installation
* The [koma-script](https://komascript.de) class collection for latex

### Contribution

Please feel free to report any issues using the [issue tracker](https://github.com/jenzopr/pandoc-tbrief-template/issues) or submit [Pull requests](https://github.com/jenzopr/pandoc-tbrief-template/pulls). 

### License

The `tfbrief.cls` class was written by [Thomas Fischer](mailto:fischer@unix-ag.uni-kl.de) and is licensed under the [Creative Commons Attribution-Share Alike 3.0 License](http://creativecommons.org/licenses/by-sa/3.0/).

The `tfbrief-template.tex` latex template is licensed under the MIT license. See [LICSENSE](LICENSE) for more information.
