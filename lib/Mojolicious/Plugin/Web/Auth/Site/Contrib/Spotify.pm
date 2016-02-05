use strict;
use warnings;

package Mojolicious::Plugin::Web::Auth::Site::Contrib::Spotify;

use Mojo::Base qw/Mojolicious::Plugin::Web::Auth::OAuth2/;

has user_info        => 1;
has authorize_url    => 'https://accounts.spotify.com/authorize';
has access_token_url => 'https://accounts.spotify.com/api/token';
has user_info_url    => 'https://api.spotify.com/v1/me';
has response_type    => 'code';

sub moniker {'spotify'}

1;

# ABSTRACT: Spotify OAuth Plugin for Mojolicious::Plugin::Web::Auth

=pod

=head1 SYNOPSIS

    # Mojolicious
    $self->plugin('Web::Auth',
        module      => 'Contrib::Spotify',
        key         => 'Spotify consumer key',
        secret      => 'Spotify consumer secret',
        on_finished => sub {
            my ( $c, $access_token, $access_secret ) = @_;
            ...
        },
    );

    # Mojolicious::Lite
    plugin 'Web::Auth',
        module      => 'Contrib::Spotify',
        key         => 'Spotify consumer key',
        secret      => 'Spotify consumer secret',
        on_finished => sub {
            my ( $c, $access_token, $access_secret ) = @_;
            ...
        };


    # default authentication endpoint: /auth/spotify/authenticate
    # default callback endpoint: /auth/spotify/callback

=cut
