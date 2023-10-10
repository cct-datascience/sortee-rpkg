library(tidyverse)
baked_goods_wide <- read_csv("baked_goods.csv")
baked_goods_wide |> 
  pivot_longer(c(-type, -recipe_id), names_to = "ingredient", values_to = "ammount_cups") |> 
  write_csv("baked_goods_long.csv")
