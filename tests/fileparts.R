###
### FILEPARTS.R
###

test.fileparts <- function(input, expected) {
    identical(matlab::fileparts(input), expected)
}

ext <- ".ext"
gz <- ".gz"
file.without.ext <- "myfile"
file.with.ext <- paste(file.without.ext, ext, sep = "")
file.with.ext.gz <- paste(file.with.ext, gz, sep = "")
hidden.file <- ".profile"
user.name <- "luser"
abs.dir <- paste("", "home", user.name, sep = "/")
rel.cur.dir <- "."
rel.parent.dir <- ".."
tilde.dir <- "~"
tilde.user.dir <- paste(tilde.dir, user.name, sep = "")

abs.dir.file.with.ext <- paste(abs.dir, file.with.ext, sep = "/")
abs.dir.file.with.ext.gz <- paste(abs.dir, file.with.ext.gz, sep = "/")
abs.dir.file.without.ext <- paste(abs.dir, file.without.ext, sep = "/")
abs.dir.hidden.file <- paste(abs.dir, hidden.file, sep = "/")
abs.dir.trailing.slash <- paste(abs.dir, "", sep = "/")
abs.rel.cur.dir <- paste(abs.dir, rel.cur.dir, sep = "/")
abs.rel.parent.dir <- paste(abs.dir, rel.parent.dir, sep = "/")
rel.cur.dir.file.with.ext <- paste(rel.cur.dir, file.with.ext, sep = "/")
rel.cur.dir.file.without.ext <- paste(rel.cur.dir, file.without.ext, sep = "/")
rel.cur.dir.hidden.file <- paste(rel.cur.dir, hidden.file, sep = "/")
rel.cur.dir.trailing.slash <- paste(rel.cur.dir, "", sep = "/")
tilde.dir.trailing.slash <- paste(tilde.dir, "", sep = "/")
tilde.user.dir.trailing.slash <- paste(tilde.user.dir, "", sep = "/")


## 'myfile.ext'
test.fileparts(file.with.ext,
               list(pathstr = "",
                    name    = file.without.ext,
                    ext     = ext,
                    versn   = ""))

## '/home/luser/myfile.ext'
test.fileparts(abs.dir.file.with.ext,
               list(pathstr = abs.dir,
                    name    = file.without.ext,
                    ext     = ext,
                    versn   = ""))

## '/home/luser/myfile.ext.gz'
test.fileparts(abs.dir.file.with.ext.gz,
               list(pathstr = abs.dir,
                    name    = file.with.ext,
                    ext     = gz,
                    versn   = ""))

## '/home/luser/myfile'
test.fileparts(abs.dir.file.without.ext,
               list(pathstr = abs.dir,
                    name    = file.without.ext,
                    ext     = "",
                    versn   = ""))

## '/home/luser/.profile'
test.fileparts(abs.dir.hidden.file,
               list(pathstr = abs.dir,
                    name    = character(0),
                    ext     = hidden.file,
                    versn   = ""))

## '/home/luser'
test.fileparts(abs.dir,
               list(pathstr = dirname(abs.dir),
                    name    = basename(abs.dir),
                    ext     = "",
                    versn   = ""))

## '/home/luser/'
test.fileparts(abs.dir.trailing.slash,
               list(pathstr = abs.dir,
                    name    = character(0),
                    ext     = "",
                    versn   = ""))

## './myfile.ext'
test.fileparts(rel.cur.dir.file.with.ext,
               list(pathstr = rel.cur.dir,
                    name    = file.without.ext,
                    ext     = ext,
                    versn   = ""))

## './myfile'
test.fileparts(rel.cur.dir.file.without.ext,
               list(pathstr = rel.cur.dir,
                    name    = file.without.ext,
                    ext     = "",
                    versn   = ""))

## './.profile'
test.fileparts(rel.cur.dir.hidden.file,
               list(pathstr = rel.cur.dir,
                    name    = character(0),
                    ext     = hidden.file,
                    versn   = ""))

## '.'
test.fileparts(rel.cur.dir,
               list(pathstr = "",
                    name    = character(0),
                    ext     = ".",
                    versn   = ""))

## '..'
test.fileparts(rel.parent.dir,
               list(pathstr = "",
                    name    = ".",
                    ext     = ".",
                    versn   = ""))

## './'
test.fileparts(rel.cur.dir.trailing.slash,
               list(pathstr = rel.cur.dir,
                    name    = character(0),
                    ext     = "",
                    versn   = ""))

## "~"
test.fileparts(tilde.dir,
               list(pathstr = "",
                    name    = tilde.dir,
                    ext     = "",
                    versn   = ""))

## "~/"
test.fileparts(tilde.dir.trailing.slash,
               list(pathstr = tilde.dir,
                    name    = character(0),
                    ext     = "",
                    versn   = ""))

## "~luser"
test.fileparts(tilde.user.dir,
               list(pathstr = "",
                    name    = tilde.user.dir,
                    ext     = "",
                    versn   = ""))

## "~luser/"
test.fileparts(tilde.user.dir.trailing.slash,
               list(pathstr = tilde.user.dir,
                    name    = character(0),
                    ext     = "",
                    versn   = ""))
