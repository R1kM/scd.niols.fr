#!/bin/sh

printf -- '<article>'
printf -- '  <h1>All Tunes</h1>'
printf -- '  <section>'
printf -- '    <table class="datatable responsive nowrap">'
printf -- '      <thead>'
printf -- '        <tr>'
printf -- '          <th>Name</th>'
printf -- '          <th>Kind</th>'
printf -- '          <th>Composer</th>'
printf -- '        </tr>'
printf -- '      </thead>'
printf -- '      <tbody>'

iter tunes
while next; do
    printf -- '    <tr>'
    printf -- '      <td><a href="tune/%s.html">%s</a></td>' "$(url slug)" "$(html name)"
    printf -- '      <td>%s</td>' "$(html short-kind)"
    printf -- '      <td>%s</td>' "$(html short_author_or_author)"
    printf -- '    </tr>'
done

printf -- '      </tbody>'
printf -- '    </table>'
printf -- '  </section>'
printf -- '</article>'
