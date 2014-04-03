
% http://en.wikipedia.org/wiki/Bank_card_number#Issuer_identification_number_.28IIN.29
% http://creditcardjs.com/credit-card-type-detection





-module(ccerl).





-export([

    parse_bic/1

]).





%% @doc Parses a Bank Identification Code, also known as a BIC or a SWIFT code, in the 8 or 11 character forms.  http://en.wikipedia.org/wiki/ISO_9362

parse_bic([ IC1,IC2,IC3,IC4, CC1,CC2, LC1, LC2 ]) ->

    [   { institution, [IC1,IC2,IC3,IC4] },
        { country,     [CC1,CC2]         },
        { location,    [LC1,LC2]         }
    ].
