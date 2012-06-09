package Parallax::Github;
use Dancer ':syntax';
use strict;
use Net::GitHub;
use Net::GitHub::V3;
use Net::GitHub::V3::Gists;

our $VERSION = '0.1';

any ['get', 'post'] => '/github/:username/:password/gists' => sub {
    my $github = Net::GitHub->new(  
    login => param('username'), pass => param('password')
    );
    my $gist = $github->gist;
    my @gists = $gist->starred_gists;
	print @gists;
	# Depodan çıkan hashleri aç
};

any ['get', 'post'] => '/github/:username/:password/repos/:reponame' => sub {
    my $github = Net::GitHub->new(  
    login => param('username'), pass => param('password')
    );
    my $repos = $github->repos;
	$repos->set_default_user_repo(param('username'), param('reponame'));
	my %contributors = $repos->contributors;
	my $key = "";
	foreach my $key (%contributors)
	{
		print $key;
	}
	# Depodan çıkan hashleri aç
};

true;
