import json
import os

def get_set(data_path="data/legal/dev.json"):
    devset=[]
    with open(data_path,"r") as f:
        json_obj=json.load(f)
        for obj in json_obj:
            article=obj["article"].replace("\n","")
            summarization=obj["summarization"].replace("\n","")
            devset.append([article,summarization])
    return devset

dataset={}
dataset["train"]=get_set("data/legal/train.json")
dataset["valid"]=get_set("data/legal/dev.json")
dataset["test"]=get_set("data/legal/test.json")

with open("data/legal/legal_data.json","w") as f:
    json.dump(dataset,f,ensure_ascii=False)