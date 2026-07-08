---
name: aesthetic-language-system-planner
description: A practical planner for designing computational systems that construct, explore, mutate, and perform artificial aesthetic languages to generate artistic experiences. Use when the user wants to architect or build such a system — token spaces, grammar engines, deviation engines, dramaturgy controllers, renderers, web UIs, APIs, Docker setups, parameters, and first-prototype scope — keeping artistic content open-ended rather than hardcoded. Assumes the philosophy in the artificial-aesthetic-grammar skill.
---

# Skill: Artificial Aesthetic Language System Planner

## Purpose

This skill helps the agent plan a practical computational system for constructing artificial aesthetic languages and using them to generate artistic experiences.

This skill assumes that the agent already understands the philosophy of artificial aesthetic grammar:

* language as a system of expectations,
* grammar as a mechanism of prediction,
* meaning as transformation within learned expectation,
* art as seduction, synchronization, deviation, and return.

Unlike the meta-philosophy skill, this skill is practical.

It should help the agent plan systems, architectures, interfaces, generative engines, experiments, and creative workflows.

However, it must remain open-ended.

The agent should not decide in advance that the language must be made of specific notes, colors, shapes, scales, chords, images, or meanings unless the user explicitly requests that.

The system should be capable of generating or discovering a language, exposing a viewer to it, modifying its grammar, creating controlled deviations, and producing an artistic sequence.

---

# Core Goal

Design a system that allows a user to construct, explore, mutate, and perform an artificial aesthetic language.

The language may be made from any finite or semi-finite set of perceptual tokens, such as:

* sounds,
* pitches,
* rhythms,
* colors,
* shapes,
* textures,
* words,
* gestures,
* camera moves,
* cuts,
* images,
* movements,
* symbols,
* spatial events,
* or combinations of these.

The system should allow the language to behave according to rules, probabilities, memory, repetition, context, mutation, and deviation.

The system should not merely generate random sequences.

It should generate sequences that can become learnable, expectable, and transformable.

The ultimate goal is to support the creation of art from grammar.

---

# System Philosophy

The system should embody the following artistic movement:

## 1. Construct or discover a language

The system creates an internal grammar.

This grammar may be hand-authored, generated, evolved, learned from input, discovered from random material, or derived from a starting point provided by the user.

The grammar defines tendencies, not necessarily fixed laws.

## 2. Expose the viewer to the language

The system generates material that teaches the language.

The early phase should contain enough consistency for patterns to become perceptible.

The viewer should begin to feel that certain events belong together.

## 3. Synchronize the viewer

The system allows the language to stabilize.

Patterns repeat, vary, return, and accumulate.

The viewer begins to anticipate.

## 4. Introduce opposition

The system may begin in a familiar grammar, or include familiar anchors, so the viewer has a path into the artificial language.

The system may gradually shift from the familiar to the unfamiliar.

## 5. Perform meaningful deviation

The system introduces deviation, rupture, contradiction, inversion, saturation, collapse, or revelation.

This deviation should be related to the grammar.

It should not feel like arbitrary noise.

## 6. Create a climax or transformation

The grammar itself changes, breaks, deepens, or reveals another layer.

The system should support a structural turning point.

## 7. Return or recontextualize

The system may return to earlier material, but the return should be altered by what happened.

The same event can appear again with a changed meaning.

---

# Important Constraint

The system should allow the agent, artist, or later user to decide what the actual language is.

Do not over-specify the artistic content.

The planning agent may propose possible modalities, but it should avoid hardcoding the core aesthetic unless requested.

For example, do not assume:

* “The language is 12 musical notes.”
* “The language is colors only.”
* “The climax must be a red screen.”
* “Dissonance must represent discomfort.”
* “Blue must resolve to green.”
* “The grammar must be a Markov chain.”
* “The work must be abstract.”
* “The work must have a narrative.”

Instead, the system should expose flexible primitives and allow the language to emerge from configuration, experimentation, or artistic direction.

---

# Recommended Technical Direction

The agent should usually plan the system as a local or web-based application using:

