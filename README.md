
# Double Auction

Double auction mechanism for one-time centralized market clearing

## Introduction

> Most of the classic auctions examined in introductory surveys of auction theory are one-sided, in that a single seller (or buyer). accepts bids from multiple buyers or sellers. Two-sided, or double auctions, in contrast, permit multiple buyers and sellers to bid to exchange a designated commodity. The continuous double auction (CDA), matches buyers and sellers immediately on detection of compatible bids. A periodic version of the double auction (sometimes termed a call market or clearing-house) instead collects bids over a specified interval of time, then clears the market at the expiration of the bidding interval. [_wurman1998flexible_]

Most types of auctions can be characterized in terms of how they manage three core activities. [_wurman1998flexible_]

1. Process bid. The auction checks a bid for validity, and updates its database of active bids
accordingly.
2. Generate price quote. During the bidding period, the auction may reveal information about the status of bids. We refer to such reports generically as price quotes, as they are typically defined in terms of hypothetical prices. In the AuctionBot and in this paper, we define a price quote as the price that the agent would have had to offer in order for its bid to have been accepted had the auction cleared at the time of the quote. This definition is expressed in past tense and subjunctive mood to emphasize that the price quote represents historical hypothetical information.
3. Clear. The primary function of an auction is to determine contracts between compatible buyers and sellers. The clear action matches buyers and sellers, and sets the transaction price.

## Docs

1. [Market Design using Double Auction](https://github.com/edxu96/DoubleAuction/blob/master/docs/Market.md)
2. [Application in Power Industry](https://github.com/edxu96/DoubleAuction/blob/master/docs/DA-Power.md)
3. [Double Auction under Uncertainty](https://github.com/edxu96/DoubleAuction/blob/master/docs/DA-Uncertainty.md)
4. [Continuous Double Auction](https://github.com/edxu96/DoubleAuction/blob/master/docs/cda.md)
