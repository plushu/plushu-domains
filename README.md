# plushu-domains

The plushu "domains" plugin provides commands for configuring custom domains
for an app.

See also [plushu/plushu-app-name-domain][], which provides the default domain
for an app based on that app's name.

[plushu/plushu-app-name-domain]: https://github.com/plushu/plushu-app-name-domain

## domains

Usage: `plushu domains <app>`

Lists custom domains defined for an app.

## domains:all

Usage: `plushu domains:all <app>`

Lists *all* domains for an app, including those defined by other plugins.

## domains:link

Usage: `plushu domains:link <app> [path]`

Lists all domains for an app, including those defined by other plugins, as
protocol-prefixed URLs to a given path (`/` by default).

## domains:add

Usage: `plushu domains:add <app> <domain>...`

Add custom domain(s) to an app.

## domains:remove

Usage: `plushu domains:remove <app> <domain>...`

Remove custom domain(s) from an app. Note that this can only remove custom
domains defined by this plugin: other domains (like the default domain provided
by plushu-app-name-domain) must be managed via their respective plugins.

## domains:clear

Usage: `plushu domains:clear <app>`

Remove *all* custom domain(s) from an app. Any domains defined by other plugins
(ie. the default domain) will still be defined.
