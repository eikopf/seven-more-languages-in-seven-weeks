# Seven More Languages in Seven Weeks
The code in this repo was generated as I went through the book Seven More Languages in Seven Weeks. Why did I go through this book before the original one? It's a secret.

## Language 1: Lua
### Day 1
Getting used to the Lua REPL, and working through the bare essentials of the language. God I hate dynamic typing.

I found a significantly better REPL called croissant, installable via luarocks.

### Day 2
Literally just tables. And metatables. And metametatables? This seems like it would be really useful, if I spent 3 weeks relearning how I think about classes. Really, it's a very elegant language; I just can't *stand* not having typed values.

This actually makes me miss Java.

### Day 3
OH MY GOD I HATE C++.

I had to skip this day, because the homebrew version of Lua doesn't install a particular file called liblua.so that clang needs to compile a C++ project with the Lua interpreter.

This whole experience has soured my view of Lua quite significantly. Do people actually use this language to make games?

## Language 2: Factor
### Day 1
The listener/repl thing is poorly made, but actually this language is quite cool. I dread to think how that GUI library works.

### Day 2
I don't think I've ever had to work so hard for a `hello, world` program.

Having now finished this section up to (but not including) the tasks, I find it much more believable that someone could use Factor for "real" programming. Still, I don't think I'll be switching anytime soon: I'm far too indoctrinated into the applicative model.

Slight (huge) gripe: this language has terrible errors, and there's *literally* nothing online that I can reference other than the solid blank wall of the official documentation.

### Day 3
I'm done with Factor!

After stepping away from an absolutely *aggravating* problem, having a snack, and reading through the rest of day 3, I feel that I totally respect Factor: it's an impressively robust project that can do basically anything.

Still, I'm not going to be using it in a real project anytime soon. It's like trying to write withyour non-dominant hand: a brilliant exercise, but only because it makes you appreciate what you normally do.

## Language 3: Elm
### Day 1
In my defence, languages don't normally change that much.

Looks like the book is *very* out of date, so it's really more of a loose guide in this context. Maybe that's a good thing!

I really like the look of Elm, at least at first brush, and having just dealt with the airy-fairy typish hell of Elm and Factor, I'm very happy to have a language that tells me to shut up and respect types. It's a bit like the feeling of writing Rust, except there isn't a compiler beating me into submission everytime I forget an ampersand.

Ok, scratch that. This thing is really annoying, and feels *very* incomplete. There's literally no way to run a standalone script (as far as I can tell).

### Day 2
Actually, the book is ***really*** out of date. Like almost a decade.

Elm has changed significantly between 2014 and now, so I'm really using the book as more of a suggestion, and instead following the language overview on https://guide.elm-lang.org/. Actually, I quite like some of the features of Elm, and in particular how I don't have to touch callback hell. Instead, everything is just strongly-typed data that I can deal with.

I watched a video (whose title I have now forgotten) about using Elm in Vite, and the particular thing I got from it was this: Elm doesn't have runtime errors. I mean it does, in a literal sense, but much like Rust, it's more like *if your program compiles, then you can trust it*. I **really** like this ethos, especially coming from the last few languages in this book.

### Day 3
This part would be a convoluted hell to try and follow (and update), so I've chosen to skim it and review how you would implement a game in modern Elm. Poking around on https://package.elm-lang.org/, I see a number of different gamedev-specific packages, including ones for an ECS-style model, which I can only assume works particularly well in this functional style.

I love the idea of thinking about games *statically*. Forget everything else, the only concern of the program is getting from the current game state to the next game state; let Elm handle the minor details.

Still, I am a little concerned that Elm's pure functionality might kill a project towards the end, when technical debt and compiler limitations make it impossible to add a new feature without also untangling deeply interwoven types and relationships. I can't really be too harsh a judge without trying it, but it is something to think about (and not evident until it's **far** too late).

## Language 4: Elixir
### Day 1
This language is very strange. It's sort of on the border between familiar things like Python (or now Lua, I guess), but it also has some choices that make academic sense but feel intuitively wrong. 

The prime example is calling functions; they're invoked with `func.(args)`, not `func(args)`. That might make sense, if your language does dynamic dispatch, and you reference the different forms of a function with parenthesis notation, but it still feels very wrong.

Much like Ruby, this language also has a lot of syntax that feels very arbitrary: if you're talking about syntactic sugar, then Elixir feels oversweetened to me. In Python, new syntax always comes along to fill a problem that was annoying but already possible, and in Kotlin, any "syntactic sugar" is universal, rather than scoped to a single type of statement. Here, though, it just feels a little arbitrary. Perhaps I just need to get used to it.
