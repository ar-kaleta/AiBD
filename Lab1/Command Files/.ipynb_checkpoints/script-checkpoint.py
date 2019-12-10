import pandas as pd
# import pyreadstat as py

df = pd.read_csv("./Analysis Data/converted.csv", sep='`')
# with pd.option_context('display.max_columns', None):  # more options can be specified also
#     print(df)

df = df[['income', 'q16']]

religions = sorted(set(df['q16']))

grouped = df.groupby(['income'])


newTable = pd.DataFrame(columns=['Income', religions])


for name, group in grouped:
    temp_tab = [name]
    for rel in religions:
        a = pd.DataFrame(group['q16'].value_counts())
        print(a[rel])
        if rel in set(group.q16):
            temp_tab.append(group.q16.counts(rel))



    # newTable.append({Income: name, )


print(newTable)

with pd.option_context('display.max_columns', None):
    print(newTable)



