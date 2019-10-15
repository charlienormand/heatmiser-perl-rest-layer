#!/usr/bin/env perl
use Mojolicious::Lite;

any '/on/' => sub {
  my $self = shift;

  my $cmd = q{/bin/bash /home/yourname/heatmiser_25.sh};
  print $cmd;
  system($cmd);
  $self->render( text => "Heating Activated\n" );
};

any '/off/' => sub {
  my $self = shift;

  my $cmd = q{/bin/bash /home/yourname/heatmiser_16.sh};
  print $cmd;
  system($cmd);
  $self->render( text => "Heating Deactivated\n" );
};

any '/' => sub {
  my $self = shift;
  $self->render( text => "Specify on or off at end of url\n" );
};

app->start;
