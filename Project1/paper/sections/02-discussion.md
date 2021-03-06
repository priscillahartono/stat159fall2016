# Discussion  
## Makefile
Makefile organizes code compilation. It is a list of shell commands or a list of rules that tells the system what to do. Makefile is made through terminal and a text editor. Hence, we should make sure we have these programs installed. To test it out, type 'make' in terminal. 

Makefile files are usually named ‘Makefile.’ I personally use nano as my text editor, hence, the code I would type in terminal to create a Makefile is:

	nano Makefile

Inside the text editor, there is a specific format as follows:

	target: source

	(tab) commands

To execute, again type ‘make.’ This would compile all the codes and run them as a whole.

The advantage of using Makefile is that we can edit multiple files and Makefile helps compile all of them. 


## Git
![Git logo](/Project1/images/git-logo.png)

Git is a version control system. It stores revisions of projects users are working on in a central repository by taking “snapshots," which are pushed to the central repository to enable collaboration and tracking of changes. 

To use Git, we should know some basic codes:

	git add .

	git commit –m “message”

git add adds all the content into the working tree and git commit saves the changes to the central repository.

The advantage of using Git is that we can track our previous changes and collaboration is very easy.


## GitHub
![GitHub logo](/Project1/images/github-logo.png)

GitHub is a Git repository hosting service. It provides a central repository for all files associated with a project where code sharing and publishing is involved.  It allows users to make changes in their local copy then push it into the central repository when they are satisfied with the changes they made.

To push to the central repository, we use:

	git push origin branch

git push permanently saves the changes into GitHub.

GitHub and Git work together a lot, hence the benefit of using them are somewhat similar.


## pandoc
![pandoc logo](/Project1/images/pandoc-logo.png)

pandoc converts one markup format to another. Just to name a few, it can read Markdown, CommonMark, HTML, LaTex, CommonMark, PHP Markdown Extra, etc. and can write Markdown, Word docx, LaTex, Textile, etc. For instance, for this report, we convert from Markdown to HTML using the following code:

	pandoc paper.md –s –o paper.html

The –s represents producing a standalone document and the –o represents the output file.

On a side note, like Makefile, some computers require users to download the pandoc software, in addition to other softwares like LaTex to output text files. After downloading all the required software, we are ready to convert files.

The advantages of using pandoc is that we can have numerous different outputs without having to remake them. I realize that when I want to output a report, it is at times better to output a HTML file and other times better to output a text editor file. pandoc will become handy in situations like these.


## Markdown
![Markdown logo](/Project1/images/markdown-logo.png)

Markdown is a markup language that helps format text. It creates rich text using a plain text editor where users can bold, italicize, put in pictures, links, create tables, etc. A lot of its syntax corresponds to HTML. Below are some syntax that Markdown can do:

Create bullet lists:

* Italicize:

	+ _italic_ 

* Bold:

	+ __bold__  

Create blockquote:

> This is project 1 of STAT 159
> by Priscilla Hartono

Create horizontal rule:

******

The advantage of using Markdown is that no additional software is needed to make changes to the text and the codes are rather simple as compared to other programming languages.

### Resources
The five computational tools mentioned above were used, in addition to Terminal where most of the coding occur. Installation of pandoc and creating a GitHub account was also required to be done. To complete the project, I got a lot of help from Sindhuja, I referred to the notes I took in class and Google helped a lot as well.

### Reflection
For me, downloading the images was the easiest part. I made use of curl and just copied and pasted the url. Meanwhile, the most challenging part would be the very start. Creating the structure of the project was the most time consuming and I got stuck on it multiple times during the lab section and when I was continuing it at home. Pushing the committed file to GitHub took me multiple attempts because I was pushing it from the project folder instead of from the main repo. In the end, I created a new repo since the previous one had to many folders that I rather messed up. Tidying up the final output was also time consuming.

As a whole project, it took me the whole lab section, 2 hours, and I believe another 5 or 6 hours.

