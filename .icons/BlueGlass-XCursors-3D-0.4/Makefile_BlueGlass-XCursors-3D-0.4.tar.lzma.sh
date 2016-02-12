#!/bin/sh
# Makefile_BlueGlass-XCursors-3D-0.4.tar.lzma.sh
# Make archive of current directory "$name".tar.lzma in parent directory
# to run type - sh Makefile_BlueGlass-XCursors-3D-0.4.tar.lzma.sh

# That creates the files.lzma archive 	: tar -cf files.lzma --lzma file* file* # -v  verbose option
# Which you can then unpack using	: tar -xf files.lzma 

# That creates the files.tar.gz archive	: tar -zcf files.tar.gz file* file*
# Which you can then unpack using	: tar -xzf files.tar.gz 

# That creates the files.zip archive	: zip -r files.zip file* file*
# Which you can then unpack using	: unzip  files.zip

PACKAGE="${PWD##*/}"	 				# Get current directory name (without full path)
echo;echo "Make archive of $PACKAGE directory and files as $PACKAGE.tar.lzma  in in parent directory "
read -p "Your current working directory is $(pwd). Are you sure (y / n) ?" ans

if [ "$ans" == "y" ]; then
  
  PACKAGE="${PWD##*/}"					# Get current directory name (without full path)
  #######################################
  #rm -i "../$PACKAGE.tar.gz"				# remove old archive
  #mv -i "../$PACKAGE.tar.gz" "../$PACKAGE.tar.gz.old"	# rename archive to old archive
  #tar -zcvf "../$PACKAGE.tar.gz" "../$PACKAGE"		# Create new archive of current directory from parent in panarent directory
  #######################################
  #mv -i "../$PACKAGE.skz" "../$PACKAGE.zip.old"	# rename archive to old archive
  #cd ..						# Go to parent directory
  #zip -r "$PACKAGE.zip" "$PACKAGE"			# Create new archive of current directory from parent in panarent directory
  #mv "$PACKAGE.zip" "$PACKAGE.skz"			# rename
  #######################################
  #rm -i "../$PACKAGE.tar.lzma"				# remove old archive
  mv -i "../$PACKAGE.tar.lzma" "../$PACKAGE.tar.lzma.old"	# rename archive to old archive
  cd ..							# Go to parent directory
  tar -cvf "$PACKAGE.tar.lzma" --lzma "$PACKAGE"	# Create new archive of current directory
  #######################################
  if [ $? = 0 ]; then 					# if success
	  echo;echo "Archive of $PACKAGE created in $PWD directory";echo
  else
	  exit 1
  fi
   
fi
