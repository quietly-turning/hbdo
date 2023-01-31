# load packages
library(wordcloud2)
library(tm)

# code is beautiful like soup
sentence <- "Do you believe in powerful typography? Evocatively arranged words stir my soul. Let them sing with color, size, skew, and cartesian translation. Happy belated birthday to a kind human being, an aficionado of beautiful typesetting, Oliver."

# remove punctuation, split on whitespace, simplify list to vector containing birthday wishes
wishes = unlist(strsplit(removePunctuation(sentence), " "))

# repeat each word in the birthday wishes vector using a uniformly random distribution of [5, 💯)
wishes <- rep(wishes, floor(runif(length(wishes), min=5, max=101)) )

# I jokingly googled "overhyped buzzwords about cloud computing" so I could
# include some kind of cute, jargon-laden comment here about how your birthday
# wishes live in the cloud or something, and I ended up getting completely serious
# articles with Credible Opening Sentences like "The most important part of cloud
# computing is understanding all of its buzzwords and where and how they may apply."
# and now I need an umbrella.

# hbdo arranges words like HDVO arranges arrows — exquisitely
wordcloud2(
  # table those wishes for now
  data=table(wishes),
  # more legible than rainbow(); have we learned nothing from StepMania?
  color="random-light",
  # pretty sure dark mode is trendy
  backgroundColor="black",
  minSize=10
)