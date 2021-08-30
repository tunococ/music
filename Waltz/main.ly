toBass = { \change Staff = "bass" }
toUpper = { \change Staff = "upper" }
toLower = { \change Staff = "lower" }

midiTempo =
#(define-music-function
    (parser location tempo)
    (number?)
    #{
        \once \omit Score.MetronomeMark
        \tempo 4=#tempo
    #})

musicA = {
    \clef treble
    \key d \major
    %{ Intro %}
    <<
        \relative a'{
            a8 d |
            b g~ g4 e8 a |
            fis d~ d4 b8 e |
            cis a d g e cis |
            fis b g e a d |
            \oneVoice b g cis fis d b |
            e a fis d gis cis |
            a4 r4
        }
        \\
        \relative f'{
            fis4 |
            d2 cis4 |
            a2 
        }
    >>
    <<
        \relative a' {
            a4 |
            \midiTempo 120
            g'2\turn\fermata~( g8
            \midiTempo 150
            a |
            \midiTempo 180
            fis4-)
        }
        \\
        \relative b' {
            s4 |
            b2\fermata( cis4 |
            d4)
        }
    >>
    %{ A-A %}
    \relative d'' {
        fis4.\( e8 | g2 fis4 |
        d2 cis8 d | cis b a4\) d |
        cis2\( b8 cis | b a g4\) cis |
        b4.\prall\( fis8 b4~ |
        b\) <fis a> <fis d'> |
    }
    %{ A-A2 %}
    \relative f' {
        r8 fis <a d> fis <a fis'>4 |
        r8 fis <a fis'> fis <a dis>4 |
        r8 e <gis b> e <ais e'>4 |
        r8 fis <b fis'> fis <b dis>4 |
        r8 e, <ais cis> e <ais e'>4 |
        r8 e <ais e'> e <ais cis>4 |
        r8 g! <b d!> g <b g'!> g |
    }
    <<
        { \voiceOne \relative e'' {
            s4 r8 e a fis | dis4
        }}
        \new Voice { \voiceTwo \relative c'' {
            <c e>8 g c2 | b4
        }}
    >>
    \relative d' { \oneVoice
    %{ A-B %}
        <dis fis>( <cis e>) |
        r <e gis>( <dis fis>) |
        fis'4.\( bis8 gis e |
        dis4. gis8 e cis |
        fis,4\) <cis e>( <b dis>) |
        r4 <dis fis>( <cis e>) |
        e'4.\( ais8 fis dis |
        cis4. fis8 dis b |
        e,4\)
    }
    %{ A-B2 %}
    <<
        \relative g' {
            gis8 cis a! fis |
            r4 cis'8 fis dis bis |
            r4 a8 dis bis gis |
            r4 d'8 gis eis cis |
            r4 gis'8 cis a fis |
            r4 cisis8 fis dis b |
            e,-. gis-. b-. e-. gis-. b-. |
            e4
        } \\
        \relative e' {
            e4 cis |
            r4 a' fis |
            r4 fis dis |
            r4 b' gis |
            r4 eis' cis |
            gis2 fis4 |
            s4 e8 gis-. b-. e-. |
            gis4
        }
    >>
    r2
    %{ A-C %}
    \relative a' {
        <a cis>2\( <b d>4 | <gis bis>2 <a cis>4 |
        <cis e>8 r8 r <c ees> <b d>4~ |
        <b d>\) <cis e>8\( <b d> <cis e> <d fis> |
        <e gis> r r <b d> <e gis>4~ |
        <e gis>\) <b d>8\( <ais cis> <b d> <cis e> |
        <d fis> r r <a cis> <d fis>4~ |
        <d fis>8\) gis <d e> fis <b, d> e |
        <a, cis>2\( <b d>4 | <gisis bis>2 <ais cis>4 |
        <cis e>8 r r <c ees> <b d>4~ |
        <b d>\) <dis fis>8\( <cisis eis> <dis fis> <eis gis> |
        <fis a> r r <cis eis> <fis a>4~ |
        <fis a>
    }
    <<
        { \voiceOne \relative f'' {
            gis4 eis | fis\)
        } }
        \new Voice { \voiceTwo \relative a' {
            a8 dis b gis | fis4
        } }
    >>
    r2 | r4
    \relative e'' {
        e2\turn
    }
    %{ A-C2 %}
    <<
        { \voiceOne \relative c'' {
            \ottava #0
            <cis cis'>2\( <d d'>4 |
            <bis bis'>2 <cis cis'>4 |
            <e e'>8 r r <ees ees'> <d d'>4~ |
            <d d'>\) <e e'>8\( <d d'> <e e'> <fis fis'> |
            <gis gis'> r r <d d'> <gis gis'>4~ |
            <gis gis'>\) <d d'>8\( <cis cis'> <d d'> <e e'> |
            <fis fis'> r r <cis cis'> <fis fis'>4~ |
            <fis fis'>8\) <e e'> <g g'> <f f'> <e e'> <d d'> |

            <cis cis'>2\( <d! d'!>4 |
            <bis bis'>2 <cis cis'>4 |
            <e e'>8 r r <ees ees'> <d d'>4~ |
            <d d'>\) cis'8\( f d b |
            e \ottava #0 cis a fis b gis |
            e cis fis d b gis |
            a cis-. e-. a-. cis-. e-. |
            a4\)
        } }
        \new Voice { \voiceTwo \relative e'' {
            \ottava #0
            e2 fis4 | gis2 a4 |
            fis2 gis4 | ais2 b4 |
            cis4 r4 d4 | ais2 b4 |
            bis4 r4 cis4 | g!2 gis4 |

            r4 eis4 fis | g! a bes |
            a g fis | f a f8 g~ |
            g e4 dis b8~ | b8 ais4 fis e8~ |
            e4 a8-. cis-. e-. a-. | cis4
        } }
    >>
    r2
    %{ A-D %}
    \relative b' { \oneVoice
        b2 <gis e'>4 |
        cis <e, a> r |
        fis2 <dis b'>4 |
        gis <b, e> r |
        b e r |
        c a r |
        a d r |
        c fis r |
        e a g |
        c b e |
        c2 }
    <<
        \relative f'' {
            fis4~\fermata | fis d2\fermata |
        } \\
        \relative a' {
            a4 | g\fermata fis2\fermata |
        }
    >>
    \bar "||"
    %{ B-A %}
    \key g \major
    \tempo "Allegro" 4=135
    \relative g' {
        r8 b r b c4~ | c d r8 e |
        e gis, r gis a4~ | a b r8 c |
        c e, r e fis4~ | fis g! r8 a |
        a d, r d e4~ | e fis r8 g |
        g a r a b4~ | b cis r8 dis |
        dis fis, r fis g4~ | g a r8 b |
        b gis r gis a4~ | a b r8 c |
        c e, r e fis4~ | fis g a |
    %{ B-B %}
        <g b>8 d r4 r8 <g b> |
        d <fis a> d r <dis fis>4 |
        <e g>8 b r4 r8 <e g> |
        b <d fis> b r <b d>4 |
        \clef bass
        <c e>8 g r4 r8 <c e> |
        g <b d> g r <gis b>4 |
        <a cis>8 e r4 \clef treble cis'8 e |
        g b fis4 e8 g |
        b d a4 g8 b |
        d fis c e g b |
        fis a c e r4\fermata |
        \midiTempo 120
        r_\markup{\italic{rit.}} c,8 e g bes |
        \midiTempo 100
        f a
        \midiTempo 80
        c ees r4\fermata |
    }
    %{ B-C %}
    \key bes \major
    \tempo "A tempo" 4=135
    <<
        { \relative e'' { \voiceOne
            s2 ees4~ |
            ees f8 s4. |
            s2 c4~ |
            c d8 s4. |
            s2 a4~ |
            a bes8 s4. |
            s2 g4~ |
            g a8 s4. |
            s2 d4~ |
            d e8 s4. |
            s2 bes4~ |
            bes c8 s4. |
            s2 c4~ |
            c4 d8 s4. |
            s2 a4~ |
            a4 bes c |
        } }
        \new Voice { \relative b' {
            \oneVoice
            r8 <bes d> r <bes d> \voiceTwo c4~ |
            c8 cis8 d \oneVoice r r <b g'> |
            <ees g> <g, b> r <g b> \voiceTwo a4~ |
            a8 bes b \oneVoice r r <g ees'> |
            <c ees> <ees, g> r <ees g> \voiceTwo f4~ |
            f8 fis g \oneVoice r r <e c'> |
            <a c> <d, f> r <d f> \voiceTwo ees4~ |
            ees8 e f \oneVoice r r <d bes'> |
            <g bes> <a c> r <a c> \voiceTwo bes4~ |
            bes8 c cis \oneVoice r r <a fis'> |
            <d fis> <fis, a> r <fis a> \voiceTwo g4~ |
            g8 gis a \oneVoice r r <f d'> |
            <b d> <g b> r <g b> \voiceTwo a4~ |
            a8 ais b \oneVoice r r <g ees'> |
            <c ees> <ees, g> r <ees g> \voiceTwo f4~ |
            f8 fis g d ees e |
        } }
    >>
    %{ B-D %}
    \relative f' {
        \oneVoice
        <f d'>8 <d bes'> r4 r8 <d bes' d> |
        f <c a' c> f r <c fis a>4 |
        <d bes'>8 <bes g'> r4 r8 <bes g' bes> |
        d <a f' a> d r <aes d f>4 |
        <bes g'>8 <g ees'> r4 \midiTempo 140 bes'8 f |
        aes c g4 \midiTempo 135 <c, a'> |
        <d b'>8 <b g'> r4 \midiTempo 140 d'8 aes |
        c ees b4 \midiTempo 135 <f d'> |
        \tempo "Piu Animato"
        <g e'>8 <e c'>
    }
    <<
        \relative e'' {
            \voiceOne
            \midiTempo 140
            r8 e f4~ |
            f g8 \oneVoice r r \ottava #1 \voiceOne <e bes' e> |
            <e  e'> <f c' f> r <f f'> <g g'>4~ |
            <g g'> <aes aes'>8 \ottava #0 r ces, f |
            d bes \midiTempo 145 r d ees4~ |
            ees f8 \oneVoice r r \ottava #1 \voiceOne <d aes' d> |
            <d d'> <ees bes' ees> r <ees ees'> <f f'>4~ |
            <f f'> <g g'>8 \ottava #0
            \oneVoice r8 \voiceOne bes, ees |
            c aes
        }
        \new Voice { \relative g' {
            \voiceTwo
            g8 c aes f |
            bes g e s4. |
            s4 aes'8 des bes g |
            c aes f r ees, a |
            f d f bes ges ees |
            aes f d s4. |
            s4 g'8 ces aes f |
            bes g ees s <des, g>4 |
            ees
        } }
    >>
    %{ B-E %}
    <<
        \relative a' {
            \oneVoice r8
            \voiceOne \midiTempo 150 <aes aes'> <bes bes'>4~ |
            <bes bes'> <b b'> r8 <c c'> |
            <c c'> <f, f'> \oneVoice r <f f'> <g bes g'> <aes e' aes> |
            <g ces g'> <f aes f'> <ees ees'>4 \voiceOne <aes, aes'> |
            <ges ges'>4 r8 \voiceOne <ges' ges'> <aes aes'>4~ |
            <aes aes'> <a a'> r8 <bes bes'> |
            <bes bes'> <ees, ees'> r <ees ees'> <f aes f'> <ges d'! ges> |
            <f beses f'> <ees ges ees'> <des des'>4
            \key d \major \clef bass <fis, fis'> |
            \tempo "Agitato" \oneVoice <e gis b e>
        }
        \new Voice { \relative d'' {
            \voiceTwo s4 des4~ |
            des8 g4. e4~ |
            e8 c s2 |
            s2 ces,8 f |
            des bes s4 ces'~ |
            ces8 f4. d4~ |
            d8 bes s2 |
            s2 a,8 dis |
        } }
    >>
    %{ B-F %}
    <<
        \clef treble
        \relative e' {
            \voiceOne
            \midiTempo 155
            <e e'>4. <d d'>8 |
            <f f'>2 <e e'>4 |
            r4 <a a'>4. <gis gis'>8 |
            <b b'>2 <a a'>4 |
            <f, a c f>
            \midiTempo 160
            <f' f'>4. <ees ees'>8 |
            <ges ges'>2 <f f'>4 |
            s4 <bes bes'>4. <a a'>8 |
            <ces ces'>2 <bes bes'>4 |
            <fis, ais cis fis>
            \midiTempo 165
            <fis' fis'>4. <e e'>8 |
            <g! g'!>2 <fis fis'>4 |
            s4 <dis' b' dis>4. <cisis ais' cisis>8 |
            <e e'>2 <dis dis'>4 |
            \midiTempo 140
            \oneVoice <gis b d gis>
            \midiTempo 150
            \voiceOne d'8 gis \midiTempo 160 e cis |
            \midiTempo 165 a d b gis \midiTempo 150 <gis, e'>4 |
            r \midiTempo 155 \ottava #+1 g''8 cis a fis |
            \midiTempo 160
            d g e \midiTempo 165 cis a d |
            \ottava #0 \midiTempo 170 b g e \midiTempo 175 a fis d |
            \midiTempo 180 g e cis \midiTempo 185 fis d b |
            \midiTempo 190
            e cis a \midiTempo 195 d b g |
            \midiTempo 200 cis a fis \midiTempo 205 b g e |
            \midiTempo 180
            \voiceTwo
            \tuplet 3/2 { a8 fis d }
            \tuplet 3/2 { g e cis }
            \tuplet 3/2 { fis d b } |
            \clef bass
            \tuplet 3/2 { e cis a }
            \tuplet 3/2 { d b g }
            \tuplet 3/2 { cis a fis } |
            b4
        }
        \new Voice { \relative g' {
            \voiceTwo
            gis8 c a fis |
            b2. |
            d,8 a c e g d |
            f a c gis s4 |
            s4 a8 d bes g |
            c2. |
            ees,8 bes d f aes ees |
            ges bes d a s4 |
            s4 ais8 d b gis |
            cis2. |
            e,8 b dis f! a e |
            c''4 g!8 c a fis! |
            s4 b gis |
            fis d s |
            s e' cis |
            b g fis |
            d cis a8 b~ |
            b g a4 fis8 g~ |
            g e fis4 d8 e~ |
            e cis d4 s4 |
            \voiceOne a' g fis |
            e d cis |
            b \oneVoice r2 |
        } }
    >>
    %{ B-G %}
    \relative e {
        \oneVoice
        r4 e8 a fis dis |
        gis cis a fis b e |
        cis ais \clef treble dis gis e cis |
        fis b g e a d |
        b gis cis fis d b |
        e a fis d gis cis |
        a4 r
    }
    <<
        \relative a' {
            a4 |
            \midiTempo 100
            g'2\turn\fermata~( g8 a |
            \midiTempo 180
            fis4-)
        }
        \\
        \relative b' {
            s4 |
            b2\turn\fermata( cis4 |
            d4)
        }
    >>
    %{ C-A %}
    \tempo "A tempo" 4=180
    <<
        \relative f'' {
            \voiceOne
            fis4. e8 |
            g2 fis4 |
            d2 cis8 d |
            cis b a4 d |
            cis2 b8 cis |
            b a g4 cis |
            b4. fis8 b4 |
            r4 <fis a> <fis d'> |
        }
        \new Voice { \relative d'' {
            \voiceTwo
            d8 a cis e~ |
            e2 d4 |
            r8 fis, b gis eis4 |
            r4 g8 d fis a |
            r8 dis, g e cis r |
            r8 bis e cis s4 |
            r4 cis8 fis d b |
            eis cis a r r4 |
        } }
    >>
    %{ C-B %}
    <<
        \relative e'' {
            \voiceOne
            r4 ees8 bes d fis |
            a e g bes d4 |
            r4 g,8 d f a |
            c g bes d f4 |
            ees,8 a f d g ees |
            c f des bes ees c |
            a bes d f bes d |
            d, g ees c f d |
            b c ees g c ees |
            f, bes ges ees c fis |
            d b g4 b8 eis |
        }
        \new Voice { \relative d' {
            \voiceTwo
            r4 r8 d g ees |
            c4 r8 e a fis |
            d g ees c f4 |
            r4 r8 f' bes g |
            r4 f, bes |
            ges ees a |
            f d r |
            r fis b |
            g ees r |
            r c' a |
            f d
        } }
    >>
}

