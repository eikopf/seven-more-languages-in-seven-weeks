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

### Day 2
Guess I needed time to get used to it, because I'm actually really starting to like Elixir. There's a point that Bob Nystrom makes in *Crafting Interpreters*, where he says that language designers often strive for minimalism at the expense of the developer experience, and I absolutely felt that with Factor and Elm; I really feel the opposite when it comes to Elixir.

The metaprogramming stuff does give me a headache, but it seems incredibly useful, and feels a little like how I felt decorators should work in Python when I first encountered them.

Seems at this rate like Elixir will turn out to be my favourite language in this book (not excluded my already beloved Julia) :).

> *Also that stuff I said about function calls on day 1 was embarassingly wrong. Woops.*

### Day 3
All done! I feel incredibly stupid. Elixir is so foreign to the way I code that it takes real effort just to read a function, or to reason about behaviour. Still, this style of functional programming, oversweetened as it is, clicks with me far more that Elm did. That it so easily handles concurrency and metaprogramming is just the cherry on top; these details come at a time when my projects increasingly demand them.

Final thoughts? Elixir currently ranks as the best language of the four I've seen thus far, and I expect that I'll come back to it with fresh eyes, to properly learn what it can do. Still, I'm probably going to need a break (and ibuoprofen) before I'm ready for that.

## Language 5: Julia
### Day 1
It'll be difficult to add anything novel here, since I already use and love Julia. But I am still hopeful that this book can teach me a little about concurrency and macros, since I rarely touch those at the moment.

### Day 2
This book is pretty out of date, at least in terms of Julia: they're using 0.3, and currently we're at 1.8.5. Still, it's not terribly hard to translate up to the current day, and some of this stuff is really useful (like the `@distributed` macro). Julia's gotten a lot more concurrency since this book was written, though, so I'll need to pore over this stuff some other time.

### Day 3
Again, the hardest part of this day was replacing functions that have long since been deprecated; still, the premise was really interesting, and that kind of data manipulation is exactly why I love Julia.

## Language 6: miniKanren
### Day 1
I was expecting miniKanren to be incomprehensibly esoteric, and yet so far it feels essentially like my first-year logic course at university. Relations and first-order logic (+ recursion), plus the notion of a relational database, are already fairly familiar to me.

The hardest thing to wrap my head around at this point is the host language: Clojure. The syntax is bizarre, and even though I have a little experience with Emacs Lisp, it's still going to take some time to get used to.

> Also, some useful links: https://github.com/clojure/core.logic and https://rawgit.com/dedeibel/clojure-core-logic-cheatsheets/master/out/cheatsheet-use-title-attribute-no-cdocs-summary.html

### Day 2
We've covered conditionals, and even though I understand the raw concepts fairly clearly, I find that I can't really apply them; the Lisp-syntax of Clojure prevents me from intuitively engaging with core.logic.

I'd really like to get used to this tool, but I think I'm better off trying to learn something a little more intuitive like Prolog.

I'm also struck by how the idea of "a program that finds solutions to problems" is a much less intuitive idea than just defining and explaining relations. It's a minor gripe, but I'd love to see an explanation/implementation of miniKanren that relies on prior familiarity with set-theoretic logic.

### Day 3
Conclusions! Mostly, it's just that I *really* don't get LISPs, and I should probably learn one. Maybe Clojure?

Anyway, the concept of miniKanren seems really interesting, and if I could find a way to integrate it with a familiar language, say Python or Julia, then I would probably find it much easier to grasp. In particular, the idea of using logic programming to describe a story-space and then to search through it with constraints is super interesting; it strikes me as a really neat way to do generative storytelling.
