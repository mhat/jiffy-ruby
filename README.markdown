Jiffy
=====

Inspired by and for use with Jiffy-Web. This "library" provides the same 
awkward interface as Jiffy-Web in Ruby/Rails land as singleton. Basically 
you can do mark() and measure() in Rails just as you would in Javascript
with Jiffy-Web. Then at some suitable late point in the request loop you 
can serialize Jiffy-Ruby to JSON and load that into Jiffy-Web. 

Then if you have both Firebug and the Jiffy Firebug plugin installed you
get a nice visual for your rails performance metrices right next to your
javascript performance metrics. 

