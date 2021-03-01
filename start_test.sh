#!/bin/sh

cd Tests/DesktopWeb

echo
echo "#######################################"
echo "# Running test first time             #"
echo "#######################################"
echo
COMMAND1="pabot --processes ${PARALLEL} --testlevelsplit --variable BROWSER:${BROWSER} --exclude HBO --exclude Pending -d ../../Results/${BUILD_ID} -o output.xml -l log.html -r report.html ../DesktopWeb/${TESTCASE}"
echo $COMMAND1
$COMMAND1

# we stop the script here if all the tests were OK
if [ $? -eq 0 ]; then
  echo
	echo "we don't run the tests again as everything was OK on first try"
	echo
	exit 0
fi
# otherwise we go for another round with the failing tests

# we launch the tests that failed
echo
echo "#######################################"
echo "# Running again the tests that failed #"
echo "#######################################"
echo
COMMAND2="pabot --processes ${PARALLEL} --testlevelsplit --variable BROWSER:${BROWSER} --rerunfailed ../../Results/${BUILD_ID}/output.xml -d ../../Results/${BUILD_ID} -o output2.xml -l log2.html -r report2.html ../DesktopWeb/${TESTCASE}"
echo $COMMAND2
$COMMAND2

# Merging output files
echo
echo "########################"
echo "# Merging output files #"
echo "########################"
echo
COMMAND3="rebot --merge -d ../../Results/${BUILD_ID} -o output.xml -l log.html -r report.html ../../Results/${BUILD_ID}/output.xml ../../Results/${BUILD_ID}/output2.xml"
echo $COMMAND3
$COMMAND3
# Robot Framework generates a new output.xml