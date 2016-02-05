use strict;
use warnings;

package Mojolicious::Plugin::Web::Auth::Site::Spotify;

use Mojo::Base qw/Mojolicious::Plugin::Web::Auth::OAuth2/;

has access_token_url => 'https://accounts.spotify.com/api/token';
has authorize_url    => 'https://accounts.spotify.com/authorize';
has response_type    => 'code';
has user_info        => 1;
has user_info_url    => 'https://api.spotify.com/v1/me';

sub moniker {'spotify'}

1;
__END__

# ABSTRACT: Spotify OAuth Plugin for Mojolicious::Plugin::Web::Auth

=pod

=head1 SYNOPSIS

    # Mojolicious
    $self->plugin('Web::Auth',
        module      => 'Spotify',
        key         => 'Spotify consumer key',
        secret      => 'Spotify consumer secret',
        on_finished => sub {
            my ( $c, $access_token, $access_secret ) = @_;
            ...
        },
    );

    # Mojolicious::Lite
    plugin 'Web::Auth',
        module      => 'Spotify',
        key         => 'Spotify consumer key',
        secret      => 'Spotify consumer secret',
        on_finished => sub {
            my ( $c, $access_token, $access_secret ) = @_;
            ...
        };


    # default authentication endpoint: /auth/spotify/authenticate
    # default callback endpoint: /auth/spotify/callback

=head1 DESCRIPTION

This module adds L<Spotify|https://developer.spotify.com/web-api/> support to
L<Mojolicious::Plugin::Web::Auth>.

=cut