musicB = {
    \clef bass
    \key d \major
    %{ Intro %}
    r4
    r2.
    r2
    \relative g {
        g4 |
        e b' g | d' b fis' |
    }
    \clef treble
    \relative d' {
        d a' fis | cis' a <e d'> | <a cis>
    }
    r2 | r2. |
    \clef bass
    %{ A-A %}
    \relative d {
        d4 <a' d> <a cis> |
        d, <a' e'> <a d> |
        d, <a' fis'> <g e'> |
        d <fis d'> <fis a> |
        a, <g' e'> <fis d'> |
        a, <e' cis'> <e g> |
        d <fis d'> <eis cis'> |
        d,8_\( a' b d fis a |
    }
    %{ A-A2 %}
    \relative b {
        b4\) b4._\( a8 | cis2 b4 |
        gis2 fis8 gis | fis e dis4\) gis |
        fis2_\( e8 fis | e dis cis4\) fis |
        e4._\( b8 d4~ | d8 a c4. g8\) |
    %{ A-B %}
        b4.\( fis8 ais cis\) |
        cis4.\( gis8 bis dis\) |
        gis4 <dis' gis> <cis gis'> |
        gis <bis gis'> <cis gis'> |
        ais,4.\( e8 gis b\) |
        b4.\( fis8 ais cis\) |
        fis4 <cis' fis> <b fis'> |
        fis <ais fis'> <b fis'> |
    %{ A-B2 %}
        gis,4.\( dis8 fis a! |
        e' bis dis fis\) r4 |
        a,4.\( e8 gis bis |
        fis' cis eis gis\) r4 |
        fis,
    }
    <<
        \relative f' {
            fis4. eis8 |
        } \\
        \relative c' {
            cis2 |
        }
    >>
    \relative b, {
        b4 <b' a'> r4 | e,,4 r2 | r2. |
    }
    %{ A-C %}
    \relative a, {
        a4 a'~ <gis a> | a, <fis' a~> <e a> |
        b b'~ <a b> | b, <gis' b~> <fis b> |
        e, <cis'' d~> <b d> | e,, <a' d~> <gis d'> |
        a, <b' cis~> <ais cis> |
        e, <a' b~> <gis b> |
        a, a'~ <gis a> | ais, <fis' cis'~> <e cis'> |
        b b'~ <a b> | bis, <gis' dis'~> <fis dis'> |
        cis <d' fis~> <cis fis> | cis,, <bis'' cis~> <b cis> |
    }
    <<
        \relative g {
            s4. gis8 cis a | fis4 r2
        } \\
        \relative a {
            a8\( fis bis, eis8 cis a | fis4\) e2
        }
    >>
    %{ A-C2 %}
    <<
        {
            \clef treble
            \relative a {
                r4 <a a'>8 e' <gis, gis'>4 |
                r4 <fis fis'>8 cis' <e, e'>4 |
                r4 <b' b'>8 fis' <a, a'>4 |
                r4 <gis gis'>8 d' <fis, fis'>4 |
                r4 <ais ais'>8 fis' <b, b'>4 |
                r4 <fisis fisis'>8 e' <gis, gis'>4 |
                r4 <gis gis'>8 e' <a, a'> e' |
                <ais, ais'>2 <b b'>4 |
                r <dis a'>8 a <a e'>
                    \toBass e \toLower |
                r4 <d' a'>8 a! <a ees'>
                    \toBass ees \toLower |
                r4 <cis' a'>8 a <a d>
                    \toBass d, \toLower |
                r4 f'8 g a b |
                <e, a cis>4
                \clef bass
                <bis dis>-. <b d>-. |
            }
            <<
                \relative a {
                    <ais cis>4-. <a c>-. <gis b>-.
                } \\
                \relative e {
                    e2.
                }
            >>
            \relative a, {
                <a a'>4 s2 |
                r2. |
            }
        }
        \new Staff = "bass" {
            \key d \major
            \once \omit Staff.TimeSignature
            \clef bass
            \relative a, {
                a4 r r | e r r | b' r r | fis r r |
                b r r | e, r r | a r r | r e2 |
                a4 s2 | g4 s2 | fis4 s2 | f4 s2 |
            }
        }
    >>
    %{ A-D %}
    \relative e' {
        r4 e8 b d fis |
        e4 a,8 e gis b |
        a4 b8 fis a cis |
        b4 e,8 b d f |
        e4_\markup{\italic{poco a poco dim. e rit.}}
        \midiTempo 175
        a,8 e gis b |
        \midiTempo 170
        a4 d,8 a c e |
        \midiTempo 165
        d4 b'8 fis a c |
        \midiTempo 160
        e4 d8 a c e |
        \midiTempo 145
        g4_\markup{\italic{calando}} c,8 fis d b |
        \midiTempo 130
        e[ a fis d] g[ c |
        \midiTempo 120
        a fis]  
    }
    <<
        \relative c' {
            s4 c4~\fermata | c2.
        } \\
        \relative b {
            b8 e c a~\fermata |
            \once \omit Score.MetronomeMark
            \tempo 4=60
            a2.
        }
    >>
    \bar "||"
    \key g \major
    \relative g, {
        g4 d'' r8 <d e> | g, <d' fis> r4 <d g> |
        c,, <a'' b> r8 <a c> | e <a d> r4 <a e'> |
        d,, <fis' gis> r8 <fis a> | d <fis b> r4 <fis c'> |
        g, <d' fis> r8 <d g> | g, <d' a'> r4 <d b'> |
        b <b' cis> r8 <b dis> | fis <b e> r4 <b fis'> |
        e,, <g' a> r8 <g b> | e <g cis> r4 <g d'> |
        a, <a' b> r8 <a c> | e <a d> r4 <a e'> |
        d,, <a'' c> r8 <a cis> | d, d'4 e fis8 |
    %{ B-B %}
        r4 g,8 r g,4~ |
        g8 d' fis r a b,~ |
        b4 e8 r e,4~ |
        e8 b' d r f g,~ |
        g4 c8 r c,4~ |
        c8 g' b r d e,~ |
        e4 a8 cis e g |
        d4 c8 e g b |
        fis4 e8 g b d |
        \clef treble a c e g d fis |
        a c r2\fermata |
        ais,8 c e g dis f |
        a c r2\fermata |
    }
    %{ B-C %}
    \key bes \major
    \relative b, {
        \clef bass bes4
        \clef treble f'' r8 <f g> |
        bes, <f' a> r4 <f bes>8 r |
        \clef bass ees,4
        <c' d> r8 <c ees> |
        g <c f> r4 <c fis>8 r |
        f,4 <a b> r8 <a c> |
        f <a d> r4 <a ees'>8 r |
        bes,4 <f' a> r8 <f bes> |
        bes, <f' c'> r4 <f cis'>8 r |
        d4 \clef treble <d' e> r8 <d fis> |
        a <d g> r4 <d gis>8 r |
    }
    \clef bass
    <<
        \relative e' {
            \voiceOne
            s4 ees d |
            cis c b |
        }
        \new Voice { \relative g, {
            \oneVoice g4 \voiceTwo g'4. g8~ |
            g g4 r8 g4 |
        } }
    >>
    \relative c {
        \oneVoice
        c4 \clef treble <c' d> r8 <c ees> |
        g <c f> r4 <c fis>8 r |
    }
    \clef bass
    <<
        \relative d' {
            \voiceOne s4 des c | b bes a |
        }
        \new Voice { \relative f, {
            \oneVoice f \voiceTwo f'4. f8~ |
            f8 f4 r8 f4
        } }
    >>
    %{ B-D %}
    \relative b, {
        \oneVoice
        bes4 bes'8 r bes,,4~ |
        bes8 f' c' a' r d, |
        g,4 g'8 r g,,4~ |
        g8 d' a' f' r bes, |
        ees,4 f'8 c ees g |
        d4 ees8 a fis d |
        g,4 aes'8 ees g b  |
        fis4 aes8 d b g |
        c4 <c,, c'> r8 <f' des'> |
        c <g' ees'> r4 <c, c'> |
        <f, f'>
    }
    <<
        \clef treble
        \relative a' {
            \voiceOne
            aes8 des bes g |
            c aes f
        }
        \new Voice { \relative f' { 
            \voiceTwo
            f4 d8 e~ | e c4
        } }
    >>
    \relative f, {
        \oneVoice r8
        \clef bass
        <f f'>4 |
        <bes, bes'> <d' bes'> r8 <ees ces'> |
        bes <f' des'> r4 <bes, bes'> |
        <ees, ees'>
    }
    <<
        \clef treble
        \relative g' {
            \voiceOne
            g8 ces aes f |
            bes g ees
        }
        \new Voice { \relative e' {
            \voiceTwo
            ees4 ces8 d~ |
            d bes4.
        } }
    >>
    \clef bass
    \relative e, {
        \oneVoice
        <ees ees'>4 |
        <aes, aes'>
    }
    %{ B-E %}
    \relative c {
        <c c'>4. <bes bes'>8 |
        <des des'>2 <c c'>4 |
        <aes aes'> <f, f'> r8 bes'' |
        ees! ces aes r <des,, des'>4 |
        <ges, ges'> <bes' bes'>4. <aes aes'>8 |
        <ces ces'>2 <bes bes'>4 |
        <ges ges'> <ees, ees'> r8 aes'' |
        des! beses ges r
        \key d \major <b, b'>4 |
        <e, e'>
    }
    %{ B-F %}
    \relative e,, {
        <e e'>4 r8 b'' |
        d f a e gis b |
    }
    <<
        \relative g' {
            \voiceOne s2. | s2. | s2. | s2. |
            s2. | s2. | s2. | s2. |
            s2. | \clef treble gis8 bes d ais <b, b'>4 |
            s4 \oneVoice \clef treble b8 d fis a |
            e gis b d s4 |
            s \clef treble b8 fis a cis |
            fis, cis e g cis, g |
            b d a' fis d g |
            e cis fis d b e |
            \clef bass cis a d b g cis |
            \voiceOne
            s2 b8 cis~ |
            \tuplet 3/2 { cis4 b8~ }
            \tuplet 3/2 { b4 a8~ }
            \tuplet 3/2 { a4 g8~ } |
            \tuplet 3/2 { g4 fis8~ }
            \tuplet 3/2 { fis4 e8~ }
            \tuplet 3/2 { e4 d8~ } |
            d4
        }
        \new Voice { \relative e, {
            \oneVoice e4 e'2 |
            r2. |
            <e, ees'>4 <e, e'> r8 c'' |
            ees ges bes f a c |
            \oneVoice e,,4 e'2 |
            r2. |
            <e, e'>4 <e, e'> r8 cis'' |
            eis g! b fis ais c! |
            e,,4 e'2 |
            s2. |
            \clef bass
            <e, e'>4 s2 |
            s2 \clef bass <e e'>4 |
            <a, a'> s2 |
            s2. |
            s2. |
            s2. |
            s2. |
            \voiceTwo
            a''8 fis b g e a |
            \tuplet 3/2 { fis8 d g }
            \tuplet 3/2 { e cis fis }
            \tuplet 3/2 { d b e } |
            \tuplet 3/2 { cis a d }
            \tuplet 3/2 { b g cis }
            \tuplet 3/2 { a fis b } |
            g4 r2 |
        } }
    >>
    %{ B-G %}
    \relative g,, {
        \oneVoice
        <g g'>4 <g' a> r8 <fis b> |
        eis cis' <fis, d'> r <gis d'>4 |
        <fis, fis'>4 <fis'' gis> r8 <e ais> |
        dis b' <e, c'> r <fis c'>4 |
    }
    <<
        \relative a' {
            \voiceOne
            s4 a gis | fis e d |
        }
        \new Voice { \relative e, {
            <e e'>4 
            \voiceTwo
            cis'' r8 b~ |
            b e, r4 <e b'> | 
            \oneVoice <a cis> a, r |
        }}
    >>
    \relative d, {
        \oneVoice r2. | <d d'>4
    }
    %{ C-A %}
    <<
        \relative d' {
            \voiceOne
            d4. cis8 |
            r8 b e cis a4 |
            r4 fis4. gis8~ |
            gis cis a fis r4 |
            r4 a e |
            g bes a8 e |
            g b fis d gis4 |
        }
        \new Voice { \relative a {
            \voiceTwo
            a4 a |
            d, a' a |
            d, b' b |
            d,4 r d |
            a bis' s |
            a, r r |
            d r8 d~ d4 |
            d,8 a' b d fis a |
        } }
    >>
    %{ C-B %}
    \relative b {
        \oneVoice
        bes4 bes4. a8 |
        c2 bes4 |
        g2 f8 g |
        f ees d4 g |
        f2 ees8 f |
        ees d c4 f |
        d bes f'8 g |
        f ees d4 g |
        ees c c'8 des |
        c bes aes4 d |
        b8 a g4 cis |
        ais8 gis fis4 b |
        gis8 fis e4
    }
}

\score {
    \new PianoStaff {
        \accidentalStyle piano
        \time 3/4
        \partial 4
        <<
            \context Staff = "upper" {
                \tempo "Allegro Vivace" 4=180
                \musicA
            }
            \context Staff = "lower" {
                \musicB
            }
        >>
    }
    \layout {}
    \midi {}
}
