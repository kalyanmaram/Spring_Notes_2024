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

### Week-3 : More wiht Perl 

#### Context Free Grammar 
  - My Notes

#### Porgramming Paradigms
 - Paradigms try and catagorize languages by their structuree
   - it's a way to identify important traits of languages
   - Helps us understand how to, perhaps, best use them
   - Some major paradigms include
     - Imperative
       - strictly execution of a program flows line-by-line and isn't structured into blocks or subroutines
       - many scripting languages fall into the category
       - example :Perl,bash,sh/csh,BAT,BASIC(original)
     - Procedural
       - programming is characterized by use of procedures... i.e. blocks of code (subroutines) tha form discrete units that can be called multiple times.
       - can be parameterized and also return information like functions so
         - a procedure that returns a value is a function 
         - a procedure that does not is a subroutine 
           - note that some languages call this a procedure(i.e. Pascal)
           - in C it's a void function
         - side-effect can be an important part of procedures
           - i.e. passing in an arguement as parameter can have an impact outside of that procedure
       - examples : C, Pascal
     - Functional:
       - Here we speak about pure function
         - so all functions have return values
         - there are no side-effects
         - very mathematical feel to it
         - program flow is done in the context of function execution... no procedural logic
           - No loop iteration
         - examples : Lisp, Scheme 
           - (Add 5 (* 4 6)(/ 8 2))
           - more intuitive than procedural/OOP
           - in C/C++/C#/Java :
             - `int trippleThis(int a){
              return a*3;}
              int doStuff(int a,int b){
                if(if (a<10) && if(b<2))// cannot do in c/c++/C#/Java
                return trippleThis(trippleThis(a))*b;
                return a+b;
              }
              `
     - Logic 
       - captures ideas symbolically, and works by declaring rules and reasoning about these rules
       - for instance, rules can established relationships (i.e. is-a) and deduce facts
       - example : Prolog
         - `animal(mammal).
          mammal(cougar).
          ?- mammal(cougar)
          yes
          ?- animal(couger)
          yes
          `
     - Visual 
       - characterized by using graphical elements to construct code
       - generally of the form of blocks that are combined to form more  complex behaviour
       - one interesting impact of this is that type checkoing can be done pro-actively 
         - can't fit a square peg into a round hole
       - examples : Scratch, AppInventor
     - Object Oriented (OOP)
       - characterized by encapsulation of information inot containers referred to as classes
       - data protection is key in OOP(i.e. private keyword is what makes it all work)
       - examples : C++/ C#/Java
     - Multi-paradigm 
       - Unfortunately, in practice, most languages do not limit themselves to a single paradigm, opting instead to implement features that are characteristics of many.
       - Useful for many and sometimes unavoidables
         - i.e. you can code C++ almost like C
         - ... so you turn an OOP language into Procedural
       - Unfortunately bad for others 
         - why is LISP multi-paradigm?!?!?!?
       - examples : C++ (OOP/procedural),LISP(functional/procedural/OOP)


### Week- 4 : Language Concepts :

 - fundamental unit is ?
   - we think of it as lines of code
   - better to think of statement 
     - fundamental component of a programming language that expresses some action to be caried out by program.
       - Examples : 
         - int a; // declaration
         - a = 0; // assignment
         - a = a+1; // assignment with expression
         - cout << 1; // system call
         - if (a>b) b = 1; //conditional 
         - while( i<10) i++; //loops
 - control flow
   - a program steps through its code line-by-line via statements which can change the flow
 - expression
   - are recursive by nature
   - computes some value using operators, constants, variables
   - evluates on right hand side of assignment
 - operators
   - symbol that specifies mathematical, relational, logical operation to be performed on operands ( i.e. arguments) with a purpose to produce results
   - bind together to form an expression
   - have inherent order to them (PEMDAS)
     - parenthesis override the EMDAS order


### Week-5 : 
Language concepts:
Variable 
  - major three values that are associated with a variable (
    - what it contains(value)) (
    - where it is in the memory(address)) (
    - how much size in memory does it possess (size of the variable)))
      - some are written in stone and some aren't
      - for instance rule in c:
        -  short<= int <= long

Variable types (help to specify usage size)(also can be used for syntactic checking (don't assign a float to a boolean (reason is due to size since you lose info when larger storage item assigned to smaller item) (and because it doesnt make any sense)))

Variable scope 
  - means who can see it
  - generally there are two scopes
    - global(can be seen outside of a function
      - instance varaibles in OOP are good globals and should be used
        - not using them can be bad
      - sometimes even variables outside of everything are ok
        - i.e. seed of a random number generator

local - can be seen only within a funtion
- local to a function
- local to block of code
- partly local to function
  - parameters (depend on mode)


#### Week-6 :

Parameter passes :
 - pass by value
 - pass by reference
 - in out

call by ref and deref in c
