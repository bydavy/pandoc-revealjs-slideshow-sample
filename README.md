# Ready to fork reveal.js slide show

If you like reveal.js and Pandoc, fork this repository and start working on your slides.  
The input is Markdown, output is a reveal.js HTML slide show.

## Installation

```bash
brew install pandoc fswatch
```

## Compile

The output will be in the out directory.

```bash
make
```

## During writing of your slides

Each time you change the slide show and save it to disk it will be recompiled.
You only have to refresh the browser for the change to be picked up.

```bash
make watch
```

## Links

* [Pandoc](https://pandoc.org/)
* [Reveal.js](https://revealjs.com/#/)