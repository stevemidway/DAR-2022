Exercise 2: R Markdown
================
DAR Lab
Spring 2022

### What is R Markdown?

Markdown is a versatile, plain text language that can be implemented for
use in many outputs. (For example, You may have also heard of Markup
language—as in html, or *hypertext markup language*, which is the
language used to code websites.) Markdown uses very simple syntax and
commands to create simple documents. A flavor of Markdown has been
developed for R, and it is referred to as R Markdown. R Markdown is a
language that relies heavily on the simplicity of Markdown, but
integrates with R so that code and other features can be built into
documents. Think of R Markdown as the combination of coding in R and
word processing a document all in one file.

### Why R Markdown?

This is a good question, as an R script and other file types could get
you to the same place as an R Markdown document. I would argue that
there are cases when R Markdown does not get you any additional
efficiency; however, there are a lot of implementations of R Markdown
that could make your coding and output better. One general benefit to R
Markdown is not just the formatted text that can be integrated with your
code, but the fact that R Markdown creates the opportunity for a
**dynamic document**. Dynamic documents are those types of documents
that are flexible to change in an integrated way. For example, if you
create an analysis that early on defines `x` to be 5 and then uses `x`
multiple times throughout the document, a change in `x` would mean you
have to make multiple changes throughout the document anytime `x` was
included. This is both inefficient and increases the chance for errors.
A dynamic document is one in which you might define `x` in the
beginning, and if it changes, you simply re-define it and all the
subsequent uses of `x` downstream in the document are also
(automatically or *dynamically*) changed.

### How do I use this wonderful thing called R Markdown?

It’s pretty simple. In RStudio, go to File \> New File and select R
Markdown… This will open up a window to start an R Markdown template.
Add a title to your document and change your name if you want. For the
output format, select HTML or Word. (Note that PDF is also an option;
however, you need a LaTeX compiler on you computer and while this is
possible many of you likely do not have that ready to go.) For now,
let’s go with HTML output.

Next, an R script will open. At the top you will see some text encased
in three dashes. This is called the preamble of the document and
contains information about the document like the title, author, output
format, etc. Other fields may be added to the preamble, but this is a
basic, minimal preamble to get started.

Below the preamble is the R markdown contents. You will see that it can
be largely text with a little code, or largely code with a little text,
or anywhere in between. When you add Markdown text, you just type away
like you would in a text document. Basic formatting, like **bold** and
*italics* are done with simple commands that are either shown in the
template or referenced in the R Markdown Cheat Sheet.

The other main component of a Markdown document is the R code you would
like to integrate. There are two ways to include R code in your
document. The first way is in a code chunk. A code chuck can be added
under the Insert dropdown menu above your script (select R), or by
typing out three accent marks \`\`\` followed by {r} and then closing
the code chunk with three accent marks. Give the three accent marks each
their own line, and think about the space between as being where you can
code in R. Also, after the letter R in the curly braces, you can add
code chunk options. These are too numerous to detail here, but code
chunk options are basically the commands you giving to the code chunk.
For example, the option echo=FALSE will tell R to compile the code and
print the result, but do not actually print the commands in the code
chunk. Also, eval=FALSE tells R not to compile any of the code in that
code chunk. This may sound counterintuitive, but perhaps you want to
show some code that you used, but for whatever reason did not want to
actually run it at that point in the document. See the [R Markdown Cheat
Sheet](https://rstudio.com/wp-content/uploads/2015/02/rmarkdown-cheatsheet.pdf)
for other code chunk options, and also feel free to use Google for a
more exhaustive list.

### Your assignment

Take your work from Assignment 1 and compile it in an R Markdown
document that outputs to HTML. Please upload the html file to Box by
Tuesday, February 8 at 5pm CT for credit.