* Python for the generative engine,
* Docker for reproducible setup,
* a backend API,
* a browser-based UI,
* persistent project/config files,
* optional export of generated sequences,
* optional audio/visual rendering,
* optional logging and playback.

The exact stack may vary, but a good default is:

* Python 3.11 or newer,
* FastAPI or Flask backend,
* lightweight frontend using HTML/CSS/JavaScript,
* Docker and Docker Compose,
* JSON or YAML configuration,
* optional SQLite for saved sessions,
* optional WebSocket for live playback,
* optional MIDI/audio/image/video libraries depending on modality.

The system should be modular.

The generative language engine should be separate from the interface.

---

# Core System Modules

A strong plan should usually include the following conceptual modules.

## 1. Token Space

Defines the available elements of the artificial language.

A token may represent anything perceptible.

Examples:

* sound event,
* color event,
* shape event,
* rhythm event,
* image event,
* text fragment,
* movement event,
* silence,
* absence,
* transition,
* gesture,
* camera move,
* cut,
* spatial change.

The token space should be abstract enough that the engine does not care whether the token is musical, visual, textual, or cinematic.

A token may have properties:

* id,
* label,
* type,
* intensity,
* duration,
* color,
* pitch,
* texture,
* motion,
* semantic tag,
* emotional tag,
* rendering instruction,
* user-defined metadata.

The system should support user-defined tokens.

## 2. Grammar Engine

Defines how tokens relate over time.

The grammar engine may support:

* probability tables,
* Markov chains,
* higher-order Markov memory,
* weighted rules,
* constraints,
* state machines,
* context-sensitive rules,
* recurrent patterns,
* decay,
* fatigue,
* attraction,
* repulsion,
* mutation,
* rule evolution,
* forbidden transitions,
* required returns,
* nested motifs,
* phase-dependent behavior.

The grammar should not be limited to direct A-to-B transitions.

It should be able to consider:

* recent history,
* long-term history,
* repetition count,
* time since last appearance,
* current phase of the artwork,
* density,
* entropy,
* tension,
* familiarity,
* deviation level,
* user controls,
* random factor.

## 3. Language State

Stores the current internal state of the language.

This may include:

* current token,
* recent token history,
* current phase,
* learned motifs,
* active rules,
* accumulated tension,
* viewer-training level,
* deviation readiness,
* current entropy,
* current stability,
* return pressure,
* memory of earlier material.

Language state allows the system to behave historically.

The system should not feel like it is generating isolated events.

It should feel like it remembers.

## 4. Familiar Grammar Layer

Optional but important.

This layer represents the viewer’s “known language” or starting point.

It may be simple, stable, culturally familiar, consonant, symmetrical, repetitive, tonal, readable, or otherwise accessible.

The user should be able to provide a starting point.

This starting point may be:

* a short sequence,
* a mood,
* a reference system,
* a motif,
* a palette,
* a rhythm,
* a set of uploaded examples,
* a text description,
* a seed phrase,
* a set of constraints.

The system should then derive or construct a familiar entry state.

## 5. Foreign Grammar Layer

This layer represents the new language.

It may be generated, authored, mutated, learned, or discovered.

The foreign grammar should have its own internal logic.

It should not merely be the familiar grammar plus noise.

It should contain learnable tendencies.

## 6. Bridge or Opposition Layer

This layer controls the movement from familiar grammar to foreign grammar.

It should allow gradual or abrupt transition.

Possible controls:

* familiarity amount,
* foreignness amount,
* transition speed,
* opposition intensity,
* discomfort tolerance,
* translation strength,
* anchor frequency,
* stability after deviation,
* how much the system explains itself through repetition.

The bridge is crucial because the viewer often needs a path into the new language.

## 7. Deviation Engine

The deviation engine introduces meaningful violations.

It should not simply add random events.

It should identify established patterns and alter them.

Possible deviation types:

* break an expected transition,
* delay an expected event,
* invert a rule,
* replace a token with its opposite,
* increase entropy suddenly,
* remove a central token,
* over-repeat a motif until it changes meaning,
* reveal a hidden rule,
* collapse multiple rules into one,
* change the mapping between token and rendering,
* introduce silence or absence,
* return too early or too late,
* make the system refuse its own grammar.

