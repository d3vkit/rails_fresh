**Rails - Hot, Fresh Out of the Box**

My rails apps can get pretty cluttered with custom changes to application and test configuration - or sometimes rails
just changes the defaults it ships with, and the upgrades to the apps don't reflect those changes well.

Rails Fresh is intended to take away the guess as to what is convention, and what was configuration on my part.

**Structure**

I intend to support a few main paths, with this folder structure:

- The specific version of rails in the format of `fresh_major_minor_patch`, as in `fresh_5_1_2`
- There will always (probably) be the most recent major + minor + patch version as a top level
- There is no guarantee that previous minor or patch versions will be preserved (but likely not removed, because why?)
- Under the folder of rails version, specific types of installs:
  - Default
  - Rspec
  - React

So the structure is something like this:

- fresh_5_0_1
  - default
  - react
  - rspec
- fresh_5_1_2
  - default
  - react
  - rspec

I will very likely expand this to include things like Angular, etc. The point of the top level is to tell the user,

> Here is what rails new will get you, with minimal change from the developer

And the subdirectories tell the user,

> Here is what the setup of this gem is like using the instructions from the gem's readme, with minimal change from the
> developer

Note that there is a chance that the developer (me) has changed the setup. This is _very_ unlikely with Rails itself,
because it values convention over configuration so strongly, but some gems provide multiple paths of setup. In these
cases, the main concern is always, "What is the most likely scenario for setup?" I am unsure that this caveat is even
necessary, so it may be removed in the future to provide a more stable idea of what is being committed (since that is
kind of the point).
