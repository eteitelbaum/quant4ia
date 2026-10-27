# Quarto writes multiplex speaker views (*-speaker.html) next to the source
# .qmd, where their links to site_libs/ don't resolve. Move them into
# _site/slides/ alongside the rendered slides. They are gitignored because
# they contain the multiplex secret.
speaker <- list.files("slides", pattern = "-speaker\\.html$")
file.rename(file.path("slides", speaker), file.path("_site", "slides", speaker))
