package Parallax::App;
use Parallax::Github;
use Dancer ':syntax';


our $VERSION = '0.1';

get '/' => sub {
    template 'index';
};

true;