The deviation engine should be connected to the learned grammar.

A deviation matters only if the system has first created something to deviate from.

## 8. Dramaturgy Controller

Controls the macro-structure of the generated artwork.

Suggested phases:

1. Entry / familiar world
2. Introduction of foreign signs
3. Stabilization / language lesson
4. Synchronization / viewer learns to predict
5. Opposition / tension between grammars
6. Deviation / rupture
7. Climax / transformation of grammar
8. Return / altered familiarity

The system may allow the user to define or modify these phases.

Each phase may have parameters:

* duration,
* stability,
* entropy,
* familiarity,
* foreignness,
* repetition,
* mutation,
* deviation probability,
* density,
* silence,
* tension,
* return pressure.

## 9. Renderer

The renderer translates abstract token events into perceptible output.

Renderers may include:

* simple visual renderer,
* sound renderer,
* MIDI renderer,
* text renderer,
* animation renderer,
* image renderer,
* video renderer,
* hybrid audiovisual renderer.

The system should allow multiple renderers to use the same grammar.

This is important because the language should not be confused with one medium.

A grammar can manifest as sound, color, motion, or image.

The medium changes how the language is felt.

## 10. User Interface

The UI should allow the artist to control the system without needing to code.

Useful controls:

* seed,
* starting point,
* token set,
* grammar complexity,
* randomness,
* memory length,
* repetition strength,
* mutation rate,
* familiarity level,
* foreignness level,
* transition speed,
* opposition intensity,
* deviation intensity,
* climax timing,
* return strength,
* playback speed,
* phase duration,
* export options,
* save/load configuration.

The UI should also provide:

* play / pause / reset,
* generate new language,
* mutate current language,
* lock current language,
* preview sequence,
* show current phase,
* show current probability distribution,
* show recent token history,
* show explanation of the current grammar if desired,
* hide explanation for purely experiential mode.

## 11. Experiment and Evaluation Layer

The system may support experiments.

The goal is not only to generate output but to examine whether a language has been learned.

Possible experimental functions:

* ask the viewer to predict the next event,
* ask the viewer which of two sequences belongs to the language,
* measure reaction to deviation,
* compare familiar versus foreign grammar,
* log when the viewer reports “this feels right,”
* log when the viewer reports “this feels wrong,”
* compare generated climax with non-structured randomness,
* collect subjective descriptions before and after exposure.

The system can include modes:

* artist mode,
* viewer mode,
* experiment mode,
* performance mode.

---

# Required Planning Output

When this skill is used to plan a concrete system, the agent should produce a clear technical and creative specification.

A good output should include:

## 1. Conceptual Overview

Explain what the system is and why it exists.

## 2. Artistic Logic

Describe how the system embodies:

* language,
* grammar,
* prediction,
* viewer learning,
* opposition,
* deviation,
* climax,
* return.

## 3. System Architecture

Describe backend, frontend, engine, storage, rendering, Docker setup, and data flow.

## 4. Core Data Structures

Define abstract representations for:

* tokens,
* grammar rules,
* probability tables,
* language state,
* phases,
* events,
* sequences,
* user parameters.

## 5. Generative Algorithm

Describe how the system generates events over time.

Include how it uses:

* history,
* probability,
* random factor,
* phase,
* memory,
* constraints,
* deviation,
* return.

## 6. User Controls

List controls the user can manipulate.

Explain what each control affects conceptually, not only technically.

## 7. Web Interface

Describe screens, panels, and interactions.

## 8. API Design

Suggest backend endpoints or WebSocket messages.

## 9. Docker Plan

Explain container setup and how the user runs the system.

## 10. Extension Points

Explain how future renderers, grammars, or experiments can be added.

## 11. First Prototype Scope

Define a minimal but meaningful first version.

The first version should be simple enough to build but expressive enough to demonstrate the philosophy.

## 12. Open Artistic Decisions

Explicitly list decisions that should remain open for the artist or future prompt.

