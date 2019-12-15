import pandas as pd
# import pyreadstat as py

df = pd.read_csv("Analysis Data/converted.csv", sep='`')
# with pd.option_context('display.max_columns', None):  # more options can be specified also
#     print(df)

df = df[['income', 'q16']]

religions = sorted(set(df['q16']))

grouped = df.groupby(['income'])

temp_dict = {}
for name, group in grouped:
    list_of_religions = group.q16.tolist()
    religion = {}
    for rel in religions:
        number = 0
        for elem in list_of_religions:
            if elem == rel:
                number += 1
        religion[rel] = [number]
    temp_dict[name] = religion


temp_list = []
for elem in temp_dict:
    temp_list.append([elem, pd.DataFrame(temp_dict[elem])])
i = 0
for elem in temp_list:
    elem.to_csv(path_or_buf=str('../analysis_data/' + str([dataframe, i]) + '.csv')
    i += 1


