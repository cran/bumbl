## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(bumbl)
library(car)

## -----------------------------------------------------------------------------
head(bombus)

## -----------------------------------------------------------------------------
out <- bumbl(bombus, colonyID = colony, t = week, formula = d.mass ~ week)
head(out)

## -----------------------------------------------------------------------------
out2 <- bumbl(bombus, colonyID = colony, t = week,
              formula = d.mass ~ week + cum_floral)
head(out2)

## -----------------------------------------------------------------------------
plot(out, colony = c("17", "104", "20", "24"))

## ----fig.width=5, fig.height=5------------------------------------------------
library(ggplot2)
p <- autoplot(out, colony = c("17", "104", "20", "24"))
p + theme_bw()

## -----------------------------------------------------------------------------
out3 <- bumbl(bombus, colonyID = colony, t = week, formula = d.mass ~ week, keep.model = TRUE)
head(out3)

## -----------------------------------------------------------------------------
library(dplyr)
library(purrr)
library(rsq)
#for a single colony
# m <- out3$model[[1]]
# rsq(m)

#for all colonies
out3.1 <-
  out3 %>% 
  mutate(r2 = purrr::map_dbl(model, rsq), .after = model)

out3.1 %>% filter(colony %in% c("104", "17", "20", "24"))

