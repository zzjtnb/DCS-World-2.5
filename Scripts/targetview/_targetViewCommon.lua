targets = {}

targetView =
{
	rowX = {},
	rowHeights = {},

	getX = function(row)
			return targetView.rowX[row]
		end,

	getY = function(row)
			local targetY = 0
			for i=1,row-1 do
				targetY = targetY + targetView.rowHeights[i]
			end
			return targetY
		end,

	addToPosition = function(row, width)
			targetView.rowX[row] = targetView.rowX[row] + width
			return targetView.rowX[row]
		end,

	addRow = function(height)
			targetView.rowX[#targetView.rowX+1] = 0
			targetView.rowHeights[#targetView.rowHeights+1] = height
		end,

	addTarget = function(targetName, row, aspect)
			aspect = aspect or 1
			local targetHeight = targetView.rowHeights[row]
			local targetWidth = targetHeight * aspect
			targets[#targets+1] = {
				name = targetName;
				rect = {x=targetView.getX(row); y=targetView.getY(row); width=targetWidth; height=targetHeight;};
				opacity = 1.0;
			}
			targetView.addToPosition(row, targetWidth)	
		end,

	addTargetsVertical = function(targetNames, row, aspect)
			aspect = aspect or 1
			local targetX = targetView.getX(row)
			local targetY = targetView.getY(row)
			local targetHeight = targetView.rowHeights[row] / #targetNames
			local targetHeight = 64
			local targetWidth = targetHeight * aspect
			for i = 1,#targetNames do
				targets[#targets+1] = {
					name = targetNames[i];
					rect = {x=targetX; y=targetY; width=targetWidth; height=targetHeight;};
					opacity = 1.0;
				}
				targetY = targetY + targetHeight
			end
			targetView.addToPosition(row, targetWidth)	
		end,

	addTarget3DSlices = function(targetName, row, aspect, firstSlice, slices, step)
			step = step or 1
			local targetHeight = targetView.rowHeights[row]
			local targetWidth = targetHeight * aspect
			local targetY = targetView.getY(row)
			for i=1,slices,step do
				targets[#targets+1] = {
					name = targetName;
					type = 'texture3D';
					index = firstSlice + i - 1;
					rect = {x=targetView.getX(row); y=targetY; width=targetWidth; height=targetHeight;};
					opacity = 1.0;
				}
				targetView.addToPosition(row, targetWidth)
			end
		end,

	addTarget3DSlicesVertical = function(targetName, xLeft, yBottom, width, height, slices, step)
			local targetY = yBottom
			for i=1,slices,step do
				targets[#targets+1] = {
					name = targetName;
					type = 'texture3D';
					index = i - 1;
					rect = {x=xLeft; y=targetY; width=width; height=height;};
					opacity = 1.0;
				}
				targetY = targetY + height
			end
		end
}