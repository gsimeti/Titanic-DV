# titanic is avaliable in your workspace

# Check out the structure of titanic
str(titanic)

# Use ggplot() for the first instruction
ggplot(titanic, aes(x = factor(Pclass), fill = factor(Sex))) + geom_bar(position = "dodge")


# Use ggplot() for the second instruction
ggplot(titanic, aes(x = factor(Pclass), fill = factor(Sex))) + geom_bar(position = "dodge") + facet_grid(. ~ Survived)

# Position jitter (use below)
posn.j <- position_jitter(0.5, 0)

# Use ggplot() for the last instruction
ggplot(titanic, aes(x = factor(Pclass), y = Age, col = factor(Sex))) + geom_jitter(size = 3, alpha = 0.5, position = posn.j) + facet_grid(. ~ Survived)

ggplot(titanic, aes(x = Age, fill = factor(Sex))) + geom_histogram() + facet_grid(. ~ Survived)

# Recreate exercises with qplot - #1
qplot(factor(Pclass), fill = factor(Sex), data = titanic) #position is deprecated

# Recreate exercises with qplot - #2
qplot(factor(Pclass), fill = factor(Sex), data = titanic, facets = . ~ Survived) #position is deprecated

# Recreate exercises with qplot - #3
qplot(factor(Pclass), Age, data = titanic, facets = . ~ Survived, col = factor(Sex), alpha = I(0.5), geom = "jitter") # no position, size causes overplotting

qplot(factor(Pclass), Age, data = titanic, facets = . ~ Survived, fill = factor(Sex), alpha = I(0.5), geom = "jitter")

qplot(factor(Pclass), Age, data = titanic, facets = . ~ Survived, fill = factor(Sex), alpha = I(0.5), geom = "boxplot")
