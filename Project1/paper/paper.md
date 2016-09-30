Abstract
========

This report is the first project of STAT 159, Reproducible and
Collaborative Statistical Data Science, taught by Professor Gaston
Sanchez in the fall of 2016 at UC Berkeley. STAT 159 focuses on the
collaborative work and the ability to reproduce valuable data.

There will be 4 parts in this report: abstract, introduction,
discussion, and conclusion, where computational tools we have covered in
class will be practiced and explained in some depth. The computational
tools are Makefile, Git, GitHub, pandoc, and Markdown.

Introduction
============

Reproducibility is an ongoing issue today. It is important that a
scientific finding is reproducible, meaning the entire experiment or
study should be able to produce the same results when the same
researcher or other researchers redo it. With the numerous amount of
information we can find today, we cannot trust everything we see. Hence,
having reproducible data is extremely important. A lot of articles on
the web often include how many times the experiment was repeated and how
they produced similar results, therefore proving reproducibility.

The objective of this report is to practice with the computational tools
we have covered in class: bash, Markdown, pandoc, Git, GitHub, Make, and
a text editor (nano). I will firstly give a brief explanation of what
Makefile, Git, GitHub, pandoc, and Markdown does, followed by some
example and last but not least, discuss the roles each tool plays in
reproducing data.

Discussion
==========

### Makefile

Makefile organizes code compilation. It is a list of shell commands or a
list of rules that tells the system what to do. Makefile is made through
terminal and a text editor. Hence, we should make sure we have these
programs installed. To test it out, type 'make' in terminal.

Makefile files are usually named ‘Makefile.’ I personally use nano as my
text editor, hence, the code I would type in terminal to create a
Makefile is:

    nano Makefile

Inside the text editor, there is a specific format as follows:

    target: source

    (tab) commands

To execute, again type ‘make.’ This would compile all the codes are run
them as a whole.

The advantage of using Makefile is that we can edit multiple files and
Makefile helps compile all of them.

### Git

![Git logo](/Project1/images/git-logo.png) Git is a version control
system. It stores revisions of projects users are working on in a
central repository by taking “snapshots.” It also allows users to
collaborate very easily and allows users to track their changes by
committing to these changes and they’ll be stored.

To use Git, we should know some basic codes:

    git add .

    git commit –m “message”

git add adds all the content into the working tree and git commit saves
the changes.

The advantage of using Git is that we can track our previous changes and
collaboration is very easy.

### GitHub

![GitHub logo](sections/Project1/images/github-logo.png) GitHub is a Git
repository hosting service. It provides a central repository for all
files associated with a project where code sharing and publishing is
involved. It allows users to make changes in their local copy then push
it into the central repository when they are satisfied with the changes
they made.

To save the changes made locally to the central repository, we use:

    git push origin branch

git push permanently saves the changes into GitHub.

GitHub and Git work together a lot, hence the benefit of using them are
somewhat similar.

### pandoc

![pandoc logo](/sections/Project1/images/pandoc-logo.png) pandoc
converts one markup format to another. Just to name a few, it can read
Markdown, CommonMark, HTML, LaTex, CommonMark, PHP Markdown Extra, etc.
and can write Markdown, Word docx, LaTex, Textile, etc. For instance,
for this report, we convert from Markdown to HTML using the following
code:

    pandoc paper.md –s –o paper.html

The –s represents producing a standalone document and the –o represents
the output file.

Meanwhile, like Makefile, some computer requires users to download the
pandoc software, in addition to other softwares like LaTex to output
text files. After downloading all the required software, we are ready to
convert files.

The advantages of using pandoc is that we can have numerous different
outputs without having to remake them. I realize that when I want to
output a report, it is at times better to output a HTML file and other
times better to output a text editor file. pandoc will become handy in
situations like this.

### Markdown

![Markdown logo](paper/Project1/images/markdown-logo.png) Markdown is a
markup language that helps format text. It creates rich text using a
plain text editor where users can bold, italicize, put in pictures,
links, create tables, etc. A lot of its syntax corresponds to HTML.
Below are some syntax that Markdown can do:

Create bullet lists:

-   Create 2nd header:

    -   Heading 2
        ---------

-   Italicize:

    -   *italic*
-   Bold:

    -   **bold**

The advantage of using Markdown is that no additional software is needed
to make changes to the text and the codes are rather simple as compared
to other programming languages.

### Resources

I did all the coding in Terminal. But before that, I had to download
pandoc and create a GitHub account.

### Reflection

For me personally, downloading the images was the easiest part. I made
use of curl and just copied and pasted the url. Meanwhile, the most
challenging part would be the very start. Creating the structure of the
project was the most time consuming and I got stuck on it multiple times
during the lab section and when I was continuing it at home. Pushing the
committed file to GitHub took me multiple attempts because I was pushing
it from the project folder instead of from the main repo. In the end, I
created a new repo since the previous one had to many folders that I
actually did not need. Sindhuja definitely helped a lot during the lab
section and I googled a lot too. As a whole project, it took me the
whole lab section, 2 hours, and I believe another 4 to 5 hours at home.

Conclusion
==========

The project, as a whole, definitely made me understand GitHub better. It
allowed me to put together the pieces of the puzzle and create a final
output where each computational tool compliment each other. Before, just
using terminal to move files and copy files did not make sense to me,
but after this project, seeing how everything comes together made me
appreciate the existing tools. Overall, it was a great project that
cleared up a lot of misunderstandings I had.
