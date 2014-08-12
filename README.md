# App::AllMyChangesUtils

This is repo with several scripts that create data files that can be imported
to the site http://allmychanges.com

## How to install `amch` script

The site http://allmychanges.com has special script `amch` that can export &
import data. [Official repo](https://github.com/svetlyak40wt/allmychanges).

To install script `amch` you should run:

    pip install allmychanges

Then you should create config file `allmychanges.cfg` **in the directory where
you will run `amch`**. The token you can take at http://allmychanges.com/account/token/

    [allmychanges]
    token = MY-SECRET-TOKEN

You can check if your installation works by running `amch export`. It should
output all your data to the STDOUT.

## How to use scripts from this repo

    ./bin/get_github_favorites bessarabov > list

It will create file `list` with all git repos user `bessarabov` have
favourited at GitHub. The file is created in the special format that
can be parsed by `amch` script. To load all that data to the site
http://allmychanges.com you should run:

    cat list | amch import

### Detailed example

    $ ./bin/get_github_favorites bessarabov > list

    $ cat list
    namespace,name,source
    CSS,Responsive-Dashboard,https://github.com/Ehesp/Responsive-Dashboard.git
    CSS,frontend-instruments,https://github.com/basvasilich/frontend-instruments.git
    Python,inbox,https://github.com/inboxapp/inbox.git
    Perl,Seacan,https://github.com/gugod/Seacan.git
    C++,msgpack,https://github.com/msgpack/msgpack.git
    JavaScript,wavesurfer.js,https://github.com/katspaugh/wavesurfer.js.git
    JavaScript,angular.js,https://github.com/angular/angular.js.git
    Objective-C,terminal-notifier,https://github.com/alloy/terminal-notifier.git
    Perl,perl-net-github,https://github.com/fayland/perl-net-github.git
    unknown,github-cheat-sheet,https://github.com/tiimgreen/github-cheat-sheet.git
    Go,Heartbleed,https://github.com/FiloSottile/Heartbleed.git
    unknown,zen-of-test-suites,https://github.com/Ovid/zen-of-test-suites.git
    Perl,TB2,https://github.com/Test-More/TB2.git
    JavaScript,squirt,https://github.com/cameron/squirt.git
    unknown,papers-we-love,https://github.com/papers-we-love/papers-we-love.git
    C,drone,https://github.com/drone/drone.git
    Perl,example-test-training-material,https://github.com/Ovid/example-test-training-material.git
    Clojure,LightTable,https://github.com/LightTable/LightTable.git
    Python,edx-platform,https://github.com/edx/edx-platform.git
    JavaScript,pepyatka,https://github.com/pepyatka/pepyatka.git
    CSS,Font-Awesome,https://github.com/FortAwesome/Font-Awesome.git
    Ruby,git-internals-pdf,https://github.com/pluralsight/git-internals-pdf.git
    Perl,Dancer2,https://github.com/PerlDancer/Dancer2.git
    Perl,factorial-multi-language,https://github.com/msoap/factorial-multi-language.git
    JavaScript,functional,https://github.com/maxatwork/functional.git
    Objective-C,Objective-C-Marathon,https://github.com/surganov/Objective-C-Marathon.git
    Python,git-sweep,https://github.com/arc90/git-sweep.git
    JavaScript,Pode,https://github.com/mamod/Pode.git
    JavaScript,BadBoids,https://github.com/yanick/BadBoids.git
    JavaScript,www-cpants,https://github.com/cpants/www-cpants.git

    $ cat list | amch import
    CSS/Responsive-Dashboard was created
    CSS/frontend-instruments was created
    Python/inbox was created
    Perl/Seacan was created
    C++/msgpack was created
    JavaScript/wavesurfer.js was created
    JavaScript/angular.js was created
    Objective-C/terminal-notifier was created
    Perl/perl-net-github was created
    unknown/github-cheat-sheet was created
    Go/Heartbleed was created
    unknown/zen-of-test-suites was created
    Perl/TB2 was created
    JavaScript/squirt was created
    unknown/papers-we-love was created
    C/drone was created
    Perl/example-test-training-material was created
    Clojure/LightTable was created
    Python/edx-platform was created
    JavaScript/pepyatka was created
    CSS/Font-Awesome was created
    Ruby/git-internals-pdf was created
    Perl/Dancer2 was created
    Perl/factorial-multi-language was created
    JavaScript/functional was created
    Objective-C/Objective-C-Marathon was created
    Python/git-sweep was created
    JavaScript/Pode was created
    JavaScript/BadBoids was created
    JavaScript/www-cpants was created
