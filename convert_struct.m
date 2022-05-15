
% convert annotation data for every folder
folders = ["train"; "test"];

for folder_i = 1:length(folders)
	% process one folder at a time
	% load the Matlab v7.3 file containing the labels and bbox data
	srcfile = folders(folder_i) + "/digitStruct.mat"
	outfile = folders(folder_i) + "/digitStruct.csv"
	load(srcfile)

	% open the output CSV file
	fileID = fopen(outfile, "w");
	% Add a CSV header
	fprintf(fileID,"name;label;top;left;height;width\n");

	% For every image described in digitStruct
	for i = 1:length(digitStruct)
	    filename = digitStruct(i).name;
	    % For every bbox for this file (i.e. every digit)
	    for j = 1:length(digitStruct(i).bbox)
		% Now we're looking at one bbox + label, in the file called 'name'
		bbox = digitStruct(i).bbox(j);

		% write the details of this bbox to one line in the CSV output
		fprintf(fileID, "%s;%d;%d;%d;%d;%d\n", filename, bbox.label, bbox.top, bbox.left, bbox.height, bbox.width);
	    end
	end
	% done processing one folder
	fclose(fileID);
	fprintf("Processed %s!\n", srcfile);
end

fprintf("Done!\n")
