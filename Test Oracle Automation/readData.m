function vectorOfNames = readData()

list=dir('**\Data');
tf = ismember({list.name}, {'.','..'});
list(tf) = [];

numbOfFiles = length(list)

vectorOfNames = [""];

for i = 1 : length(list)
    vectorOfNames = [vectorOfNames; list(i).name];
end

td = ismember(vectorOfNames, "");
vectorOfNames(td) = [];