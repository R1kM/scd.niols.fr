#!/bin/sh

printf '<article>'
printf   '<section>'
printf     '<p>'
printf      ' Welcome! I am Nicolas “Niols” Jeannerod; you are here on my'
printf      ' domain. This website aims at gathering clean descriptions of'
printf      ' Scottish country dances and tunes that would not be made easily'
printf      ' available otherwise. I give them a stable, nice, warm home. In'
printf      ' particular, it will contain all of my unpublished work. Feel free'
printf      ' to <a href="mailto:niols+scd@niols.fr">send me</a> your dances'
printf      ' and tunes, if you want them “published”.'
printf     '</p>'
printf     '<p>'
printf       'The goal is <em>not</em> to provide a new database. For this, the'
printf      ' <a href="https://my.strathspey.org/dd/index/">Scottish Country'
printf      ' Dance Database</a> does the job amazingly well. Therefore, this'
printf      ' website will probably remain with very limited indexing'
printf      ' capabilities. However, it might very well serve as source of'
printf      ' dance descriptions for the SCDDB.'
printf     '</p>'
printf     '<p>'
printf      ' Note that the sources of this website are available'
printf      ' <a href="https://github.com/Niols/scd.niols.fr">on GitHub</a>'
printf      ' and backed up on the'
printf      ' <a href="https://archive.softwareheritage.org/browse/origin/?origin_url=https://github.com/Niols/scd.niols.fr">'
printf       'Software Heritage archive</a>. This makes this website'
printf      ' <em>very</em> public and <em>very</em> stable. (Which, in my'
printf      ' opinion, are great things, but heh.)'
printf     '</p>'
printf     '<p>'
printf       'You can go see the <a href="dances.html">index of dances</a> or'
printf      ' the <a href="tunes.html">index of the tunes</a>. Otherwise,'
printf      ' everything is accessible directly from this page. Enjoy!'
printf     '</p>'
printf   '</section>'
printf '</article>'

printf '<article>'
printf -- '  <section>'
printf -- '    <table class="datatable responsive nowrap">'
printf -- '      <thead>'
printf -- '        <tr>'
printf -- '          <th>Name</th>'
printf -- '          <th>Type</th>'
printf -- '          <th>Kind</th>'
printf -- '          <th>Deviser</th>'
printf -- '        </tr>'
printf -- '      </thead>'
printf -- '      <tbody>'

iter dances
while next; do
    printf -- '    <tr>'
    printf -- '      <td><a href="dance/%s.html">%s</a></td>' "$(url slug)" "$(html name)"
    printf -- '      <td>Dance</td>'
    printf -- '      <td>%s</td>' "$(html short-kind)"
    printf -- '      <td>%s</td>' "$(html short_author_or_author)"
    printf -- '    </tr>'
done

iter tunes
while next; do
    printf -- '    <tr>'
    printf -- '      <td><a href="tune/%s.html">%s</a></td>' "$(url slug)" "$(html name)"
    printf -- '      <td>Tune</td>'
    printf -- '      <td>%s</td>' "$(html short-kind)"
    printf -- '      <td>%s</td>' "$(html short_author_or_author)"
    printf -- '    </tr>'
done

printf -- '      </tbody>'
printf -- '    </table>'
printf -- '  </section>'
printf -- '</article>'
