EcoHack 3 Wetlands Project
=======
Scott from the Gulf Restoration Network is already using the data in his
[efforts](http://healthygulf.org/our-work/wetlands/wetlands-overview)
to protect wetlands from reckless development, but he doesn't have the time or
skills that we have this weekend.

Let's do something with these data! Here are some ideas based on discussions
with Scott, but do consider other things too.

* Improve the identification of the "total acreage" figure
* Map the applications. Until we extract latitudes and longitudes, we can use
    parish instead.
* Present the data otherwise. We have the full images and text of these
    documents, and I've already pulled out information relating to laws, dates
    and people.
* Migrate data from an old version (See below.)

## Dataset files

### Spreadsheet
We have data on applications to build things on wetlands. The `wetlands.csv`
file in this repository is taken from September 9, 2012, but the data are
updated [every day](https://github.com/tlevine/wetlands). I (Tom) recommend
that we just work on this spreadsheet today. If additional data cleaning code
is written, I'll eventually move it to the automatic importer scripts.

### PDFs
If I get power back in my house, the pdf files linked in the spreadsheet will
be available where they say they are. If not, I'll find some other place to
host them.

### Mongo
A bit more data is stored in a MongoDB, but I doubt that's of interest to
anyone for such a small dataset. If power comes back on in my house, we can use
that too.

### Old version
The `v1` version was running for a few months before I started this `v2`
version, and I haven't moved the data over. The storage format is
[documented](https://github.com/tlevine/wetlands/tree/master/v1), and
some of the files are [here](http://chainsaw.thomaslevine.com/wetlands/).

Migrating these data to the new `v2` filesystem could be a nice quick project.