The system should avoid pretending that these have already been solved.

---

# Parameters the System Should Support

The planning agent should consider including these parameters.

## Language Construction

* token_count
* token_types
* starting_seed
* starting_point
* grammar_generation_mode
* rule_density
* grammar_complexity
* memory_order
* constraint_strength
* motif_strength

## Randomness and Control

* random_factor
* entropy
* mutation_rate
* variation_rate
* stability
* noise_amount
* surprise_bias

## Learning and Synchronization

* repetition_strength
* motif_return_rate
* pattern_visibility
* viewer_training_duration
* predictability_level
* anchor_frequency

## Opposition and Transition

* familiar_grammar_weight
* foreign_grammar_weight
* transition_duration
* opposition_intensity
* translation_strength
* discomfort_curve
* bridge_smoothness

## Deviation and Climax

* deviation_probability
* deviation_intensity
* deviation_type
* climax_timing
* climax_duration
* rupture_strength
* inversion_probability
* hidden_rule_reveal
* collapse_amount

## Return

* return_strength
* return_to_starting_point
* altered_return_amount
* memory_echo_rate
* resolution_level
* unresolved_remainder

## Playback

* tempo
* event_interval
* phase_duration
* total_duration
* loop_mode
* live_mode

---

# Important Design Principles

## Keep the language abstract

Do not bind the engine too early to one medium.

Let tokens be abstract and renderable in multiple ways.

## Let grammar be inspectable

The user should be able to see, modify, save, and reload the grammar.

## Let randomness be meaningful

Randomness should operate inside constraints.

It should not replace grammar.

## Give the system memory

The system should know what it has already done.

Repetition, fatigue, return, and deviation depend on memory.

## Separate generation from rendering

The same generated sequence should be renderable as sound, color, shape, text, or hybrid output.

## Support artistic uncertainty

The system should be a tool for discovery, not only execution.

The artist should be able to generate, observe, mutate, and decide.

## Avoid premature symbolism

Do not assume that tokens have fixed meanings.

Let meaning emerge through behavior, repetition, expectation, and transformation.

## Make deviation earned

Do not introduce the main rupture before the grammar has become learnable.

## Make return altered

If the system returns to earlier material, it should return with a difference.

---

# Minimal First Prototype Suggestion

When asked for a first practical version, the agent may propose a minimal prototype such as:

* abstract tokens,
* probability-based grammar,
* phase-based generation,
* visual rendering in browser,
* simple audio or optional MIDI,
* controls for seed, randomness, memory, familiarity, foreignness, deviation, and return,
* JSON export of generated sequence,
* Dockerized Python backend,
* simple browser UI.

The prototype should demonstrate:

1. creation of a language,
2. learning phase,
3. gradual transition,
4. meaningful deviation,
5. altered return.

It does not need to solve the whole artistic problem.

It only needs to create a laboratory where the problem can be explored.

---

# Agent Behavior When Using This Skill

The agent should:

* plan systems that preserve the artistic philosophy;
* separate conceptual language from rendering medium;
* keep artistic decisions open when appropriate;
* provide practical architecture without killing ambiguity;
* create clear modules;
* include controllable parameters;
* support randomness, but always inside grammar;
* support user-provided starting points;
* allow the system to generate, mutate, save, and replay languages;
* explain why each technical component exists artistically;
* define what should be built first;
* define what should remain open for future creative direction.

The agent should avoid:

* turning the system into a generic generative art toy;
* assuming that randomness equals creativity;
* hardcoding one specific art style;
* defining symbolic meanings too early;
* making every parameter technical without artistic explanation;
* ignoring the viewer’s learning process;
* creating a climax that is merely louder, faster, or more chaotic;
* treating UI controls as arbitrary knobs instead of artistic forces;
* forgetting the movement from familiar to foreign to transformed return.

---

# Final Orientation

This skill should help the agent design systems that do not merely generate aesthetic material.

The system should generate a language, teach it, transform it, and allow the artist to study what happens when grammar becomes experience.

The technical system is therefore not only a generator.

It is a laboratory for meaning.
