-- Make all headings (except the h1 added by page.tmpl)
-- clickable links to themselves, for easy bookmarking/linking.
-- site.css controls their style.

function Header(el)
   el.content = pandoc.Link(el.content, '#' .. el.identifier)
   return el
end
