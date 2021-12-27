import json

fname = "synopsys_results.json"
dirs = ["Decoder", "Encoder", "Addition", "Multiplication"]

if __name__=="__main__":
	with open(fname, "w") as file:
		file_data = json.loads("[]")
		for d in dirs:
			with open(d+"/results/"+fname,'r+') as f_in:
				file_new_data = json.load(f_in)
				file_data += file_new_data
		json.dump(file_data, file, indent = 4)
