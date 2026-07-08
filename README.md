# Only While Written

*An ephemeral text piece that exists only while it's being read — and quietly forgets itself as you read it.*

**Live:** https://only-while-written.rajuan.app

## Watch it

**[▶ Watch demo on Vimeo](https://vimeo.com/1207981517/2d15ae0bde)**

## What this is

Open the page and a sentence types itself out, letter by letter, as if it were being written to you in real time:

> I am only barely here while this is being written.

More lines follow, typed the same way. Then, quietly, the piece starts editing itself. Words swap for close variants. Sentences fade, word by word, into em dashes. The opening line — the one line the piece keeps returning to — gets erased and retyped, slightly different each time. Eventually the piece "quotes" something it said earlier, except the quote is already wrong, because the original has already decayed. By the end, most of the page has dissolved, and a single button appears: **again** — not a replay, but a new performance of the same piece, generated fresh.

There's no backend, no database, no analytics, nothing saved. It's a single self-contained HTML file. What you read exists only in your browser tab, only for the duration you're looking at it.

## The idea

This isn't a tech demo dressed up with a poetic title — the decay *is* the piece, and the mechanism is meant to argue something specific: **a text has no stable, storable original.** It only exists as an act of being written and being read, and every act of remembering it (quoting it, retyping it) is already a slight betrayal of what it was.

The piece is built around a small, deliberate arc rather than pure randomness:

- **It seduces you first.** The typing animation, the direct address ("I am here... while this is being read"), the blinking cursor — all of it creates the illusion of a present, intimate author, before anything strange happens.
- **It teaches you a pattern, then relies on you having learned it.** The opening line comes back several times throughout the piece, each time slightly reworded. By the third or fourth return, you recognize it before it finishes typing — you've learned to expect it.
- **It deviates from what you've learned, on purpose and with memory.** A decay engine mutates older, more-established lines first, swapping bracketed word-alternatives or fading them toward silence. The piece doesn't just generate random text; it specifically erodes the material you've already come to trust, including — near the end — the one line you trusted most.
- **It returns, but altered.** The final button doesn't rewind the piece to its first state. It starts a new run of the same generator, which will type, teach, and decay differently.

If that arc — seduce, teach, betray, return — sounds like a specific framework rather than a vibe, that's because it is one. This piece grew directly out of a personal framework I use for thinking about generative aesthetic language: language as a system of expectation, grammar as the mechanism that turns signs into predictions, and art as the thing that teaches a viewer a language only to use it against them. The full framework, and an explicit line-by-line mapping of it onto this piece's mechanics, is written up in **[docs/PHILOSOPHY.md](docs/PHILOSOPHY.md)**.

## Origin

This repo isn't the output of a spec. It's the downstream artifact of a long, open-ended conversation about the philosophy of machine-made art — what it would mean for a generative system to be treated as capable of language, expectation, and meaning, rather than just output.

That conversation produced a skill I keep and reuse: **`artificial-aesthetic-grammar`**. It's important to be precise about what that skill actually is, because it's easy to assume the opposite: it is **not** a how-to guide. It contains no instructions for building anything — no token formats, no code, no UI, no architecture. It's a way of *thinking* about aesthetic work: what a language is, what a grammar does, how a viewer becomes part of a work's meaning, why a deviation only registers as meaningful once expectation has been earned. It's paired with a second, deliberately separate skill, `aesthetic-language-system-planner`, which *is* the how-to-build companion — the one that talks about token spaces, grammar engines, and renderers. The split is the point: think first, build second, and don't let the second collapse into the first.

*Only While Written* is what happened when that purely conceptual framework was pointed at one small, concrete case — a page of text. The creative decisions in this piece — what the anchor line says, when and how it decays, what it means for the piece to "quote itself" incorrectly, when to let it stop — were made by **Claude Fable 5**, working from that conceptual framework rather than from a technical spec.

## How it works (technical)

Everything lives in [`index.html`](index.html) — no build step, no framework, no dependencies, ~150 lines of JavaScript.

- **Token grammar.** Every sentence in the script is written with an inline alternation syntax: `"I am [only|barely] here"`. `parse()` tokenizes each sentence into words, where a bracketed word carries a queue of alternates (`{t: currentText, a: [remainingAlternates], f: fadeStage}`).
- **Typing engine.** `typeLine()` reveals a line's text one character at a time with a blinking cursor (`#cur`), so every line first appears as if being typed live.
- **The anchor line.** The very first line typed (`A_TEXT`) is marked as the *anchor* — the refrain the rest of the piece is measured against. `maintain()` periodically erases and retypes it with fresh alternates chosen, so it returns changed rather than identical.
- **The decay engine.** Once enough lines are on screen, an interval loop (`step()`) picks a line to mutate, weighted so that **older lines are more likely to mutate** (`Math.pow(age, 1.2)`). `mutateToken()` either swaps a word for its next bracketed alternative, or — once alternates run out — pushes it through fade stages toward an em dash (`—`), i.e. toward silence.
- **The quote step.** One scripted beat re-quotes an earlier line back to the reader ("Earlier I said: ...") using its *current*, already-mutated state — so the "quote" is visibly inaccurate, and the piece asserts it anyway ("I am sure of it.").
- **Escape and cascade.** After the scripted lines finish, a break in the loop lifts the anchor's protection from random decay, then a final scheduled sequence deliberately erodes specific words inside the anchor line itself — even the most-repeated, most-trusted sentence isn't spared.
- **Restart, not replay.** The `again` button fades in only after the piece has fully decayed. Clicking it calls `init()`, which clears all state and re-runs the entire generator from scratch — a new performance of the same grammar, not a rewind.

## Architecture

```
index.html          single static page: markup, styles, and the generator/renderer, all inline
favicon.svg          ✍️ emoji favicon
Dockerfile            nginx:alpine, serves index.html as-is
docker-compose.yml    container + Traefik labels for SSL/routing
.github/workflows/    GitHub Actions: deploys to the EC2 host on push to master
verify.sh             post-deploy smoke check against the live site
```

No backend, no build pipeline, no persistence layer — deliberately. The piece's claim (nothing here is stored) holds at the infrastructure level too: it's one static file served as-is.

## Run it locally

```bash
# with Docker
docker-compose up

# or just open it directly
open index.html
```

## Deployment

Deployed to AWS EC2 behind Traefik (SSL via Let's Encrypt), with DNS on Cloudflare and CI/CD via GitHub Actions on push to `master`. Full setup notes are in [DEPLOYMENT.md](DEPLOYMENT.md).

## Credits

**Nadav Rajuan** — concept origin, the philosophy conversation this grew out of, deployment.
**Claude Fable 5** — creative and implementation decisions for the piece itself, working from the `artificial-aesthetic-grammar` framework.
