library(tidyverse)
library(dplyr)
library(readxl)
library(writexl)

#setwd to currently executing script location
args <- commandArgs(trailingOnly = TRUE)
if (length(args) > 0) {
  script_path <- normalizePath(args[1])
  script_dir <- dirname(script_path)
  setwd(script_dir)
}

# read in all files from data_from_frank
s10_2021 = read_excel("../data/data_from_frank/season_export_10-2021.xlsx")
s11_2021 = read_excel("../data/data_from_frank/season_export_11-2021.xlsx")
s12_2021 = read_excel("../data/data_from_frank/season_export_12-2021.xlsx")
s01_2022 = read_excel("../data/data_from_frank/season_export_01-2022.xlsx")
s02_2022 = read_excel("../data/data_from_frank/season_export_02-2022.xlsx")
s03_2022 = read_excel("../data/data_from_frank/season_export_03-2022.xlsx")
s04_2022 = read_excel("../data/data_from_frank/season_export_04-2022.xlsx")
s05_2022 = read_excel("../data/data_from_frank/season_export_05-2022.xlsx")
s06_2022 = read_excel("../data/data_from_frank/season_export_06-2022.xlsx")
s07_2022 = read_excel("../data/data_from_frank/season_export_07-2022.xlsx")
s08_2022 = read_excel("../data/data_from_frank/season_export_08-2022.xlsx")
s09_2022 = read_excel("../data/data_from_frank/season_export_09-2022.xlsx")
s10_2022 = read_excel("../data/data_from_frank/season_export_10-2022.xlsx")
s11_2022 = read_excel("../data/data_from_frank/season_export_11-2022.xlsx")
s12_2022 = read_excel("../data/data_from_frank/season_export_12-2022.xlsx")
s01_2023 = read_excel("../data/data_from_frank/season_export_01-2023.xlsx")
s02_2023 = read_excel("../data/data_from_frank/season_export_02-2023.xlsx")

# read in all files from data_from_discord
s03_2023 = read_excel("../data/data_from_discord/aws25 [Season Stats_ 2023-03].xlsx")
s04_2023 = read_excel("../data/data_from_discord/aws25 [Season Stats_ 2023-04].xlsx")
s05_2023 = read_excel("../data/data_from_discord/aws25 [Season Stats_ 2023-05].xlsx")
s06_2023 = read_excel("../data/data_from_discord/aws25 [Season Stats_ 2023-06].xlsx")
s07_2023 = read_excel("../data/data_from_discord/aws25 [Season Stats_ 2023-07].xlsx")
s08_2023 = read_excel("../data/data_from_discord/aws25 [Season Stats_ 2023-08].xlsx")
s09_2023 = read_excel("../data/data_from_discord/aws25 [Season Stats_ 2023-09].xlsx")
s10_2023 = read_excel("../data/data_from_discord/aws25 [Season Stats_ 2023-10].xlsx")
s11_2023 = read_excel("../data/data_from_discord/aws25 [Season Stats_ 2023-11].xlsx")
s12_2023 = read_excel("../data/data_from_discord/aws25 [Season Stats_ 2023-12].xlsx")

