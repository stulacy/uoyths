# uoyths
A University of York Thesis class for LaTeX

Update to the original University of York LaTeX thesis template 
([https://github.com/ltn100/uoyths](https://github.com/ltn100/uoyths)) to comply
with the latest set of University regulations governing thesis layout (as of May 2016). While it has been designed
specifically for a thesis in the Department of Electronics, I see no reason why it cannot be used by those
in other departments, since such rules are University wide.

The changes made to meet the regulations include:
  - Page number at the bottom of every page
  - Header text and line in grey
  - University name corrected to University of York
  - *Department of* removed from department name
  - Reordering of front matter
  - Reordering of back matter
  - Added Contents, List of Tables, and List of Figures to Contents

In addition to the required changes, several stylistic changes have been implemented, such as:
  - Improved fonts
  - Hyper-ref by default
  - Removed chapter specific bibliographies
  - Simpler compilation
  - Streamlined glossary and nonmenclature
  
# Installation

Simply download the files, and run latex (or *pdflatex* or whatever flavour you prefer) on the .dtx and .ins files, i.e.

```
pdflatex uoyths.dtx
pdflatex uoyths.ins
```

# User Guide

An example thesis markup `example.tex` is produced by the installation procedure, which serves as a template for a basic thesis. To compile this, simply run latex (preferably *pdflatex*) on the file itself. To compile the bibliography use *bibtex*, without specifying any file extension.

To generate a full document with correct references and bibliography, you'll need to follow compilation procedure of latex x2, bibtex, latex x2, as follows:

```
pdflatex example.tex
pdflatex example.tex
bibtex example
pdflatex example.tex
pdflatex example.tex
```

## Makefile

For unix environments, a basic *makefile* has been provided, which runs `pdflatex example.tex`, and also has a `clean` option to remove all the temporary and auxillary files latex generates during the building process. So to generate a full clean copy of the document (which should be run every so often to clean up any crossed references), followed by removing the auxilliary files you can use the following set of instructions:

```
make clean
make
make
bibtex example
make
make
make clean
```
