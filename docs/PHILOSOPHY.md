# The Idea Behind It

*Only While Written* is a small piece of software art, but the thinking behind it isn't really about software. It's downstream of a long, open-ended conversation about the philosophy of machine-made art — not "how do we generate content," but what it would mean for a generative system to be treated as capable of language, expectation, and meaning at all.

That conversation produced a working framework I keep and reuse, `artificial-aesthetic-grammar`, for reasoning about **artificial aesthetic language**: how a system of signs can become a language, how a language teaches a viewer to expect, and how art uses that expectation against the viewer to produce meaning. It's worth being precise about what this framework *is*: it is not an implementation guide. It contains no instructions for building anything — no token formats, no code, no rendering, no architecture. It's a way of thinking about aesthetic work, meant to be applied *before* any technical decision gets made. There's a deliberately separate companion, `aesthetic-language-system-planner`, that covers the practical, how-to-build side (token spaces, grammar engines, dramaturgy, renderers) — the split exists so the conceptual framework doesn't collapse into a spec.

This document is the conceptual framework, written for a general reader rather than for an AI agent. If you only want the short version, read [the README](../README.md#the-idea); this is the long version. The creative decisions in the piece itself — what the anchor line says, how and when it decays, what it means for the piece to misquote itself — were made by Claude Fable 5, working from this framework rather than from a spec.

## Language as a system of expectations

Start from a claim: a language isn't a list of symbols. It's a system of expectations.

A sign, a word, a color, a chord — alone, none of these mean very much. But once signs start appearing in patterns, the patterns create expectation, and expectation is where grammar begins. Grammar, in this sense, doesn't have to be linguistic. It can be musical, visual, rhythmic, typographic — any structure that lets a perceiving mind start to sense what's likely to come next.

A language is *felt*, not just parsed, the moment a receiver starts predicting it: this feels right, this feels wrong, this feels overdue, this feels inevitable.

## The viewer becomes part of the grammar

The reader or listener isn't a passive target for a finished message. Once they've learned enough of a work's patterns to anticipate it, a version of the work's own logic is now running inside their head too. At that point they're not just watching — they're synchronized with it. Two people who "get" the same piece of art aren't just recognizing the same symbols; they share expectations about what's allowed to happen next, what counts as resolution, and what counts as violation.

Meaning, under this view, is not something sitting inside a sign or purely invented by a viewer. It emerges *between* a system producing patterns and a mind that has learned to predict them.

## Seduction, synchronization, deviation, return

This framework describes artistic experience as a four-part movement:

1. **Seduction** — the work gives the viewer a reason to stay. Enough rhythm, motif, or recurrence that it feels graspable, even if it's strange.
2. **Synchronization** — the viewer learns the pattern and starts predicting it. The work's internal logic and the viewer's expectation align.
3. **Deviation** — the work breaks its own pattern in a way that feels intentional rather than arbitrary. This only works *because* the viewer has learned the grammar first — without an established expectation, there's no such thing as a meaningful violation, only noise.
4. **Return** — the work comes back to earlier material, but altered. A true return isn't a reset; the same line, chord, or image no longer means what it meant the first time, because the viewer has changed in the meantime.

A useful test for whether a deviation actually landed: *"This shouldn't have happened — but now that it has, it feels like it had to."* Surprise alone isn't art. Surprise only becomes meaningful when it reveals or transforms the grammar the viewer had already learned to trust.

## Randomness is not the same as deviation

It's tempting to build a "generative" system and assume randomness supplies the artistic content. It doesn't. A random event can be interesting without being meaningful. For a deviation to register as art rather than glitch, it has to happen *against* an established pattern, at a moment the viewer has started to rely on that pattern, and it has to retroactively change how the earlier material reads.

This is why a system built on this framework needs memory. It needs to know what it has already shown the viewer, so it knows what it is capable of betraying.

## How *Only While Written* embodies this

The piece is a direct, minimal instance of the framework above, built entirely in the medium of typed text on a page:

- **The token space** is the words themselves. Every sentence in the piece is written with an inline grammar — `[option one|option two|option three]` — so a "word" is really a small bundle of possible words, only one of which is showing at any moment.
- **Seduction** happens in the opening seconds: the page types itself out, letter by letter, like something being written to you in real time. That's the hook — direct address, a blinking cursor, the illusion of a present author.
- **Synchronization** comes from the anchor line — *"I am only barely here while this is being written."* It's spoken first, then periodically erased and retyped (slightly reworded each time) throughout the piece. By the time it returns a third or fourth time, you recognize it before it finishes typing. You've learned to expect it.
- **Deviation** is the decay engine. Once enough lines are on the page, a timer starts quietly mutating them — swapping a bracketed word for one of its alternates, or, once alternates run out, fading it toward an em dash. Older lines are weighted to mutate more, so the earliest, most-trusted material is the first to visibly drift. The piece is, quite literally, forgetting itself while you read it.
- **The quote step** makes this explicit: partway through, the piece "quotes" one of its own earlier lines back to you — except by then that line has already mutated, so the quote is visibly wrong, and the piece says so: *"I am sure of it."* This is the framework's claim about memory made literal: there is no stored original to check against, only the current, already-altered version.
- **Return, altered** — the anchor keeps coming back, but never verbatim. Near the end, a final scripted decay deliberately erodes specific words inside the anchor line itself, so even the piece's most stable, most-repeated sentence isn't safe. The last thing you can trust starts dissolving too.
- **The "again" button** only appears once the piece has fully decayed. It doesn't replay what you just read — it re-runs the generator, which produces a new performance of the same underlying grammar. This mirrors the framework's principle that a language, once learned, can be performed again without ever being the same twice.

The title says the rest: the piece exists *only while* it is being written — and, by the same logic, only while it's being read. Nothing in it is stored. Everything is either being re-said, or it's leaving.

## Why bother with a "framework" for a page of decaying text

Because the alternative — writing generative or decaying text as a novelty effect — tends to produce something that *looks* like it means something without actually earning it. The framework above is really a discipline: don't let the viewer see deviation before they've learned the pattern being deviated from; don't call something a climax just because it's the loudest or strangest moment; make sure a "return" changes something, or it isn't a return, it's just a repeat.

If you want to build something else out of this same way of thinking — not necessarily text, not necessarily decaying — the practical side of the framework (token spaces, grammar engines, deviation engines, dramaturgy phases, renderers) is written up in the planning notes referenced at the top of this document. This project is one small, complete instance of it.
