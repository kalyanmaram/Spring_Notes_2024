> **COMP 825: Programming Languages**

### Week-1 : Categorized Programming Languages

#### Pargadigm - Classify by structure of language
- imperative  
  - line-by-line
  - Ex : Perl
- functional  
  - purely function based
  - Ex : LISP
- logic     
  - logic based
  - Ex : Prolog
- visual
  - graphic elements
  - Ex : Scratch
- procedural
  - subroutine
  - Ex : C
- OOP
  - encapsulation
  - Ex : Java
- multi-paradigm
  - Ex : C++ 
#### Use
 - development
 - utility

#### Implementation
  - compiled
  - interpreted

#### Attributes
  - data type
    - dynamic vs static
  - format
    - free format like java
    - identation like python
    - line numbers
  - memory management
    - garbage collection
    - DIY 
  - generations
    - first generation : machine code
    - second generation : assembly (one-to-one mapping)
    - third generation : high level (one-to-many mapping)
    - forth generation- meta language (SQL,DB languages)
    - fifth generation - problem solvers (expert system)
  - cost
    - free - open source
    - paid - membership


### Week-2 : Perl, an imperative scripting language

#### Fundamentals : Compilers, Interpreters, & Context Free Grammars

- **Compilers and Interpreters**
  - tools used to code
  - source code is input
  - output different depending on each
    - for compiler, it outputs execuable
      - in many cases it's the computer's actual machine code
      - some cases go to intermediate(i.e. bytecode in Java)
    - for interpreter, it runs actual code itself
      - so it outputs the result of the run of your code
  - benefits to each (pros)
    - compiler creates efficinet stand-alone executable
      - tends to be faster
      - much more marketable
      - time-critical tasks rely on this (i.e. OS)
    - interpreter allows modification of source code
      - flexibility in changing code
  - cons
    - compiler can't change code
      - executable is machine dependent
        - well, except in-between'ers (i.e. Java)
    - interpreter is slow
      - also cannot protect source code

- **Context Free Grammars**
  - Backus Naur Form (BNF)
  - note that format looks like HTML but pre-dates it 
  - made up of terminals, non-terminals and production rule
    - terminals - represents keywords,symbols and literal values in your code
      - if ,10, ;
    - non- terminals - take on more complex meaning, i.e. represents construct
      - <**code**>,<**statement**>,<**conditional**>,<**loop**>
    - production rules,made up (for context free grammars) of:
      - a single non-terminal on the left-hand side, followed by ::=, followed by any number of terminal and non-terminal in any order
  - an example would be helpful
    - given address below, what would BNF grammar look like?
      - DR MIKE JONAS
      - 8 COLONIAL VILLAGE DRIVE
      - UNIT 10
      - ARLINGTON MA 02474

      - <**address**> ::= <**name**> <**street**> <**unit**> <**location**>
      - <**name**> ::= <**prefix**> <**first**> <**last**> | <**first**> <**last**>
      - <**street**> ::= <**number**> <**street-name**> <**street-type**>
      - <**unit**> ::= <**unit-type**> <**number**>
      - <**location**> ::= <**city**> <**state**> <**zip**>
      - <**zip**> ::= <**digit**><**digit**><**digit**><**digit**><**digit**>
      - <**state**> ::= AK | AL | AR | ... | UT | WY
      - <**street-type**> ::= STREET | ST | ROAD | RD | DRIVE | DR | ...
      - <**street-name**> ::= <**proper-name**>
      - <**number**> ::= <**digit**> | <**digit**><**number**>
      - <**digit**> ::= 0 | 1 | .. | 9
      - <**prefix**> ::= DR | MR | MRS | MS | ...
      - <**first**> ::= <**proper-name**>
      - <**last**> ::= <**proper-name**>
      - <**proper-name**> ::= <**char**> | <**char**><**proper-name**>
      - <**char**> ::= A | B | ... | Y | Z | - | ' 
    - given program
      - `int do(int a){ 
            a = a+2; 
            return a; 
        }`
      - <**program**> ::= <**function**>
      - <**function**> ::= <**type**> <**identifier**> "(" <**parameters**> ")" "{" <**statements**> "}"
      - <**type**> ::= "int"
      - <**identifier**> ::= <**char**> | <**char**><**identifier**>
      - <**parameters**> ::= <**type**> <**identifier**> | <**type**> <**identifier**> "," <**parameters**>
      - <**statements**> ::= <**statement**> | <**statement**> <**statements**>
      - <**statement**> ::= <**assignment**> ";" | <**return-statement**> ";"
      - <**assignment**> ::= <**identifier**> "=" <**expression**>
      - <**return-statement**> ::= "return" <**identifier**>
      - <**expression**> ::= <**identifier**> "+" <**number**>
      - <**number**> ::= <**digit**> | <**digit**><**number**>
      - <**digit**> ::= 0 | 1 | .. | 9
      - <**char**> ::= A | B | ... | Y | Z | a | b | ... | y | z