# add a season column to each file
s10_2021 = s10_2021 %>% mutate(Season = "10_2021")
s11_2021 = s11_2021 %>% mutate(Season = "11_2021")
s12_2021 = s12_2021 %>% mutate(Season = "12_2021")
s01_2022 = s01_2022 %>% mutate(Season = "01_2022")
s02_2022 = s02_2022 %>% mutate(Season = "02_2022")
s03_2022 = s03_2022 %>% mutate(Season = "03_2022")
s04_2022 = s04_2022 %>% mutate(Season = "04_2022")
s05_2022 = s05_2022 %>% mutate(Season = "05_2022")
s06_2022 = s06_2022 %>% mutate(Season = "06_2022")
s07_2022 = s07_2022 %>% mutate(Season = "07_2022")
s08_2022 = s08_2022 %>% mutate(Season = "08_2022")
s09_2022 = s09_2022 %>% mutate(Season = "09_2022")
s10_2022 = s10_2022 %>% mutate(Season = "10_2022")
s11_2022 = s11_2022 %>% mutate(Season = "11_2022")
s12_2022 = s12_2022 %>% mutate(Season = "12_2022")
s01_2023 = s01_2023 %>% mutate(Season = "01_2023")
s02_2023 = s02_2023 %>% mutate(Season = "02_2023")
s03_2023 = s03_2023 %>% mutate(Season = "03_2023")
s04_2023 = s04_2023 %>% mutate(Season = "04_2023")
s05_2023 = s05_2023 %>% mutate(Season = "05_2023")
s06_2023 = s06_2023 %>% mutate(Season = "06_2023")
s07_2023 = s07_2023 %>% mutate(Season = "07_2023")
s08_2023 = s08_2023 %>% mutate(Season = "08_2023")
s09_2023 = s09_2023 %>% mutate(Season = "09_2023")
s10_2023 = s10_2023 %>% mutate(Season = "10_2023")
s11_2023 = s11_2023 %>% mutate(Season = "11_2023")
s12_2023 = s12_2023 %>% mutate(Season = "12_2023")

# standardize all column names
# names_old is for files before Feb 2023
names_old = c("Name", "Tag", "Clan", "Town_Hall", "Donated", "Received", "Attacks", "Builder_Attacks", "Trophies_Gained", "End_Trophies", "Builder_Trophies_Gained", "War_Stars", "CWL_Stars", "Gold", "Elixir", "Dark_Elixir", "Clan_Games", "Capital_Gold_Looted", "Capital_Gold_Donated", "Activity_Score", "Season")
# names_new is for files including and after Feb 2023
names_new = c("Name", "Tag", "Discord", "Clan", "Town_Hall", "Donated", "Received", "Attacks", "Builder_Attacks", "Trophies_Gained", "End_Trophies", "Builder_Trophies_Gained", "War_Stars", "CWL_Stars", "Gold", "Elixir", "Dark_Elixir", "Clan_Games", "Capital_Gold_Looted", "Capital_Gold_Donated", "Activity_Score", "Season")

colnames(s10_2021) = names_old
colnames(s11_2021) = names_old
colnames(s12_2021) = names_old
colnames(s01_2022) = names_old
colnames(s02_2022) = names_old
colnames(s03_2022) = names_old
colnames(s04_2022) = names_old
colnames(s05_2022) = names_old
colnames(s06_2022) = names_old
colnames(s07_2022) = names_old
colnames(s08_2022) = names_old
colnames(s09_2022) = names_old
colnames(s10_2022) = names_old
colnames(s11_2022) = names_old
colnames(s12_2022) = names_old
colnames(s01_2023) = names_old

colnames(s02_2023) = names_new
colnames(s03_2023) = names_new
colnames(s04_2023) = names_new
colnames(s05_2023) = names_new
colnames(s06_2023) = names_new
colnames(s07_2023) = names_new
colnames(s08_2023) = names_new
colnames(s09_2023) = names_new
colnames(s10_2023) = names_new
colnames(s11_2023) = names_new
colnames(s12_2023) = names_new

# create mappings for old/new discord tags. will add more as discovered.
# TODO: implement this!
tags_old = c("NotKappa#7548", "Ema712#7846", "FrankRizzo#7014", "FireStarter#4407")
tags_new = c("notkappa#0", "ema712#0", "frankrizzo#0", "stbeck#0")

# combine all data
all_data = bind_rows(s10_2021, s11_2021, s12_2021, s01_2022, s02_2022, s03_2022, s04_2022, s05_2022, s06_2022, s07_2022, s08_2022, s09_2022, s10_2022, s11_2022, s12_2022, s01_2023, s02_2023, s03_2023, s04_2023, s05_2023, s06_2023, s07_2023, s08_2023, s09_2023, s10_2023, s11_2023, s12_2023)

# write to processed_data
write_xlsx(all_data, "../data/processed_data/season_stats_dec23.xlsx")
