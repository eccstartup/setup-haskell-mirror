#Set up a hackage mirror.

##What is this?
A simple way to set up hackage mirror.

##How long it gonna take to run once?
It depends. The first time is really, really slow for me.

##How to use it?
`mkdir` a folder, put this script in `$PATH`, and run it.

##Where did you get this script?
See where I focked from [here](https://gist.github.com/eccstartup/7889417).

##Have you tested it?
Sure.

##Will you use it?
Maybe...

##Any other configurations needed?
Nope, unless you don't have something like `apache2` installed.

##How to setup `cabal` if I want to use it?
Simple, in `~/.cabal/config`, change
```
remote-repo: hackage.haskell.org:http://hackage.haskell.org/packages/archive
```
to
```
remote-repo: hackage1:http://some/url/to/that/server/hackage
-- remote-repo: hackage.haskell.org:http://hackage.haskell.org/packages/archive
```
Then run `cabal update`, and you can `cabal install` any package.

##Any other ways?
Check [this](https://github.com/eccstartup/qpalzm) out.

##How to contact?
Email:[zhiwudazhanjiangshi@gmail.com](zhiwudazhanjiangshi@gmail.com), seriously.

##License?
Copyright (c) 2013, eccstartup
All rights reserved.

Redistribution and use in source and binary forms, with or without modification,
are permitted provided that the following conditions are met:

* Redistributions of source code must retain the above copyright notice, this
  list of conditions and the following disclaimer.

* Redistributions in binary form must reproduce the above copyright notice, this
  list of conditions and the following disclaimer in the documentation and/or
  other materials provided with the distribution.

* Neither the name of the {organization} nor the names of its
  contributors may be used to endorse or promote products derived from
  this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR
ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
